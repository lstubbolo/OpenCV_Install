#!/bin/bash

echo ""
echo "Welcome to the OpenCV Installer by Louis!"
echo ""
echo "Part 2: Deleting Garbage"
echo ""


#Removing empty pointless directories

cd /home/pi/

echo ""
echo "Removing Empty Directories at /home/pi"
echo ""

rm -r /home/pi/Documents/
rm -r /home/pi/Downloads/
rm -r /home/pi/MagPi/
rm -r /home/pi/Music/
rm -r /home/pi/Pictures/
rm -r /home/pi/Public/
rm -r /home/pi/Templates/
rm -r /home/pi/Videos/

echo ""
echo "Done"
echo ""


#Unused Software

echo ""
echo "Removing Unused Software"
echo ""

echo ""
echo "Removing libreoffice"
echo ""

sudo apt purge libreoffice*
sudo apt clean
sudo apt autoremove

echo ""
echo "Removing wolfram-engine"
echo ""

sudo apt purge  wolfram-engine
sudo apt clean
sudo apt autoremove

echo ""
echo "Removing minecraft-pi :'("
echo ""

sudo apt purge  minecraft-pi
sudo apt clean
sudo apt autoremove

echo ""
echo "Removing sonic-pi :'("
echo ""

sudo apt purge  sonic-pi
sudo apt clean
sudo apt autoremove





echo ""
echo "Done!"
echo ""
