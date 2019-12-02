#!/bin/bash

#Not sure if working... moving on though

echo ""
echo "Welcome to the crappy OCRBox Installer by Louis!"
echo ""
echo "Part 5a: Build / Install openCV - struggling with cmake"
echo ""


#build openCV with cmake

echo ""
echo "Attempting to build opencv w/ cmake..."
echo ""

cd /home/pi/opencv

mkdir build
cd build
rm /home/pi/opencv/CMakeCache.txt

#cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/home/pi/opencv/

#virtual env. stuff all retrieved while cv was activated

#executable path from : 'import sys' , 'print(sys.executable)'
PY_EXE="-DPYTHON_EXECUTABLE=/home/pi/.virtualenvs/cv/bin/python3"
PY_PKGS="-DPYTHON_PACKAGES_PATH=/home/pi/.virtualenvs/cv/lib/python3.7/site-packages/"


#???
#PYTHON_INCLUDE=/usr/include/python2.7/
#PYTHON_LIBRARY=/usr/lib/libpython2.7.a    //or .so for shared library
#PYTHON_NUMPY_INCLUDE_DIR=/usr/local/lib/python2.7/dist-packages/numpy/core/include



BLDTYP="-DCMAKE_BUILD_TYPE=Release"
PREFIX="-DCMAKE_INSTALL_PREFIX=/home/pi/opencv/cmake"
XTRAMODS="-DOPENCV_EXTRA_MODULES_PATH=/home/pi/opencv_contrib/modules"
NEON="-DENABLE_NEON=ON"
VFPV3="-DENABLE_VFPV3=ON"
TESTS="-DBUILD_TESTS=OFF"
NFREE="-DOPENCV_ENABLE_NONFREE=ON"
XMP_PY="-DINSTALL_PYTHON_EXAMPLES=OFF"
XMP_BLD="-DBUILD_EXAMPLES=OFF"

cmake .. $BLDTYP $PREFIX $XTRAMODS $NEON $VFPV3 $TESTS $NFREE $XMP_PY $XMP_BLD $PY_EXE $PY_PKGS

#still not working with showing /.virtualenvs as the inerpreter - not sure if it matters...

#output - check that this is what it says after building!
#Non-free algorithms needs to = YES
#Python 3: Interpreter:	-> /home/pi/.virtualenvs/cv/bin/python3
#Python 3: numpy:		-> /home/pi/.virtualenvs/cv/bin/python3.7/site-packages/numpy


