#!/bin/bash
#Working... Nope

echo ""
echo "Welcome to the crappy OCRBox Installer by Louis!"
echo ""
echo "Part 2b: Installing Files with wget"
echo ""

#Condensed Version of Instructions at: 
#https://www.pyimagesearch.com/2018/09/26/install-opencv-4-on-your-raspberry-pi/

#Steps have been taken to automate as much of this as possible

#added to avoid installing opencv to the FinalSetup Folder
cd /home/pi/

#installing OpenCV packages

echo ""
echo "Downloading OpenCV Packages, Unzipping, and Renaming"
echo ""


#download both, unzip both, rename both

echo ""
echo "attempting wget"
echo ""

wget https://github.com/opencv/opencv/archive/4.0.0.zip -O opencv.zip
wget https://github.com/opencv/opencv_contrib/archive/4.0.0.zip -O opencv_contrib.zip 

unzip opencv.zip
unzip opencv_contrib.zip

mv opencv-4.0.0 opencv
mv opencv_contrib-4.0.0 opencv_contrib



#install pip for python3 -

#probably unnecessary - python 3 > 3.4 allegedly has pip already 
echo ""
echo "Installing pip (probably unnecessarily)"
echo ""

#hangs forever but eventually works...> timing out?
#wget https://bootstrap.pypa.io/get-pip.py
#wget -T 120 https://bootstrap.pypa.io/get-pip.py
#python3 get-pip.py



