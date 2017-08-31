#!/bin/bash

CArg=$1
directory=$2

tar -xzf NthPrime.tgz -C $directory

gcc $directory/NthPrime/*.c -o NthPrime


./NthPrime $CArg
