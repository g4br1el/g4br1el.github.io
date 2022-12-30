---
layout: post
title: Compression Supports Spatial Deep Learning
categories: [FPGA, Python, TensorFlow]
excerpt: Satellites provide huge amounts of images, the number of datasets increases and the domain became more and more data-driven. Image quantization and embedding into file formats do support convolutional neural networks to estimate the labels of images, by strengthening the features.
image: /images/pipeline.png
date: 2022-11-1
---

![My helpful screenshot]({{ site.baseurl }}/images/pipeline.png)
*Visualisation of the processing pipline of the experiment. First the input image \\( x \\) gets quantized to a pre-defined bit depth. In the second step the quantized image \\( x_q \\) is embedded to a given file format, such as JPEG, where the image gets compressed. The last step is to train the convolutions neural network based on the quantized and compressed image \\( x_{qc} \\) and estimate the class of the test samples.*

In the last decades, the domain of spatial computing became more and more data-driven, especially when using remote sensing-based images. Furthermore, the satellites provide huge amounts of images, so the number of available datasets is increasing. This leads to the need for large storage requirements and high computational costs when estimating the label scene classification problem using deep learning. This consumes and blocks important hardware recourses, energy, and time. In this paper, the use of aggressive compression algorithms will be discussed to cut the wasted transmission and resources for selected land cover classification problems. To compare the different compression methods and the classification performance, the satellite image patches are compressed by two methods. The first method is the image quantization of the data to reduce the bit depth. Second is the lossy and lossless compression of images with the use of image file formats, such as JPEG and TIFF. The performance of the classification is evaluated with the use of convolutional neural networks like VGG16. The experiments indicated that not all remote sensing image classification problems improve their performance when taking the full available information into account. Moreover, compression can set the focus on specific image features, leading to fewer storage needs and a reduction of computing time with comparably small costs in terms of quality and accuracy. All in all, quantization and embedding into file formats do support convolutional neural networks to estimate the labels of images, by strengthening the features.

**Published**: <br/>
1. G. Dax, S. Nagarajan, H. Li and M. Werner, "Compression Supports Spatial Deep Learning," in IEEE Journal of Selected Topics in Applied Earth Observations and Remote Sensing, vol. 16, pp. 702-713, 2023, doi: [10.1109/JSTARS.2022.3226563](https://doi.org/10.1109/JSTARS.2022.3226563).