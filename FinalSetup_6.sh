#!/bin/bash

echo ""
echo "Welcome to the crappy OCRBox Installer by Louis!"
echo ""
echo "Part 6: Link OpenCV to virtual environment"
echo ""

echo ""
echo "activating virtual environment"
echo ""

source "/home/pi/.virtualenvs/cv/bin/activate"

echo ""
echo "changing directory"
echo ""

#directory of venv. library where we want the link to the cv2 package
cd /home/pi/.virtualenvs/cv/lib/python3.7/site-packages/

#this is where my cv2 file wound up after installation...
#I found it by searching: sudo find ~ -name "*cv2"

SRC="/home/pi/opencv/build/lib/python3/cv2.cpython-37m-arm-linux-gnueabihf.so"

echo ""
echo "linking..."
echo ""

ln -s $SRC cv2.so

cd ~ 

echo ""
echo "done!"
echo ""

echo ""
echo "Perform test by activating cv, opening a python3 shell, importing cv2 and checking the version"
echo "$ workon cv"
echo "$ python3"
echo ">>> import cv2"
echo ">>> cv2.__version__"

