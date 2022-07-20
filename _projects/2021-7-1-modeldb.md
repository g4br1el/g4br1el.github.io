---
layout: post
title:  Deep Learning Model Library
categories: [FPGA, Python, TensorFlow]
excerpt: Deep learning can be deployed to a wide range of hardware products, such as CPUs or GPUs using libraries like TensorFlow. In order to deploy convolutional neural network to FPGAs, it is important that the framework of the fpga does support all used layers.
image: /images/cnn.svg
date: 2021-7-1
---

![My helpful screenshot]({{ site.baseurl }}/images/vgg16.png)

*This figure visualizes the architecture of the convolutional neural network VGG16.*

Deep learning can be deployed to a wide range of hardware products, such as CPUs or GPUs using libraries like TensorFlow.
In order to deploy convolutional neural network like VGG16 to custom hardware, such as FPGAs (e.g. Xilinx ZCU102), it is
important that the framework of the fpga does support all used layers. Currently, the use out of the box models from TensorFlow on
Xilinx FPGAs using Vitis AI is not directly supported.

In this project, we are reimplementing all frequently used convolutional neural network using TensorFlow. The created models
are able to be deployed on an FPGA with the framework Vitis AI.

The following networks are currently implemented:

| Model List | Weights       | ImageNet Accuracy [%] |
| --- |---------------| --- |
| VGG16	| ImageNet	| 71.3 
| VGG19	| ImageNet	| 71.3 
| MobileNet	| ImageNet	| 70.6 
| ResNet34	|               |
| ResNet50	| ImageNet	| 74.9
| ResNet101	| ImageNet	| 76.4
| ResNet152	| ImageNet	| 76.6
| DenseNet121	| ImageNet	| 75.0
| DenseNet161	||
| DenseNet169	| ImageNet	| 76.2
| DenseNet201	| ImageNet	| 77.3
| InceptionV3 | ImageNet    | 77.9




The following steps are currently under development:
* Implementation of the missing networks (which are listed in the TensorFlow API)
* U-Net support of the models (pix2pix)

**Published**: Currently, in progress. 
