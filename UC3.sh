#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=30
numOfWorkingDays=20
totalSalary=0

for ((day=1;day<=$numOfWorkingDays; day++))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
				$isPartTime )
					empHrs=4
					;;
				$isFullTime )
					empHrs=9
					;;
				*)
					empHrs=0
					;;

	esac
	#daily salary
	salary=$(($empHrs*$empRatePerHr))
	#monthly salary
	totalSalary=$(($totalSalary+$salary))
done
