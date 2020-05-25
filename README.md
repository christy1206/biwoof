# Bi-Weighted Oriented Optical Flow (Bi-WOOF)

The first attempt is proposed to encode essential expressiveness of the apex frame.
It utilizes two frames (i.e., onset and apex frames) from the micro-expression video sequence to perform the emotion recognition.
Promising performance had been achieved when evaluated on CASME II and SMIC databases. 

## Example of micro-expressions:

<img src="https://drive.google.com/uc?export=view&id=1IOj1fh9hSHETGh6VzM7PljoPOj1Z3zWK" data-canonical-src="https://drive.google.com/uc?export=view&id=1IOj1fh9hSHETGh6VzM7PljoPOj1Z3zWK" width="200" height="200"  />  <img src="https://drive.google.com/uc?export=view&id=1PeW7wNzA-plqs7juD43XkSJDeXm9LRXv" data-canonical-src="https://drive.google.com/uc?export=view&id=1PeW7wNzA-plqs7juD43XkSJDeXm9LRXv" width="200" height="200"  />  <img src="https://drive.google.com/uc?export=view&id=1iXtn2dULrD5blNONdFdop8T84Ibqp4yN" data-canonical-src="https://drive.google.com/uc?export=view&id=1iXtn2dULrD5blNONdFdop8T84Ibqp4yN" width="200" height="200"  />  
SAMM (006_006_1_2), SMIC (s03_s03_po_11), CASME II (sub11_EP15_04f)

## Flowchart

The recognition algorithm contains three main steps: 
(1) The horizontal and vertical optical flow vectors between the apex and neutral frames are estimated; 
(2) The orientation, magnitude and optical strain of each pixel’s location are computed from the respective two optical flow components; 
(3) A Bi-WOOF histogram is formed based on the orientation, with magnitude locally weighted and optical strain globally weighted.


## Recognition results

<img src="https://github.com/christy1206/biwoof/blob/pictures/result.JPG" width="800" height="400"/>

## Citation
If you use theis method in your research, please cite:

@article{liong2018less,
  title={Less is more: Micro-expression recognition from video using apex frame},
  author={Liong, Sze-Teng and See, John and Wong, KokSheik and Phan, Raphael C-W},
  journal={Signal Processing: Image Communication},
  volume={62},
  pages={82--92},
  year={2018},
  publisher={Elsevier}
}

# Suggestions
If you have suggestions or questions regarding this method, please reach out to stliong@fcu.edu.tw
Thank you for your interest and support.
