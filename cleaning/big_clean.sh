#!/bin/bash

tarDir=$1
scratchDir=$2

tar -xzf $tarDir -C $scratchDir

for file in $scratchDir
do
	if [grep -q "DELETE ME!" "$file"]
	then
		rm $file
		echo "found right file!"
	fi
done

cd $scratchDir

here=$(pwd)
string=$here

if [ $string == *"little"*] 
then 
	tar -zcf head $scratchDir -C cleaned_little_dir.tgz ....."needs a correct directory"  
