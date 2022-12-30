---
layout: post
title: Compression Supports Spatial Deep Learning
categories: [Python, TensorFlow]
excerpt: In the last decades, the domain of spatial computing became more and more data-driven, especially when using remote sensing-based images. Furthermore, the satellites provide huge amounts of images, so the number of available datasets is increasing. Image quantization and embedding into file formats do support convolutional neural networks to estimate the labels of images, by strengthening the features.
image: /images/pipeline.PNG
date: 2021-8-1
---

![My helpful screenshot]({{ site.baseurl }}/images/fpga2.jpg)

In the last decades, the domain of spatial computing became more and more data-driven, especially when using remote sensing-based images. Furthermore, the satellites provide huge amounts of images, so the number of available datasets is increasing. This leads to the need for large storage requirements and high computational costs when estimating the label scene classification problem using deep learning. This consumes and blocks important hardware recourses, energy, and time. In this paper, the use of aggressive compression algorithms will be discussed to cut the wasted transmission and resources for selected land cover classification problems. To compare the different compression methods and the classification performance, the satellite image patches are compressed by two methods. The first method is the image quantization of the data to reduce the bit depth. Second is the lossy and lossless compression of images with the use of image file formats, such as JPEG and TIFF. The performance of the classification is evaluated with the use of convolutional neural networks like VGG16. The experiments indicated that not all remote sensing image classification problems improve their performance when taking the full available information into account. Moreover, compression can set the focus on specific image features, leading to fewer storage needs and a reduction of computing time with comparably small costs in terms of quality and accuracy. All in all, quantization and embedding into file formats do support convolutional neural networks to estimate the labels of images, by strengthening the features.

**Published**: <br/>
This project will be published as paper and is currently in review. 