#!/usr/bin/env bash

INT=0
NUMBER=$1

while [ $INT -le $NUMBER ] 
do
    echo "The number is $INT"
    INT=$(($INT + 1))
done

exit 0