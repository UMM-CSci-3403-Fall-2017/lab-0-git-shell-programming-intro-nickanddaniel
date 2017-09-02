#!/bin/bash

arch=$1
scratch=$2

here=$(pwd)
echo $here

tar -xzf $arch -C $scratch

grep -lr "DELETE ME!" $scratch | xargs rm -f

cd $scratch

tar -zcf $here/"cleaned_"$arch ${arch%.*}
