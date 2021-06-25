#!/bin/sh -l
echo \"$1\" > modified_files.txt
time=$(date)
echo ::set-ouput name=time::$time
echo "The modified files are:"
cat modified_files.txt

echo "logging ENV"
env
echo "##########"
echo 'pwd'
pwd
echo 'ls'
ls -al
echo '£££££'
cd /
ls -al
echo "finding file test_all.py"
find . -name test_all.py
echo "end finding"

echo " Script to run:"
cat ./app/test_all.py

echo "Calling script: \n"
# /bin/bash
python ./app/test_all.py
echo "####### "
echo "#######"
echo "#######"
echo "#######"
echo "finding commands.sh"
find . -name commands.sh

echo "commands to be ran:"
cat ./commands.sh
echo "#######"
echo "#######"
echo "#######"
echo "#######"
chmod +x ./commands.sh
./commands.sh
