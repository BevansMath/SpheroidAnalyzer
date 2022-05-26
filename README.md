# SpheroidAnalyzer
MATLAB script that cleans and pre-processes .tif images of spheroids, then measures spheroid diameter and any cell migration in pixels.

# Motivation
I built this as part of a client's ongoing research project. The goal was to create a fast and accurate method to measure multiple images of cell migration from the spheroid, as well as the diameter of migration from end to end. 

# Goal
The goal of SpheroidAnalyzer is to take the raw images from an image directory and run each image folder through the cleansing and processing stages in a sequential fashion. In that processing stage, a few things will happen:
- Images will be displayed in their original form
- The image being processed will be binarized and displayed 
- The sobel algorithm will be implemented, cleansing the image of unconnected blobs
- The final masked image will be displayed, giving you the choice of measuring spheroid diameter

# Installation
Firstly, I developed this on a window machine, so please make sure to adapt your git code to your machines specifications. Secondly, make sure your image files are in folders under the MATLAB path. I found it much easier to analyze image files this way than grabbing the image files from an unrelated directory. Next, make sure you have git installed on your computer. Go to your git terminal and type the following:
```
git clone https:/github.com/BevansMath/SpheroidAnalyzer C:\Users\USERNAME\Path to MATLAB\MATLAB PATH\WORKSPACE OR SCRIPT FOLDER
```
If the destination is not empty, write the following in the git terminal:
```
#Create and initialize empty repo
git init

#Add remote named origin for the repo
git remote add origin <repository>

#Do a git-fetch
git fetch

#Checkout the master branch
git checkout master
```
# Stability and Contribution
This code runs on the latest version of MATLAB. I will be updating the code to make it as robust and automated as possible. I appreciate any assistance on this project. Please contribute by forking the repo as described by the above code, and by opening pull requests. Please ensure your code passes the tests you write, if they are applicable. All pull requests should be submitted to the main branch
