#!/bin/bash -x

isPTime=1
isFTime=2
empRatePerHr=30
randomCheck=$((RANDOM%3))

if [ $isPTime -eq $randomCheck ]
then
	empHrs=3
elif [ $isFTime -eq $randomCheck ]
then 
   	empHrs=8
else
   empHrs=0
fi

salary=$(($empHrs*$empRatePerHr))
echo "$salary"
