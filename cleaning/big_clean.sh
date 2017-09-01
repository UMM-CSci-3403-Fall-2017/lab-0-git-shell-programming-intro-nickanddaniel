#!/bin/bash

arch=$1
scratch=$2

tar -xzf $arch -C $scratch

grep -lr "DELETE ME!" $scratch | xargs rm -f

cd $scratch

tar -zcf ../"cleaned_"$arch ${arch%.*}
