#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"
present=1
status=$(( $RANDOM%2 ))
hourwage=20
salary=0
if [ $status -eq $present ]
then
	echo "present"
	workhours=$(( $RANDOM%10 ))
	if [ $workhours -lt 9 ]
	then
		echo "part-time"
		salary=$(( $hourwage*$workhours ))
		echo $salary
	else
		echo "full-time"
		salary=$(( $hourwage+$workhours ))
		echo $salary
	fi
else
	echo "absent"
fi
