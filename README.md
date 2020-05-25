# Bi-Weighted Oriented Optical Flow (Bi-WOOF)

The first attempt is proposed to encode essential expressiveness of the apex frame.
It utilizes two frames (i.e., onset and apex frames) from the micro-expression video sequence to perform the emotion recognition.
Promising performance had been achieved when evaluated on CASME II and SMIC databases. 

Example of micro-expressions:

<img src="https://github.com/christy1206/biwoof/blob/pictures/006_006_1_2.gif" width="200" height="200"/> <img src="https://github.com/christy1206/biwoof/blob/pictures/s03_s03_po_11.gif" width="200" height="200"/> <img src="https://github.com/christy1206/biwoof/blob/pictures/sub11_EP15_04f.gif" width="200" height="200"/>

SAMM (006_006_1_2), SMIC (s03_s03_po_11), CASME II (sub11_EP15_04f)

Flowchart

<img src="https://github.com/christy1206/biwoof/blob/pictures/flow.JPG" width="600" height="250"/>

<img src="https://github.com/christy1206/biwoof/blob/pictures/biwoof.JPG" width="500" height="200"/>

The recognition algorithm contains three main steps: 
(1) The horizontal and vertical optical flow vectors between the apex and neutral frames are estimated; 
(2) The orientation, magnitude and optical strain of each pixel’s location are computed from the respective two optical flow components; 
(3) A Bi-WOOF histogram is formed based on the orientation, with magnitude locally weighted and optical strain globally weighted.


Recognition results

<img src="https://github.com/christy1206/biwoof/blob/pictures/result.JPG" width="800" height="400"/>


If you use this method in your research, please cite:

@article{liong2018less,\
  title={Less is more: Micro-expression recognition from video using apex frame},\
  author={Liong, Sze-Teng and See, John and Wong, KokSheik and Phan, Raphael C-W},\
  journal={Signal Processing: Image Communication},\
  volume={62},\
  pages={82--92},\
  year={2018},\
  publisher={Elsevier}\
}

If you have suggestions or questions regarding this method, please reach out to stliong@fcu.edu.tw

Thank you for your interest and support.
