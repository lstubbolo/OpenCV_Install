#!/bin/bash

echo ""
echo "Welcome to the OpenCV Installer by Louis!"
echo ""
echo "Part 4: Building From Source!"
echo ""


#change directory to location of opencv, create build directory 

echo ""
echo "Changing Directory to " pwd
echo ""

cd /home/pi/opencv/

echo ""
echo "Creating Build Directory and Navigating There"
echo ""

mkdir build
cd build


#executing cmake

echo ""
echo "Executing cmake"
echo ""

cmake -D CMAKE_BUILD_TYPE=RELEASE \
 -D CMAKE_INSTALL_PREFIX=/usr/local \
 -D OPENCV_EXTRA_MODULES_PATH=/home/pi/opencv_contrib/modules \
 -D ENABLE_NEON=ON \
 -D ENABLE_VFPV3=ON \
 -D BUILD_TESTS=OFF \
 -D OPENCV_ENABLE_NONFREE=ON \
 -D INSTALL_PYTHON_EXAMPLES=OFF \
 -D BUILD_EXAMPLES=OFF ..


echo ""
echo "DONE"
echo ""

#this supposedly enables all cores for compilation

echo ""
echo "Enabling Cores For Compilation"
echo ""

make -j4

echo ""
echo "DONE"
echo ""


echo ""
echo "Before Pressing ANYTHING Make sure there are no errors Listed Above"
echo ""



#Nifty code I found online for the ANY Key
read -n1 -rsp $'Press the any key to continue or Ctrl+C to exit...\n'

#Start Compiling....


echo ""
echo "Beginning Compilation...."
echo ""

sudo make install && sudo ldconfig

echo ""
echo "DONE"
echo ""

echo ""
echo "Reboot When Ready..."
echo ""

read -n1 -rsp $'Press the any key to continue or Ctrl+C to exit...\n'

reboot now
