#!/bin/bash

#WORKING!!!!

echo ""
echo "Welcome to the crappy OCRBox Installer by Louis!"
echo ""
echo "Part 3: Create Virtual Environment"
echo ""


#install virtual environment and remove... cached file?

echo ""
echo "Installing virtual environment stuff"
echo ""

pip install virtualenv virtualenvwrapper
rm -rf /home/pi/get-pip.py /home/pi/.cache/pip



#modify bash profile to enable virtual environment

echo ""
echo "modifying bash profile"
echo ""

echo -e "\n# virtualenv and virtualenvwrapper" >> /home/pi/.profile

#changed due to weird issues...
#echo "export WORKON_HOME=$HOME/.virtualenvs" >> /home/pi/.profile
echo "export WORKON_HOME=/home/pi/.virtualenvs" >> /home/pi/.profile

echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> /home/pi/.profile
echo "source /usr/local/bin/virtualenvwrapper.sh" >> /home/pi/.profile


source /home/pi/.profile



#make the virtual environment

echo ""
echo "Making virtual environment 'cv'"
echo ""

mkvirtualenv cv -p python3


