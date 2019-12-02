#!/bin/bash

#automatic way to move a file from this folder to the pi

ROOT=$(pwd)			#current working directory
IP="10.0.0.142"			#IP address of the pi
DEST=pi@$IP:"/home/pi/FinalSetup/"

scp $ROOT/$1 $DEST