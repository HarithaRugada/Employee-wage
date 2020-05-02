#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"
present=1
status=$(( $RANDOM%2 ))
if [ $status -eq $present ]
then
	echo "present"
else
	echo "absent"
fi
