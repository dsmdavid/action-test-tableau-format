#!/bin/sh -l
echo \"$1\" > modified_files.txt
time=$(date)
echo ::set-ouput name=time::$time
echo "The modified files are:"
cat modified_files.txt

echo "logging ENV"
env
echo "##########"
echo " Script to run:"
cat ./src_cd/test_all.py

echo "Calling script: \n"
# /bin/bash
python ./src_cd/test_all.py
echo "#######"
echo "#######"
echo "#######"
echo "#######"
echo "commands to be ran:"
cat ./commands.sh
echo "#######"
echo "#######"
echo "#######"
echo "#######"
chmod +x commands.sh
./commands.sh
