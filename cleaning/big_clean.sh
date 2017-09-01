#!/bin/bash

tarDir=$1
scratchDir=$2

boolean=$false
[[ "$PWD" == *little* ]] && $boolean=$true


tar -xzf $tarDir -C $scratchDir

for file in $scratchDir/little_dir
	do
	if grep -lr "DELETE ME!" $file
		then
			echo "i found a file"
			rm $file
		fi
	done



#if [$boolean == $true] 
#then
#       echo "true"	
#	tar -zcf cleaned_little_dir.tgz $scratchDir/little_dir
#else
#	echo "false"
#	tar -zcf cleaned_big_dir.tgz $scratchDir/big_dir

#fi

