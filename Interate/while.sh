#!/usr/bin/env bash

COUNT=1

while [ $COUNT -lt 11 ]
do
    echo "The count is $COUNT"
    COUNT=$(($COUNT + 1))
done

exit 0