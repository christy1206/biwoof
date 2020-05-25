# Bi-Weighted Oriented Optical Flow (Bi-WOOF)

The first attempt to utilize onset and apex frames from the micro-expression video sequence to perform the emotion recognition on CASME II and SMIC databases. 

Example of micro-expressions:

<img src="https://drive.google.com/uc?export=view&id=1IOj1fh9hSHETGh6VzM7PljoPOj1Z3zWK" data-canonical-src="https://drive.google.com/uc?export=view&id=1IOj1fh9hSHETGh6VzM7PljoPOj1Z3zWK" width="200" height="200"  />  <img src="https://drive.google.com/uc?export=view&id=1PeW7wNzA-plqs7juD43XkSJDeXm9LRXv" data-canonical-src="https://drive.google.com/uc?export=view&id=1PeW7wNzA-plqs7juD43XkSJDeXm9LRXv" width="200" height="200"  />  <img src="https://drive.google.com/uc?export=view&id=1iXtn2dULrD5blNONdFdop8T84Ibqp4yN" data-canonical-src="https://drive.google.com/uc?export=view&id=1iXtn2dULrD5blNONdFdop8T84Ibqp4yN" width="200" height="200"  />  
SAMM (006_006_1_2), SMIC (s03_s03_po_11), CASME II (sub11_EP15_04f)

The recognition algorithm contains three main steps: 
(1) The horizontal and vertical optical flow vectors between the apex and neutral frames are estimated; 
(2) The orientation, magnitude and optical strain of each pixel’s location are computed from the respective two optical flow components; 
(3) A Bi-WOOF histogram is formed based on the orientation, with magnitude locally weighted and optical strain globally weighted.


The recognition results achieved are:

<img src="https://drive.google.com/file/d/1orkNPTmFOyblClPQyIWukJ8AbJJYasry/view?usp=sharing" data-canonical-src="https://drive.google.com/file/d/1orkNPTmFOyblClPQyIWukJ8AbJJYasry/view?usp=sharing" width="600" height="150"/>


<img src="https://drive.google.com/file/d/1orkNPTmFOyblClPQyIWukJ8AbJJYasry/view?usp=sharing" width="600" height="150"/>


Liong, S. T., See, J., Wong, K., & Phan, R. C. W. (2018). Less is more: Micro-expression recognition from video using apex frame. Signal Processing: Image Communication, 62, 82-92.

Bi-Weighted Oriented Optical Flow (Bi-WOOF) is proposed to encode essential expressiveness of the apex frame.
