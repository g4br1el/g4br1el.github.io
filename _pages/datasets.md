---
layout: page
title: Remote Sensing Datasets
permalink: /datasets/
---

This page lists public datasets in remote sensing.

| Name           | Resolution       | Channels | #Images | #Classes   | Task\* | Ref.                                                                                                                                                                                     |
|----------------|------------------|----------|---------|------------|--------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| EuroSAT        | 256x256          | Sen-2    | 27,000  | 10         | C      | [Source](https://github.com/phelber/eurosat), [P1](https://doi.org/10.1109/JSTARS.2019.2918242), [P2](https://doi.org/10.1109/IGARSS.2018.8519248)                                       |
| AID            | 600x600          | RGB      | 10,00   | 30         | C      | [Source](https://captain-whu.github.io/AID/), [P1](https://doi.org/10.1109/TGRS.2017.2685945)                                                                                            |
| BigEarthNet    | multi-resolution | Sen-2    | 590,326 | 19** /43** | C      | [Source](http://bigearth.net/), [P1](https://doi.org/10.1109/IGARSS.2019.8900532), [P2](https://doi.org/10.1109/MGRS.2021.3089174)                                                       |
| UC-Merced      | 256x256          | RGB      | 2,100   | 21         | C      | [Source](http://weegee.vision.ucmerced.edu/datasets/landuse.html), [P1](https://doi.org/10.1145/1869790.1869829)                                                                         |
| SAT-4          | 28x28            |          | 500,000 | 4          | C      | [Source](https://csc.lsu.edu/~saikat/deepsat/), [P1](https://doi.org/10.1145/2820783.2820816)                                                                                            |
| SAT-6          | 28x28            |          | 405,000 | 6          | C      | [Source](https://csc.lsu.edu/~saikat/deepsat/), [P1](https://doi.org/10.1145/2820783.2820816)                                                                                            |
| Resisc45       | 256x256          | RGB      | 31,500  | 45         | C      | [P1](https://doi.org/10.1109/JPROC.2017.2675998)                                                                                                                                         |
| RSI-CB256      | 256x256          | RGB      | 24,000  | 35         | C      | [Source](https://github.com/lehaifeng/RSI-CB), [P1](https://doi.org/10.3390/s20061594)                                                                                                   |
| RSI-CB128      | 128x128          | RGB      | 36,000  | 45         | C      | [Source](https://github.com/lehaifeng/RSI-CB), [P1](https://doi.org/10.3390/s20061594)                                                                                                   |
| Data Fusion`18 |                  |          |         | 21         |        | [Source](https://ieee-dataport.org/open-access/2018-ieee-grss-data-fusion-challenge-%E2%80%93-fusion-multispectral-lidar-and-hyperspectral-data)                                         |
| ONERA          | Sen-2            | Sen-2    | 24      | -          | CD     | [Source](https://rcdaudt.github.io/oscd/), [P1](https://doi.org/10.1109/IGARSS.2018.8518015)                                                                                             |
| PatternNet     | 256x256          |          | 30,400  | 38         | C      | [P1](https://ui.adsabs.harvard.edu/link_gateway/2018JPRS..145..197Z/doi:10.1016/j.isprsjprs.2018.01.004)                                                                                 |
| WHU-RS19       | 600x600          | RGB      | 1,005   | 19         | C      | [Source](https://captain-whu.github.io/BED4RS/), [P1](https://www.isprs.org/proceedings/xxxviii/part7/a/pdf/298_XXXVIII-part7A.pdf), [P2](https://ieeexplore.ieee.org/document/5545358)  |

\* C - Classification, S - Segmentation, CD - Change Detection <br/>
\** Multi-label 


[comment]: <> (https://github.com/CAPTAIN-WHU/PRCV2021_RS, https://captain-whu.github.io/GID/, https://captain-whu.github.io/BED4RS/, https://captain-whu.github.io/DiRS/, https://github.com/CAPTAIN-WHU)
[comment]: <> (https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8518882)

[comment]: <> (## 2018 IEEE GRSS Data Fusion Challenge)
[comment]: <> (This datasets was creaded for the 2018 IEEE GRSS data fusion challenge and composes of aerial image tiles showing varying land-use classes.)
[comment]: <> (*Key Features:*)
[comment]: <> (* Number of images: TBD)
[comment]: <> (* Number of classes: 21)
[comment]: <> (* Label type: single label)
[comment]: <> (* geo-referenced: TBD)
[comment]: <> (* Image resolution: TBD)
[comment]: <> ([Source](https://ieee-dataport.org/open-access/2018-ieee-grss-data-fusion-challenge-%E2%80%93-fusion-multispectral-lidar-and-hyperspectral-data))



[comment]: <> (## Resisc45)
[comment]: <> (Website is currently down. - 19.7.2022)




# Computer Vision Datasets
This page lists public datasets in remote sensing.

| Name            | Resolution | Channels  | No. Images | Classes | Task\* | Ref.                                                                                                                                                                          |
|-----------------|------------|-----------|------------|---------|--------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CAT             | Multiple   | RGB       | >9,000     |         | S      | [Source](https://www.kaggle.com/crawford/cat-dataset), [P1]()                                                                                                                 | 
| Cifar10         | 32x32      | RGB       | 60,000     | 10      | C      | [Source](https://www.cs.toronto.edu/~kriz/cifar.html), [P1](https://www.cs.toronto.edu/~kriz/learning-features-2009-TR.pdf)                                                   | 
| Cifar100        | 32x32      | RGB       | 60,000     | 100     | C      | [Source](https://www.cs.toronto.edu/~kriz/cifar.html), [P1](https://www.cs.toronto.edu/~kriz/learning-features-2009-TR.pdf)                                                   | 
| CityScapes      |            |           |            |         |        | [Source](), [P1]()                                                                                                                                                            | 
| Coco (2014)     | Multiple   | RGB       | 245,496    |         | S      | [Source](https://cocodataset.org/#home), [P1](https://link.springer.com/chapter/10.1007/978-3-319-10602-1_48)                                                                 | 
| Fashion Mnist   | 28x28      | Grayscale | 70,000     | 10      | C      | [Source](https://github.com/zalandoresearch/fashion-mnist), [P1](https://arxiv.org/abs/1708.07747)                                                                            | 
| ImageNet (2012) | Multiple   | RGB       | 1,261,406  | 1000    | C      | [Source](https://www.image-net.org/), [P1](https://doi.org/10.1007/s11263-015-0816-y)                                                                                         | 
| LabelMe-12-50k  | 256x256    | RGB       | 50,000     | 12      | C      | [Source](https://www.ais.uni-bonn.de/download/datasets.html), [P1](https://doi.org/10.1109/ICICISYS.2009.5357786)                                                             | 
| LFWFace         | 250x250    | RGB       | 13,233     |         | S      | [Source](http://vis-www.cs.umass.edu/lfw/), [P1](https://doi.org/10.1007/978-3-319-25958-1), [P2](http://vis-www.cs.umass.edu/lfw/lfw.pdf)                                    | 
| MNIST           | 28x28      | Grayscale | 70,000     | 10      | C      |                                                                                                                                                                               | 
| MpiiHumanPose   |            | RGB       | 24,920     |         | S      | [Source](http://human-pose.mpi-inf.mpg.de/), [P1](https://doi.org/10.1109/CVPR.2014.471)                                                                                      | 
| OpenImagesV6    |            | RGB       |            |         | S      | [Source](https://storage.googleapis.com/openimages/web/factsfigures_v6.html), [P1](https://doi.org/10.1007/s11263-020-01316-z), [P2](https://doi.org/10.1109/CVPR.2019.01197) | 
| StanfordCars    |            | RGB       | 16,185     | 196     | C      | [Source](http://ai.stanford.edu/~jkrause/cars/car_dataset.html), [P1](http://ai.stanford.edu/~jkrause/papers/3drr13.pdf)                                                      | 
| StanfordDog     | 200x200    | RGB       | 20,580     | 120     | C      | [Source](http://vision.stanford.edu/aditya86/ImageNetDogs/), [P1](http://people.csail.mit.edu/khosla/papers/fgvc2011.pdf)                                                     | 

\* C - Classification, S - Segmentation <br/>
