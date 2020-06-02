#!/bin/bash

isPresent=1;

randomCheck=$((RANDOM%2));

if [ $isPresent -eq  $randomCheck ]
then
empRate=20;
empHr=8;
salary=$(($empRate*$empHr));

else
    salary=0;
fi
echo "$salary"


