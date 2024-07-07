#### 3D-BCS | IEEE TGRS 2022 | HSI Feature Extraction & Classification
---
## Feature Extraction via 3-D Block Characteristics Sharing for Hyperspectral Image Classification

***Bing Tu, Chengle Zhou, Xiaolong Liao, Qianming Li, and Yishu Peng***

*IEEE Transactions on Geoscience and Remote Sensing, vol. 59, no. 12, pp. 10503-10518, Dec. 2021*

---


## Abstract

Spectral–spatial information plays an essential role in hyperspectral image (HSI) classification compared to pure spectral information. However, the neighbor spectral–spatial information of a pixel tends to be mixed into other ground coverings due to various external factors such as the weather and sensor jitter, and mainstream HSI classification methods present low sensitivity for spatial information in this situation. This article proposes a novel feature extraction method via 3-D block characteristics sharing (3-D-BCS) for HSI classification that redefines spatial–spectral information of a local region based on a superpixel perspective to overcome the spectral–spatial weak assumptions in feature extraction that consists of the following steps. First, 3-D blocks are obtained by performing an oversegmentation method on the raw HSI. Then, instead of global operation, a 3-D block-based Gabor filter is applied to the principal components of an HSI to extract the textural features. Next, an average operation is conducted on each shape adaptive region to address the spatial weak assumption and Gaussian weight is introduced into each superpixel block to overcome the spectral weak assumption. Thus, 3-D characteristics sharing blocks can be constructed by reshaping the above three kinds of spectral–spatial feature. Finally, the majority-based support vector machine (SVM) classifier is utilized to determine the final class labels of HSI at the decision fusion level. Experiments performed on several real hyperspectral data sets with limited training samples show that the proposed 3-D-BCS method outperforms the other types of the classification method.


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
