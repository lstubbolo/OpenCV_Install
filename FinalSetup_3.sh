#!/bin/bash

echo ""
echo "Welcome to the OpenCV Installer by Louis!"
echo ""
echo "Part 3: Update & Upgrade, Installing OpenCV Dependencies w/ apt-get, OpenCV Source Files"
echo ""

#Condensed Version of Instructions at: 
#https://www.pyimagesearch.com/2018/09/26/install-opencv-4-on-your-raspberry-pi/

#Steps have been taken to automate as much of this as possible

echo ""
echo "Update / Upgrade - This May Take A While..."
echo ""

#update and upgrade package lists
apt-get update -y && sudo apt-get upgrade -y && sudo rpi-update -y

echo ""
echo "Done Upgrading!"
echo ""


#Install Section - Change To Root

echo ""
echo "Changing to Root Directory To Start Installations" 
echo ""

cd ~


#Install python3 and pip

echo ""
echo "Installing Python 3 and Pip" 
echo ""

apt-get install python3-dev -y
sudo apt-get install python3-pip -y



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



#Open CV Source

echo ""
echo "Downloading Open CV Source Code"
echo ""

wget -O opencv.zip https://github.com/opencv/opencv/archive/4.1.2.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.1.2.zip


echo ""
echo "Unzipping..."
echo ""

unzip opencv.zip
unzip opencv_contrib.zip

echo ""
echo "Renaming"
echo ""

mv /home/pi/opencv-4.1.2/ /home/pi/opencv/
mv /home/pi/opencv_contrib-4.1.2/ /home/pi/opencv_contrib/


echo ""
echo "Done Source Code Download"
echo ""


echo ""
echo "Installing numpy"
echo ""

#Installing numpy 
pip3 install numpy

echo ""
echo "done"
echo ""

