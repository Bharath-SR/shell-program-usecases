#!/bin/bash -x

isPre=1
randomCheck=$((RANDOM%2))

if [ $isPre -eq $randomCheck ]
then
    empRateperHr=30
    empHrs=9
    salary=$(($empRateperHr*$empHrs))
    echo "Employee salary is $salary"
else
    salary=0
    echo "Employee is absent"
fi
