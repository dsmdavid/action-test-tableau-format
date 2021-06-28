#!/bin/sh -l
echo \"$1\" > modified_files.txt
time=$(date)
echo ::set-ouput name=time::$time
echo "The modified files are:"
cat modified_files.txt
cd /
echo "listing files"
ls -al
echo "finding test_all.py"
find . -name test_all.py
echo "Calling script: python ./app/src/test_all.py \n"
# /bin/bash
python ./app/src/test_all.py
echo "####### "
echo "These commands will be run:"
cat ./commands.sh
echo "#######"
chmod +x ./commands.sh
./commands.sh
echo "££££££££££££££££££"
echo "/github/workspace/outputs.txt"
cat /github/workspace/outputs.txt
find . -name output.txt
