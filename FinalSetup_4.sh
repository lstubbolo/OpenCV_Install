#!/bin/bash

#working!


echo ""
echo "Welcome to the crappy OCRBox Installer by Louis!"
echo ""
echo "Part 4: Installing Packages to Virtual Environment from requirements file"
echo ""

#source on requirements files:
#https://pip.pypa.io/en/stable/reference/pip_install/#usage


#place where the packages go once installed 
#/home/pi/.virtualenvs/cv/lib/python3.7/site-packages

#directory for requirements file
#all packages needed for the project need to be placed here
REQUIREMENTS="/home/pi/FinalSetup/requirements_ocrbox.txt"


#activating the venv. in this way only enables it while this shell script is running
#no noticeable change will happen in the command line
#NOTE***leave venv. from terminal with: deactivate

echo "activating virtual environment"

source "/home/pi/.virtualenvs/cv/bin/activate"


echo ""
echo "installing packages from requirements file"

#this has some issues... 
#additional packages can be installed manually
#use workon cv, then install using pip install etc.etc.

pip install -r $REQUIREMENTS

