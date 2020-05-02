#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"
present=1
status=$(( $RANDOM%2 ))
hourwage=20
workhours=8
salary=0
if [ $status -eq $present ]
then
	echo "present"
	salary=$(( $hourwage*$workhours ))
	echo $salary
else
	echo "absent"
fi
