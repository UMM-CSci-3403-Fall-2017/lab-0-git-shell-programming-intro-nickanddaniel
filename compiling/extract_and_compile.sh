#!/bin/bash

CArg=$1
directory=$2

tar -xzf NthPrime.tgz -C $directory

#gcc -o -i NthPrime main.c nth_prime.c

gcc $directory/NthPrime/main.c $directory/NthPrime/nth_prime.c $directory/NthPrime/nth_prime.h -o NthPrime

./NthPrime $CArg
