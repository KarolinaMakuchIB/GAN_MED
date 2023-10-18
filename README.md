# GAN_MED
Comparision of two GAN models by using Inception Score and Frechet Inception Distance

Used models:
1. Simple GAN model from Monai tutorial (https://colab.research.google.com/github/Project-MONAI/tutorials/blob/main/modules/mednist_GAN_tutorial.ipynb#scrollTo=vrh_zoD20yHi)
2. Progressive Growing GANs from pytorch GAN ZOO (https://github.com/facebookresearch/pytorch_GAN_zoo)

Data used:
MedMNIST data (https://github.com/Project-MONAI/MONAI-extra-test-data/releases/download/0.8.1/MedNIST.tar.gz) - hand x-rays, breast MRI, abdomen CT  

## Image generating
Both models were trained with the same 3 datasets: hand x-rays, breast MRI, abdomen CT from MedMNIST. After training process new three sets of data were generated. Example images are shown below.

### Progressive Growing GANs' model generated images 

 ![progr](https://github.com/KarolinaMakuchIB/GAN_MED/assets/64591108/b8909485-2141-4ecf-9875-d08cddde8041) 
<p align="center">
  Fig. 1. Hand x-ray images generated using Progressive Growing GANs model
</p>  


![progb](https://github.com/KarolinaMakuchIB/GAN_MED/assets/64591108/6c3e4382-7238-449b-894a-620964330317)  
<p align="center">
  Fig. 2. Breast MRI images generated using Progressive Growing GANs model
</p>  


![proga](https://github.com/KarolinaMakuchIB/GAN_MED/assets/64591108/0fa07573-11d3-4547-856a-4c87e12fad6e)  
<p align="center">
  Fig. 3. Abdomen CT images generated using Progressive Growing GANs model
</p> 

### Simple GAN model from Monai tutorial's model generated images  
![rtut](https://github.com/KarolinaMakuchIB/GAN_MED/assets/64591108/517996fd-8345-4194-9dac-6ee159c6c893)  
<p align="center">
  Fig. 4. Hand x-ray images generated using Simple GAN model from Monai tutorial
</p>  


![btut](https://github.com/KarolinaMakuchIB/GAN_MED/assets/64591108/cdb92e77-c3f2-4cbd-9c81-0d49e0aed517)  
<p align="center">
  Fig. 5. Hand x-ray images generated using Simple GAN model from Monai tutorial
</p>  


![atut](https://github.com/KarolinaMakuchIB/GAN_MED/assets/64591108/ebaa485f-6563-414d-a458-e5a9fe9dd48c)  
<p align="center">
  Fig. 6. Hand x-ray images generated using Simple GAN model from Monai tutorial
</p>  

