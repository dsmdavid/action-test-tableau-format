#!/bin/sh -l
echo \"$1\" > modified_files.txt
time=$(date)
echo ::set-ouput name=time::$time
echo "The modified files are:"
cat modified_files.txt
echo "Calling script: \n"
# /bin/bash
python ./src/test_all.py
chmod +x commands.sh
./commands.sh
