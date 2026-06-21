---
layout: tutorial
title: "Mission: FSDP2 Mastery"
tutorial: fsdp2
type: mission
permalink: /heap/fsdp2/mission/
---


## Why
Train large vision transformers (ViT-H class, 600M+ params) that exceed single-GPU memory under DDP on a V100-32GB NVLink/InfiniBand cluster. Build deep, internals-level understanding of FSDP2 (DTensor, DeviceMesh, communication patterns) to future-proof for larger models and strengthen candidacy for senior distributed-training roles.

## Success looks like
- Can train a ViT-Huge (632M params) with batch_size > 1 across multiple V100 nodes using FSDP2
- Can explain every communication primitive (all-gather, reduce-scatter) and when each fires during forward/backward
- Can configure per-module sharding strategies with clear rationale
- Can compose FSDP2 with mixed precision, activation checkpointing, and torch.compile
- Can implement HSDP (shard intra-node, replicate inter-node) and justify when it wins over full sharding
- Can save/load sharded checkpoints and convert to/from full state dicts
- Can profile and debug FSDP2 training runs (identify comm bottlenecks, memory peaks)
- Can migrate an existing DDP pipeline to FSDP2 with minimal code churn

## Constraints
- Hardware: V100-32GB SXM2, NVLink intra-node, InfiniBand inter-node, up to 8 nodes / 32 GPUs
- No H100/A100 features (no FP8, no NVSwitch beyond NVLink topology)
- Access to PyTorch nightly acceptable (FSDP2 is torch >= 2.4 but best on nightly)
- Web-only Claude access (no local IDE integration)
- Time: learning alongside active project work

## Out of scope
- Megatron-LM style tensor/pipeline parallelism (for now)
- DeepSpeed ZeRO (different ecosystem)
- NLP/LLM-specific concerns (focus is vision transformers)
- Inference optimization (TensorRT etc. — separate skill)