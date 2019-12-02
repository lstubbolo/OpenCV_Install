#!/bin/bash

echo ""
echo "Welcome to the crappy OCRBox Installer by Louis!"
echo ""
echo "Part 5b: Build / Install openCV - messing with swap, in"
echo ""

echo ""
echo "Increase the swap size"
echo ""

#copy the swap file
cp /etc/dphys-swapfile /etc/dphys-swapfile_orig

#overwrite swap file to contain new value
echo "CONF_SWAPSIZE=2048" > /etc/dphys-swapfile



#Restart swap service

/etc/init.d/dphys-swapfile stop
/etc/init.d/dphys-swapfile start


#make sure we are in the build directory
cd /home/pi/opencv/build


#Compile and Install 

echo ""
echo "Compiling OpenCV 4 - WARNING this takes a _REALLY_ long time"
echo ""

make -j4

echo ""
echo "done compiling... hopefully without errors"
echo ""
echo "Installing OpenCV 4... this takes a long time too"
echo ""

make install
ldconfig


#Reset SWAP


echo ""
echo "reverting the swap size"
echo ""

#rename copied original file to original name, overwriting changes
mv /etc/dphys-swapfile_orig /etc/dphys-swapfile 
#Restart swap service

/etc/init.d/dphys-swapfile stop
/etc/init.d/dphys-swapfile start


