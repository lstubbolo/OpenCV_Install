#!/bin/bash

echo ""
echo "Welcome to the OpenCV Installer by Louis!"
echo ""
echo "Part 5: Tesseract and other Python Installation"
echo ""

echo ""
echo "Installing Tesseract Stuff"
echo ""

sudo apt-get install tesseract-ocr
sudo apt-get install libtesseract-dev

pip install tesseract
pip install tesseract-ocr

pip install pytesseract

echo ""
echo "Installing Other Python Stuff"
echo ""

pip3 install firebase-admin
pip3 install scipy

echo ""
echo "There is definitely another one I forgot to include ... "
echo ""

