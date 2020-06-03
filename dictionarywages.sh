#!/bin/bash -x

isPartTime=1;
isFullTime=2;
maxHrsInMonth=4;
empRatePerHr=20;
numWorkingDays=20;
employeeHr=50;
#variables

totalEmpHrs=0;
totalWorkingDays=0;
count=0;

declare -A dailyWages
function calculateemphour(){
local num1=$1
case $num1 in
			$isPartTime)
						totalHour=4
							;;
			$fullTime)
				totalHour=8
               ;;
              *)
               totalHour=0
						;;
			esac
echo $totalHour
}
function totalemphr(){
local num1=$1
local num2=$2
echo $(( $num1+$num2 ))
}
function dw(){
local num1=$1
local num2=$2
echo $(( $num1 * $num2 ))
}


while [[ $totalEmpHr -lt $maxHrsInMonth &&
 $totalWorkingDays -lt $numWorkingDays ]]

do
((totalWorkingDays++))
empCheck=$((RANDOM%3));
empHrs="$(getWorkHrs $empCheck )"
totalEmpHrs=$($totalEmpHr $totalemphrs $calculateemphour)
dailyWages[ "$totalWorkingDays" ]=$(dw  $calculateemphour $empRatePerHr))
done
salary=$(salary $totalemphrs $empRatePerHr)
totalSalary=$(($totalEmpHr*$empRatePerHr))
echo "${dailyWages[@]}"
for i in "${!dailyWages[@]}";
do
echo "$i=>${dailyWages[$i]}";

done




