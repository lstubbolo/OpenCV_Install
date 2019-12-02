#!/bin/bash

#Working!

echo ""
echo "Welcome to the crappy OCRBox Installer by Louis!"
echo ""
echo "Part 1: expand filesystem and reboot"
echo ""

#Expand Pi Filesystem and reboot
raspi-config --expand-rootfs
reboot now
