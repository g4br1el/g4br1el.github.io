---
layout: tutorial
title: "FSDP2 Mission"
tutorial: fsdp2
type: mission
permalink: /heap/fsdp2/notes/
---

# Teaching Notes

## User Preferences
- Wants full depth: internals, DTensor mechanics, not just API usage
- Experienced with DDP, NCCL, AMP — do not re-teach basics of these
- Prefers explicit code over clever tricks; type hints; modern idioms
- Running example should be CV-transformer based (ViT-Huge is good fit)
- V100-32GB cluster — must account for no bfloat16 hardware support (use fp16 for mixed precision)
- User works at Fraunhofer IIS, defect detection / remote sensing domains

## Working Notes
- V100 lacks native bf16 — all mixed precision examples must use fp16 + GradScaler
- FSDP2 = `torch.distributed._composable.fsdp.fully_shard` (the composable API, NOT the wrapper class)
- PyTorch 2.4+ required; 2.5+ recommended for stability
- ViT-Huge/14: 632M params, ~2.4 GB fp32 params, ~4.8 GB fp32 grads, ~9.6 GB Adam states = ~17 GB before activations