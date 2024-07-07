#### 3D-BCS | IEEE TGRS 2022 | HSI Feature Extraction & Classification
---
## Feature Extraction via 3-D Block Characteristics Sharing for Hyperspectral Image Classification

***Bing Tu, Chengle Zhou, Xiaolong Liao, Qianming Li, and Yishu Peng***

*IEEE Transactions on Geoscience and Remote Sensing, vol. 59, no. 12, pp. 10503-10518, Dec. 2021*

---

![framework](https://github.com/chengle-zhou/MY-IMAGE/blob/5013b34ffbe56331ded9688d8c9c5122c5ff5ffb/3D-BCS/framework.png)

Fig. 1. Overview of the proposed 3D-BCS method for feature extraction prior to HSI classification.

![subfig1](https://github.com/chengle-zhou/MY-IMAGE/blob/5013b34ffbe56331ded9688d8c9c5122c5ff5ffb/3D-BCS/subfig1.png)

Fig. 2. Schematic of the superpixel-based Gabor filtering for the proposed method.


## Abstract

Spectral–spatial information plays an essential role in hyperspectral image (HSI) classification compared to pure spectral information. However, the neighbor spectral–spatial information of a pixel tends to be mixed into other ground coverings due to various external factors such as the weather and sensor jitter, and mainstream HSI classification methods present low sensitivity for spatial information in this situation. This article proposes a novel feature extraction method via 3-D block characteristics sharing (3-D-BCS) for HSI classification that redefines spatial–spectral information of a local region based on a superpixel perspective to overcome the spectral–spatial weak assumptions in feature extraction that consists of the following steps. First, 3-D blocks are obtained by performing an oversegmentation method on the raw HSI. Then, instead of global operation, a 3-D block-based Gabor filter is applied to the principal components of an HSI to extract the textural features. Next, an average operation is conducted on each shape adaptive region to address the spatial weak assumption and Gaussian weight is introduced into each superpixel block to overcome the spectral weak assumption. Thus, 3-D characteristics sharing blocks can be constructed by reshaping the above three kinds of spectral–spatial feature. Finally, the majority-based support vector machine (SVM) classifier is utilized to determine the final class labels of HSI at the decision fusion level. Experiments performed on several real hyperspectral data sets with limited training samples show that the proposed 3-D-BCS method outperforms the other types of the classification method.

## Results
Analysis of the influence of the parameters $Q$ and $S_N$ on the classification performance of the 3D-BCS for different datasets. (a) Indian Pines dataset (1.5\% of labeled data). (b) Salinas Valley dataset (0.2\% of labeled data). (c) University of Pavia dataset (0.42\% of labeled data). (d) University of Houston dataset (1\% of labeled data).
![result1](https://github.com/chengle-zhou/MY-IMAGE/blob/5013b34ffbe56331ded9688d8c9c5122c5ff5ffb/3D-BCS/result1.png)

Classification accuracies (in \%) of the SVM, DMLSR, SaCRT, JSRC, EPF, SC-MK, WMRF, GFDN, and 3D-BCS methods on the Indian Pines dataset with 1.5\% training samples, the highest accuracies are presented in bold.
![table1](https://github.com/chengle-zhou/MY-IMAGE/blob/5013b34ffbe56331ded9688d8c9c5122c5ff5ffb/3D-BCS/table1.png)

Classification results (\%) of various methods on the Indian Pines dataset when training samples account for 1.5\% of the reference data. (a) Reference data, (b) SVM (OA = 61.73\%), (c) DMLSR (OA = 63.69\%), (d) SaCRT (OA = 65.53\%), (e) JSRC (OA = 72.90\%), (f) EPF (OA = 71.49\%), (g) SC-MK (OA = 81.80\%), (h) WMRF (OA = 82.50\%), (i) GFDN (OA = 82.82\%), (j) 3D-BCS (OA = 88.51\%).
![result2](https://github.com/chengle-zhou/MY-IMAGE/blob/5013b34ffbe56331ded9688d8c9c5122c5ff5ffb/3D-BCS/result2.png)

Please cite our paper:

**Plain Text:**

Bing Tu, Chengle Zhou, Xiaolong Liao, Qianming Li, and Yishu Peng, "[Feature Extraction via 3-D Block Characteristics Sharing for Hyperspectral Image Classification](https://ieeexplore.ieee.org/document/9296974)," IEEE Transactions on Geoscience and Remote Sensing, vol. 59, no. 12, pp. 10503-10518, Dec. 2021, doi: 10.1109/TGRS.2020.3042274.

**BibTex:**

```latex
@ARTICLE{3DBCS2021,
  author={Tu, Bing and Zhou, Chengle and Liao, Xiaolong and Li, Qianming and Peng, Yishu},
  journal={IEEE Transactions on Geoscience and Remote Sensing}, 
  title={Feature Extraction via 3-D Block Characteristics Sharing for Hyperspectral Image Classification}, 
  year={2021},
  volume={59},
  number={12},
  pages={10503-10518},
  keywords={Feature extraction;Hyperspectral imaging;Support vector machines;Image segmentation;Dimensionality reduction;Shape;Principal component analysis;Feature extraction;hyperspectral image (HSI) classification;spectral–spatial weak assumptions;superpixel segmentation},
  doi={10.1109/TGRS.2020.3042274}}
```
