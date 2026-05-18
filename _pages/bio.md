---
layout: page
title: About & CV
permalink: /bio/
---

Deep Learning Research Engineer with a path from precision manufacturing
through software engineering to ML systems research. I bring hardware intuition,
systems thinking, and research rigor to everything I build.

<a href="/files/Resume_Gabriel_Dax.pdf" class="btn btn-primary">Download Full CV (PDF)</a>

---

## Professional Experience

#### Machine Learning Research Engineer @ [Fraunhofer IIS](https://www.iis.fraunhofer.de/) (Jul 2023 – Present)

Building production ML systems for industrial computer vision on GPU clusters.

- Custom CUDA kernels for image processing, tiled inference, and IoU computation
- Data-parallel training infrastructure: 32 GPUs / 8 nodes, NCCL, mixed-precision, Apptainer
- 5× runtime improvement on C++/OpenMP image analysis via parallelization redesign
- AutoML defect detection for semiconductor manufacturing (production-deployed)
- SAM-based segmentation for industrial waste detection
- NVIDIA DALI integration eliminating I/O bottlenecks at scale
- Zero-shot land cover classification via CLIP on remote sensing imagery

#### Doctoral Research Scientist @ [Technical University of Munich](https://www.bgd.ed.tum.de/en/) (Oct. 2020 –  Jun. 2023)

Compression-aware optimization of deep learning pipelines for edge and satellite systems.

- 19.9% training time reduction via parametric compression framework (3 CNNs, 2 datasets, <1% accuracy loss)
- 25.2% inference preprocessing speedup on FPGA through input compression
- INT8 quantization to FPGA via VitisAI — benchmarked 11 architectures
- Wildfire detection for satellite onboard processing (TensorFlow)
- Compression-based trajectory similarity (Python/C++): 8.9% accuracy improvement over baselines

#### Research Scientist @ [Bundeswehr University Munich](https://www.unibw.de/home-en) (Dec. 2019 - Sep. 2020)

- Published Python/C++ package (pybind11, Boost, >1,000 LOC C++ core) for raster data processing and entropy-based similarity
- Linux build pipelines for C++ based Python packages with Make, Boost, pybind11

#### Student Research Assistant @ [German Aerospace Center](https://www.dlr.de/en) (Feb 2019 – Jul. 2019)

- Change detection framework for satellite imagery: 70,000 km² processed
- 36% runtime reduction via memoization and overhead elimination
- Satellite data processing pipelines

#### Software Engineer (intern) @ [Fraunhofer IIS](https://www.iis.fraunhofer.de/) (Feb 2017 – Jul. 2017)

- Built performance monitoring modules for a distributed cinema rendering system, identifying hardware and software bottlenecks across nodes.

#### Earlier Career
**Optiplan** · Technical Staff · 2012 – 2014  
**Arvai Plastics** · Toolmaker (Apprenticeship + Journeyman) · 2007 – 2012

*Started in precision manufacturing — CNC machining, injection mold tooling.
This background gives me an intuitive understanding of hardware constraints,
tolerances, and production systems that directly informs my approach to
deploying ML at the edge.*

---

## Education

#### Doctor of Natural Sciences in Aerospace and Geodesy @ [Technical University of Munich]() (Oct. 2020 - May 2024)
- Thesis: Aspects of Algorithmic Information Theory in Spatial Machine Learning
- Focus: Optimization of data-driven pipelines using compression to increase performance and scalability.

#### Diplom-Ingenieur @ [Salzburg University of Applied Sciences]() (Sep. 2017 - Oct 2019)
- Program: Information Technology & Systems Management
- Thesis: Supervised and Unsupervised Data Mining Methods in Remote Sensing

#### Bachelor of Science @ [Salzburg University of Applied Sciences]() (Sep. 2014 - Jul 2017)
- Program: Information Technology & Systems Management
- Thesis: Performance Data Collection in a Distributed System for Rendering Cinema Movies

---

## Technical Stack

| Domain | Technologies |
|--------|-------------|
| **GPU Computing** | CUDA, C++20, pybind11, OpenMP, Boost |
| **Distributed Training** | PyTorch DDP, NCCL, AMP, Slurm (up to 32 GPUs / 8 nodes) |
| **Inference & Deployment** | TensorRT, VitisAI, INT8/FP16 quantization |
| **Data Pipelines** | NVIDIA DALI, custom preprocessing kernels |
| **Models** | CLIP, SAM, defect detection, remote sensing classification |
| **Infrastructure** | Docker, Apptainer, Linux, HPC cluster management |

---

## Certifications

| Course | Provider | Year |
|--------|----------|------|
| Fundamentals of Accelerated Computing with CUDA C/C++ | **NVIDIA** | 2025 |
| Node-Level Performance Engineering (NUMA, SIMD) | LRZ | 2025 |
| GPU Programming (OpenACC, Nsight Profiling) | LRZ | 2025 |
| Parallel Programming of HPC Systems (OpenMP, MPI) | LRZ | 2023 |

---

## Publications

18 peer-reviewed publications including ACM Computing Frontiers, IEEE MLSys, IGARSS, IEEE JSTARS.

→ [Full publication list](/publications) · [Google Scholar](https://scholar.google.com/citations?user=UfJMwAQAAAAJ)

## Teaching & Mentoring

**Fraunhofer IIS — Internal Workshops** (2023 - Now)
- HPC cluster infrastructure & job scheduling
- Multi-node distributed training (DDP/NCCL)
- Kubernetes/Kubeflow for ML workloads

**Technical University of Munich** (2020 – 2023)  
Teaching assistant for C++ programming and spatial data science —
5 semesters, covering OOP, templates, STL, memory management,
multi-threading, MPI. (~5 hrs/week)

**Thesis Supervision**
- Cross-Modal Pseudo-Labeling and Label Expansion for Domain-Adaptive Semantic Segmentation (M.Sc., 2026)
- *Forest Fire Detection from Satellite Imagery* (M.Sc., 2023)
- *Analysis of the Potential of Quantum Machine Learning for Remote Sensing* (M.Sc., 2022)

