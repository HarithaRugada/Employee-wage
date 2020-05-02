#! /bin/bash/ -x

echo "Welcome to Employee Wage Computation Program"
present=1
hourwage=20
salary=0
totalwh=0
days=0
while [ $totalwh -lt 100 ] && [ $days -lt 20 ]
do
        status=$(( $RANDOM%2 ))
        if [ $status -eq $present ]
        then
                echo "employee is present"
                workhours=$(( $RANDOM%10 ))
                #adding 1 to workhours to avoid the case when workhour is zero and being marked as present
                if [ $(( $totalwh+$workhours )) -lt 100 ]
		then
			days=$(( $days+1 ))
			case $workhours in
                        	9) echo "Full time"
                                	salary=$(( $salary+$(( $(( $workhours+1 ))*hourwage )) ))
                                	totalwh=$(( $totalwh+$(( $workhours+1 )) ))
                                	;;
                        	*) echo "Part time"
                                	salary=$(( $salary+$(( $(( $workhours+1 ))*hourwage )) ))
                                	totalwh=$(( $totalwh+$(( $workhours+1)) ))
                                	;;
                	esac
		fi
        else
                echo "employee is absent"
        fi
done
echo "Month salary:" $salary
