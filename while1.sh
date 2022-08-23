#!/bin/bash -x

isPartTime=1
isFullTimee=2
maxWorkingHrsinMonth=100
noOfWorkingDays=20
empRatePerHr=30
totalEmphr=0
totalWorkingDays=0

while (($totalEmphr < $maxWorkingHrsinMonth && $totalWorkingDays < $noOfWorkingDays))
do 
    ((totalWorkingDays++))
	randomcheck=$((RANDOM%3))
	case $randomcheck in
        $isparTime )
	empHrs=4
	;;
	$isFullTimee )
	empHrs=8
	;;
	*)
	empHrs=0
esac
totalHours=$(($totalEmphr+$empHrs))
done
totalSalary=$(($totalHours*$empRatePerHr))
