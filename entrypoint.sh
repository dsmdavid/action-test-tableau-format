#!/bin/sh -l
echo \"$1\" > modified_files.txt
time=$(date)
echo ::set-ouput name=time::$time
echo "The modified files are:"
cat modified_files.txt

echo "Calling script: python ./app/test_all.py \n"
# /bin/bash
python ./app/test_all.py
echo "####### "
echo "These commands will be run:"
cat ./commands.sh
echo "#######"
chmod +x ./commands.sh
./commands.sh
