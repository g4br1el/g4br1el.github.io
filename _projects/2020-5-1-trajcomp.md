---
layout: post
title:  Trajectory Similarity using Compression
categories: [C/C++,Python]
excerpt: In this project, we created a novel approach for trajectory similarity based on Kolmogorov complexity approximated by a lossy compression of the original trajectory data using selected features compressed into a concise memory representation by means of a Bloom filter.
image: /images/Traj-Prague50min.png
date: 2020-5-1
---

![My helpful screenshot]({{ site.baseurl }}/images/Traj-Prague50min.png)


*Visualization of a sample dataset, which has been used in this project. The figure shows labeled trajectories 
of the dataset Prague Ego-Shooter.*

In this project, we created a novel approach for trajectory similarity based on Kolmogorov complexity approximated by a 
lossy compression of the original trajectory data using selected features compressed into a concise memory 
representation by means of a Bloom filter. Given the importance of trajectory data, a linear-time distance measure 
with all theoretical guarantees implied by a proper metric is very powerful if it is capturing enough detail for 
important trajectory mining tasks. This stack of feature extraction combined with feature embedding in a Bloom filter 
constitutes a lossy compression for trajectory data which can easily be extended with other discrete data like travel 
mode. In addition, this compression has the needed properties for efficient calculation of a normalized compression 
distance (NCD) which approximates Kolmogorov complexity. We evaluate this novel trajectory distance measurement using 
very simple features and k-nearest-neighbor classification on selected realworld datasets with remarkable 
classification accuracies. Furthermore, we argue that the distance measure is very suited to geospatial big data 
applications as each trajectory is first transformed into few bits using the lossy compression stack. At time of 
comparison, the original trajectory geometry is not needed, instead, the sketches suffice. Despite very compressible 
parameters (equal or less than 1024 bit per trajectory) and very simple features, we already reach classification 
accuracies for real-world trajectory classification tasks of more than 80% across various datasets.

![My helpful screenshot]({{ site.baseurl }}/images/Bloom.png)


*Schematic  description  of  the  Bloom  filter  and  how  to  embed  data,like trajectory features.*

**Published**: G. Dax and M. Werner, "Trajectory Similarity using Compression," 2021 22nd IEEE International Conference on Mobile Data Management (MDM), 2021, pp. 169-174, doi: [10.1109/MDM52706.2021.00035](https://doi.org/10.1109/MDM52706.2021.00035).
