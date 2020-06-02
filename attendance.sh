#!/bin/bash -x
x=$((RANDOM%2))
if [$x -eq 1]
then
echo "emp is present"
else
echo "emp is absent"
fi
