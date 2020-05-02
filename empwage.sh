#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"
present=1
status=$(( $RANDOM%2 ))
hourwage=20
salary=0
if [ $status -eq $present ]
then
	workhours=$(( $RANDOM%10 ))
                #adding 1 to workhours to avoid the case when workhour is zero and being marked as present
                case $workhours in
                        9) echo "Full time"
                                salary=$(( $(( $workhours+1 ))*$hourwage ))
                                ;;
                        *) echo "Part time"
                                salary=$(( $(( $workhours+1 ))*$hourwage ))
                                ;;
                esac
else
	echo "absent"
fi
