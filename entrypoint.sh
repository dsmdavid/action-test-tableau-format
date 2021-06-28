#!/bin/sh -l
echo \"$1\" > modified_files.txt
time=$(date)
echo "Script ran at: $time"
echo "The modified files are:"
cat modified_files.txt
cd /
echo "::group::Debug info"
echo "Set ACTIONS_STEP_DEBUG variable to True to see these logs"
echo "::debug::Listing files"
echo "::debug::$(ls -al)"
echo "::debug::finding test_all.py"
echo "::debug::$(find . -name test_all.py)"
echo "::endgroup::"

echo "::group:: Preparing script for validation"
echo "Calling script: python ./app/src/test_all.py \n"
python ./app/src/test_all.py
echo "####### "
echo "::debug::These commands will be run:"
echo "::debug::$(cat ./commands.sh)"
echo "#######"
echo "::endgroup::"

echo "::group::Format Validation"
chmod +x ./commands.sh
./commands.sh
echo "::endgroup::"
echo "The output can be found at $(find . -name output.txt)"
