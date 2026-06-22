---
layout: tutorial
title: "NVIDIA Workshop Prep Glossary"
tutorial: ai-day
type: glossary
permalink: /heap/ai-day/glossary/
---


Terminology used across all lessons for the NVIDIA pre-AI-Day workshop (June 2026). Covers LLM lifecycle, inference optimization, and Physical AI.

## Terms

### LLM Training & Alignment

**Pre-training**:
Self-supervised training of an LLM on massive text corpora using next-token prediction, producing a base model with broad language capability but no instruction-following behavior.
_Avoid_: Training (too ambiguous), foundation model training

**SFT (Supervised Fine-Tuning)**:
Post-training stage where a pre-trained base model is fine-tuned on curated (instruction, response) pairs to produce an instruction-following model.
_Avoid_: Fine-tuning (too generic), RLHF step 1

**RLHF (Reinforcement Learning from Human Feedback)**:
Post-training alignment method: train a reward model on human preference data, then optimize the policy (LLM) against it using PPO or similar RL algorithms.
_Avoid_: Human feedback training

**DPO (Direct Preference Optimization)**:
Alignment method that skips explicit reward model training by directly optimizing the LLM on preference pairs using a classification-style loss derived from the Bradley-Terry model.
_Avoid_: Simplified RLHF

**Reward Model (RM)**:
A model trained on human preference rankings to score LLM outputs, used as the optimization signal in RLHF.
_Avoid_: Preference model, scoring model

**Tensor Parallelism (TP)**:
Splitting individual weight matrices across multiple GPUs so each GPU computes a shard of every layer. Requires all-reduce communication per layer.
_Avoid_: Model parallelism (ambiguous — could mean pipeline parallelism)

**Pipeline Parallelism (PP)**:
Splitting model layers across GPUs sequentially; each GPU holds a subset of layers. Requires micro-batching to hide pipeline bubbles.
_Avoid_: Layer parallelism, stage parallelism

**Sequence Parallelism (SP)**:
Distributing the sequence dimension across GPUs for operations like LayerNorm and Dropout that don't require the full hidden dimension. Reduces activation memory.
_Avoid_: Context parallelism (related but different)

**Expert Parallelism (EP)**:
In Mixture-of-Experts models, distributing different experts across GPUs. Each token is routed to a subset of experts.
_Avoid_: MoE parallelism

### Inference Optimization

**KV-Cache**:
Stored key and value tensors from previously generated tokens in autoregressive decoding, avoiding redundant recomputation. Memory grows linearly with sequence length.
_Avoid_: Attention cache, context cache

**Paged Attention**:
Memory management technique (from vLLM) that stores KV-cache in non-contiguous pages, reducing fragmentation and enabling dynamic memory allocation during serving.
_Avoid_: Virtual memory attention

**In-Flight Batching (Continuous Batching)**:
Serving technique where new requests are inserted into a running batch as soon as any existing request completes, maximizing GPU utilization.
_Avoid_: Dynamic batching (ambiguous — could mean padding-based)

**Speculative Decoding**:
Inference acceleration where a small draft model generates candidate tokens that the large model verifies in parallel, trading compute for latency reduction.
_Avoid_: Draft-verify decoding

**FP8 (E4M3 / E5M2)**:
8-bit floating point formats on Hopper+. E4M3 (4-bit exponent, 3-bit mantissa) for forward pass; E5M2 (5-bit exponent, 2-bit mantissa) for gradients. ~2× throughput vs FP16 with minimal accuracy loss.
_Avoid_: INT8 (different — integer vs float)

**FP4**:
4-bit floating point on Blackwell. Doubles compute density vs FP8. Requires careful calibration; currently inference-only.
_Avoid_: INT4 (integer quantization, different trade-offs)

**AWQ (Activation-Aware Weight Quantization)**:
Weight-only quantization that identifies salient weights by observing activation magnitudes and protects them, enabling aggressive (INT4/FP4) quantization with minimal accuracy loss.
_Avoid_: GPTQ (related but different algorithm)

**SmoothQuant**:
Quantization technique that migrates quantization difficulty from activations to weights via mathematically equivalent per-channel scaling, enabling INT8 weight+activation quantization.
_Avoid_: Weight smoothing

### Physical AI & World Models

**World Foundation Model (WFM)**:
A model trained to predict future states of a physical environment given past observations and actions, enabling simulation, planning, and policy learning for embodied agents.
_Avoid_: World simulator, environment model

**Cosmos**:
NVIDIA's world foundation model platform (2025). Includes pre-trained video generation models conditioned on actions/text, tokenizers, and guardrails for Physical AI development.
_Avoid_: Omniverse (different layer — Omniverse is the simulation platform)

**GR00T**:
NVIDIA's foundation model for humanoid robots. Ingests multimodal input (language, video) and outputs robot actions. Trained in simulation (Isaac Sim), deployed on physical robots.
_Avoid_: Isaac (Isaac is the simulation platform, GR00T is the model)

**Isaac Sim**:
NVIDIA's GPU-accelerated robotics simulation built on Omniverse/USD. Provides synthetic data generation, domain randomization, and sim-to-real transfer for robot learning.
_Avoid_: Omniverse (Isaac Sim runs on Omniverse but is a specific application)

**Omniverse**:
NVIDIA's platform for building 3D simulation environments using Universal Scene Description (USD). The infrastructure layer under Isaac Sim, Cosmos data generation, and digital twins.
_Avoid_: Metaverse (marketing term)

**Sim-to-Real Transfer**:
Training policies in simulation and deploying them on physical hardware. Requires domain randomization and/or fine-tuning to bridge the reality gap.
_Avoid_: Transfer learning (too generic)

**Domain Randomization**:
Training technique where simulation parameters (textures, lighting, physics, camera) are randomly varied each episode, making the learned policy robust to real-world variation.
_Avoid_: Data augmentation (related concept but applies to perception; domain randomization applies to the full environment)

**Imitation Learning**:
Supervised learning from expert demonstrations: given (observation, action) pairs from a demonstrator, learn a policy that reproduces the behavior.
_Avoid_: Behavioral cloning (a specific, naive form of imitation learning), reinforcement learning (different — no demonstrations, just reward)

**DiT (Diffusion Transformer)**:
Transformer-based architecture for diffusion models, replacing the U-Net used in earlier diffusion models (Stable Diffusion 1-2). Used in Sora, Cosmos, SD3.
_Avoid_: ViT (different purpose — classification, not generation)

**USD (Universal Scene Description)**:
Open-source 3D scene format (Pixar) used as the standard representation in Omniverse. Describes geometry, materials, physics, animations in a composable hierarchy.
_Avoid_: URDF (robot-specific format), glTF (web 3D format)

**Jetson Thor**:
NVIDIA's next-generation SoC for humanoid robots, featuring Blackwell GPU architecture (~800 TOPS INT8) in a ~100W power envelope.
_Avoid_: Jetson Orin (previous generation), AGX (broader product family)