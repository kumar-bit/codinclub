#!/bin/bash -x

isPartTime=1;
isFullTime=2;
maxHrsInMonth=4;
empRatePerHr=20;
numWorkingDays=20;
#variables

totalEmpHr=0;
totalWorkingDays=0;

function getWorkHrs( ) {
local $empCheck=$1
case $empCheck in
$isFullTime)
empHrs=8
;;
$isPartTime)
empHrs=4;
;;
*)
empHrs=0
;;
esac
echo $empHrs
}




while [[ $totalEmpHr -lt $maxHrsInMonth &&
 $totalWorkingDays -lt $numWorkingDays ]]

do
((totalWorkingDays++))
empCheck=$((RANDOM%3));
empHrs="$(getWorkHrs $empCheck )"
totalEmpHr=$(($totalEmpHr*$empHrs))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))




