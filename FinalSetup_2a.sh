#!/bin/bash

#Working...Maybe

echo ""
echo "Welcome to the crappy OCRBox Installer by Louis!"
echo ""
echo "Part 2a: Update & Upgrade, Installing OpenCV Dependencies w/ apt-get"
echo ""

#Condensed Version of Instructions at: 
#https://www.pyimagesearch.com/2018/09/26/install-opencv-4-on-your-raspberry-pi/

#Steps have been taken to automate as much of this as possible

echo ""
echo "update / upgrade (this can take FOREVER) if it has never been run"
echo ""

#update and upgrade package lists
apt-get update && sudo apt-get upgrade -y


echo ""
echo "Changing to Root Directory" 
echo ""


#change to root directory if not already
cd ~



#Open CV Dependencies

echo ""
echo "Installing Open CV Dependencies..."
echo ""

#install cmake and unzip
apt-get install build-essential cmake unzip pkg-config -y

#image and video libraries
apt-get install libjpeg-dev libpng-dev libtiff-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev -y

#something about a GUI backend?? 
apt-get install libgtk-3-dev libcanberra-gtk* -y

#numerical optimizations for OpenCV
apt-get install libatlas-base-dev gfortran -y

#python 3 *Likely redundant
apt-get install python3-dev -y