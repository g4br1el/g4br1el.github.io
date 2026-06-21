---
layout: tutorial
title: "FSDP2 Resources"
tutorial: fsdp2
type: mission
permalink: /heap/fsdp2/resources/
---


## Knowledge

- [PyTorch FSDP2 Tutorial — Official Docs (torch.distributed)](https://pytorch.org/docs/stable/distributed.html)
  Canonical API reference. Use for: `fully_shard`, `MixedPrecisionPolicy`, `CPUOffloadPolicy` signatures.

- [PyTorch Blog: "Fully Sharded Data Parallel: faster AI training with fewer GPUs"](https://pytorch.org/blog/fully-sharded-data-parallel-faster-ai-training-with-fewer-resources/)
  High-level FSDP1 motivation. Use for: understanding the ZeRO lineage and why sharding works.

- [PyTorch RFC / Design Doc: Composable FSDP (FSDP2)](https://github.com/pytorch/pytorch/blob/main/torch/distributed/_composable/fsdp/README.md)
  Internal design doc for FSDP2. Use for: DTensor integration, why FlatParamHandle was removed, composability goals.

- [ZeRO: Memory Optimizations Toward Training Trillion Parameter Models — Rajbhandari et al. 2020](https://arxiv.org/abs/1910.02054)
  The foundational paper. Use for: understanding Stage 1/2/3 sharding and their memory/communication trade-offs.

- [PyTorch DTensor RFC and docs](https://github.com/pytorch/pytorch/blob/main/torch/distributed/_tensor/README.md)
  DTensor is the substrate of FSDP2. Use for: placement specs (Shard, Replicate), DeviceMesh semantics.

- [PyTorch Distributed Checkpoint (DCP)](https://pytorch.org/docs/stable/distributed.checkpoint.html)
  Use for: saving/loading sharded model state without gathering to rank 0.

- [Source code: torch/distributed/_composable/fsdp/](https://github.com/pytorch/pytorch/tree/main/torch/distributed/_composable/fsdp)
  The actual implementation. Use for: understanding FSDPState, pre-forward/post-forward hooks, communication scheduling.

- [torchtitan — PyTorch reference training loop](https://github.com/pytorch/torchtitan)
  Official reference for large-scale training with FSDP2 + compile + async TP. Use for: production patterns.

## Wisdom (Communities)

- [PyTorch Distributed GitHub Discussions](https://github.com/pytorch/pytorch/discussions/categories/distributed)
  Core devs (Andrew Gu, Wanchao Liang) respond here. Best for: debugging edge cases.

- [PyTorch Dev Forums — Distributed category](https://dev-discuss.pytorch.org/c/distributed/7)
  Design discussions and RFC feedback. Best for: understanding why decisions were made.

## Gaps

- No single comprehensive tutorial covers FSDP2 end-to-end with V100-specific considerations
- Limited benchmarking data for FSDP2 on V100 NVLink clusters (most public benchmarks are A100/H100)
- Interaction between FSDP2 and custom CUDA kernels (e.g., user's pybind11 extensions) — unclear documentation