#!/bin/bash

tarDir=$1
scratchDir=$2

tar -xzf $tarDir -C $scratchDir

for file in $scratchDir
do
	if [grep -q "DELETE ME!" "$file"]
	then
		rm $file
	fi
done

cd $scratchDir

here=$(pwd)
string=$here

ParentDir="$(dirname "$(pwd)")"

if [ $string == *"little"*] 
then 
	tar -zcf $scratchDir -C cleaned_little_dir.tgz $ParentDir
else 
	tar -zcf $scratchDir -C cleaned_big_dir.tgz $ParentDir
fi

  
