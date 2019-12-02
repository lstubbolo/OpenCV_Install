#!/bin/bash
#This is a helper script that converts a .txt file to a .sh file
#then makes the .sh file executable

#argument is the name of the file you want WITHOUT file extension

echo "converting '"$1"' from txt to sh"

ROOT=$(pwd)			#current working directory


#for testing - creates a test file - can overwrite code accidentally!

#echo "#!/bin/bash" > $ROOT/$1.txt
#CMD=('echo "Hello World!"')
#echo $CMD >> $ROOT/$1.txt


mv $ROOT/$1.txt $ROOT/$1.sh	#renaming from .txt to .sh


echo "making '"$1.sh"' executable"

chmod +x $ROOT/$1.sh

echo "done"

