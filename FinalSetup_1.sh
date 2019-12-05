#!/bin/bash


echo ""
echo "Welcome to the OpenCV Installer by Louis!"
echo ""
echo "Part 1: Expand Filesystem And Reboot"
echo ""

#Expand Pi Filesystem and reboot

echo ""
echo "Expanding FileSystem...."
echo ""

raspi-config --expand-rootfs

echo ""
echo "Done!"
echo ""


echo ""
echo "Rebooting When Ready..."
echo ""

read -n1 -rsp $'Press the any key to continue or Ctrl+C to exit...\n'

reboot now
