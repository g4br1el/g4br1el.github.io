---
layout: tutorial
title: "FSDP2 Mission"
tutorial: fsdp2
type: mission
permalink: /heap/fsdp2/glossary/
---

# FSDP2 Glossary

Terminology for distributed training with PyTorch's Fully Sharded Data Parallel (v2).

## Core Concepts

**Model-proportional memory**:
GPU memory consumed by parameters, gradients, and optimizer states — everything that scales linearly with parameter count P, independent of batch size or sequence length.
_Avoid_: model memory, weight memory

**Sharding**:
Partitioning a tensor across multiple devices such that each device holds only a 1/N slice. Distinguished from replication, where each device holds a full copy.
_Avoid_: splitting, distributing

**FSDP unit**:
The granularity at which sharding is applied — defined by a single `fully_shard()` call on a module. Each unit is independently all-gathered and freed. Typically one transformer block.
_Avoid_: shard group, wrap unit, FSDP layer

**DTensor**:
A PyTorch tensor type that encodes distribution semantics (placement + mesh). Reports its global shape regardless of local shard size. The substrate of FSDP2 — every sharded parameter is a DTensor.
_Avoid_: distributed tensor (ambiguous), sharded tensor (FSDP1 terminology)

**DeviceMesh**:
A logical N-dimensional grid of devices that DTensors are distributed over. Encodes the topology: 1-D for flat sharding, 2-D for HSDP (one dim for sharding, one for replication).
_Avoid_: process group (lower-level abstraction), device grid

## Placement Types

**Shard(dim)**:
DTensor placement indicating the tensor is partitioned along dimension `dim` across the mesh. Each rank holds 1/N of that dimension. Default FSDP2 rest state.
_Avoid_: split, partitioned

**Replicate()**:
DTensor placement indicating every rank holds the full tensor. Achieved via all-gather from Shard state. Active during compute in FSDP2.
_Avoid_: broadcast, full copy

**Partial(reduce_op)**:
DTensor placement indicating each rank holds a partial result (e.g., partial gradient sum from its micro-batch) that must be reduced. Precedes reduce-scatter in backward.
_Avoid_: unreduced, partial sum

## Collective Operations

**All-gather**:
Collective operation where each rank contributes its shard and all ranks receive the full concatenated tensor. In FSDP2, transitions a parameter from Shard → Replicate.
_Avoid_: gather (which sends only to one root)

**Reduce-scatter**:
Collective operation that reduces (sums) a tensor across ranks and scatters the result so each rank holds only its 1/N shard. In FSDP2, transitions a gradient from Partial → Shard.
_Avoid_: scatter-reduce, partial reduce

**All-reduce**:
Collective equivalent to reduce-scatter followed by all-gather. Each rank ends with the full reduced tensor. Used in HSDP's replicate dimension and by DDP.
_Avoid_: sync gradients

## Infrastructure

**Rank**:
A single process in the distributed group, typically mapped 1:1 to a GPU.
_Avoid_: worker, node (a node contains multiple ranks)

**FlatParamHandle** (deprecated):
FSDP1's internal mechanism that flattened all parameters in an FSDP unit into a single contiguous 1-D buffer for efficient communication. Eliminated in FSDP2 in favor of per-parameter DTensors.
_Avoid_: Using this in new code — it's FSDP1 only.

**FSDPState**:
The internal state object created by `fully_shard()` that manages communication scheduling (prefetching), hook registration, and placement transitions for an FSDP unit.
_Avoid_: FSDP handle, shard state

**HSDP (Hybrid Sharded Data Parallel)**:
A 2-D strategy: shard within a fast communication domain (e.g., NVLink intra-node) and replicate across a slower domain (e.g., InfiniBand inter-node). Implemented via a 2-D DeviceMesh.
_Avoid_: hybrid parallelism (too generic)