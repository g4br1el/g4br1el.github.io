---
layout: tutorial
title: "NVIDIA Workshop Prep Resources"
tutorial: ai-day
type: resources
permalink: /heap/ai-day/resources/
---


## Knowledge

### Talk 1: LLM Lifecycle (Pre-training to Alignment)
- [Blog: "RLHF: Reinforcement Learning from Human Feedback" — Chip Huyen (2023)](https://huyenchip.com/2023/05/02/rlhf.html)
  Best single-article overview of the RLHF pipeline. Use for: understanding post-training alignment conceptually.
- [Paper: "Training language models to follow instructions with human feedback" — Ouyang et al. (2022)](https://arxiv.org/abs/2203.02155)
  The InstructGPT paper. Foundational for understanding SFT → RM → PPO pipeline.
- [Paper: "Direct Preference Optimization" — Rafailov et al. (2023)](https://arxiv.org/abs/2305.18290)
  DPO as simpler alternative to PPO. NVIDIA likely uses this. Use for: understanding modern alignment without RL.
- [NVIDIA NeMo Framework Documentation](https://docs.nvidia.com/nemo-framework/user-guide/latest/)
  NVIDIA's end-to-end LLM training framework. The speaker (Fiameni) likely references this.
- [Blog: "Megatron-LM: Training Multi-Billion Parameter Language Models" — NVIDIA (2024)](https://developer.nvidia.com/megatron-lm)
  NVIDIA's parallelism strategies (tensor, pipeline, sequence, expert). Use for: understanding NVIDIA's pre-training stack.
- [Paper: "Scaling LLM Training to Thousands of GPUs with NeMo" — NVIDIA (2024)](https://arxiv.org/abs/2309.01041)
  NeMo + Megatron integration. Directly relevant to Gabriel's DDP/FSDP experience.

### Talk 2: Inference Optimization & Compression
- [NVIDIA TensorRT-LLM Documentation](https://nvidia.github.io/TensorRT-LLM/)
  Primary reference for LLM-specific inference optimization. Use for: understanding KV-cache, in-flight batching, paged attention.
- [Blog: "NVIDIA TensorRT-LLM Supercharges Large Language Model Inference" (2024)](https://developer.nvidia.com/blog/nvidia-tensorrt-llm-supercharges-large-language-model-inference-on-nvidia-h100-gpus/)
  High-level overview of TensorRT-LLM vs classic TensorRT. Use for: understanding the architectural differences.
- [Paper: "Efficient Memory Management for Large Language Model Serving with PagedAttention" — Kwon et al. (2023)](https://arxiv.org/abs/2309.06180)
  vLLM paper. PagedAttention is now in TensorRT-LLM. Use for: understanding memory-bound LLM inference.
- [NVIDIA ModelOpt Documentation](https://nvidia.github.io/TensorRT-Model-Optimizer/)
  PTQ and QAT for LLMs. Gabriel already knows ModelOpt — focus on LLM-specific quantization (FP8, AWQ, SmoothQuant).
- [Paper: "FP8 Formats for Deep Learning" — Micikevicius et al. (NVIDIA, 2022)](https://arxiv.org/abs/2209.05433)
  Hopper FP8 format specification. Use for: understanding E4M3 vs E5M2 trade-offs.
- [Blog: "NVIDIA Blackwell Architecture" (2024)](https://developer.nvidia.com/blog/nvidia-blackwell-architecture-technical-brief/)
  FP4 support, transformer engine updates. Use for: what's coming next in reduced precision.

### Talk 3: Physical AI & World Foundation Models
- [NVIDIA Cosmos Documentation](https://developer.nvidia.com/cosmos)
  NVIDIA's world foundation model platform. Use for: understanding what "world model" means in NVIDIA's stack.
- [Paper: "Cosmos World Foundation Model Platform for Physical AI" — NVIDIA (2025)](https://arxiv.org/abs/2501.03575)
  The Cosmos technical report. Primary source for Talk 3.
- [NVIDIA GR00T Blueprint](https://developer.nvidia.com/project-groot)
  Humanoid robot foundation model. Use for: understanding embodied AI in NVIDIA's roadmap.
- [NVIDIA Isaac Sim Documentation](https://developer.nvidia.com/isaac-sim)
  Simulation platform for robotics. Use for: understanding the sim-to-real pipeline.
- [NVIDIA Omniverse Documentation](https://developer.nvidia.com/omniverse)
  USD-based 3D simulation platform underlying Isaac Sim and Cosmos. Use for: understanding the infrastructure layer.
- [Blog: "What Is Physical AI?" — NVIDIA (2025)](https://blogs.nvidia.com/blog/what-is-physical-ai/)
  Jensen Huang's framing of Physical AI as the next wave. Use for: understanding NVIDIA's strategic narrative.

## Wisdom (Communities)

- [NVIDIA Developer Forums — TensorRT-LLM](https://forums.developer.nvidia.com/c/ai-deep-learning/tensorrt-llm/)
  Active community for TensorRT-LLM issues. Use for: understanding real deployment pain points.
- [r/LocalLLaMA](https://reddit.com/r/LocalLLaMA)
  Practical LLM inference optimization community. High signal on quantization trade-offs.

## Gaps
- No public benchmarks comparing TensorRT-LLM FP8 vs FP4 on Blackwell for long-context (>128k) workloads
- Cosmos is very new (2025) — limited independent analysis exists
- Speaker-specific publications for Habert and Mohan not yet identified