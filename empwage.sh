#! /bin/bash/ -x

echo "Welcome to Employee Wage Computation Program"
present=1
hourwage=20
salary=0
totalwh=0
for(( days=1;days<=20;days++ ))
do
        status=$(( $RANDOM%2 ))
        if [ $status -eq $present ]
        then
                echo "employee is present"
                workhours=$(( $RANDOM%10 ))
                #adding 1 to workhours to avoid the case when workhour is zero and being marked as present
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
        else
                echo "employee is absent"
        fi
done
echo "Month salary:" $salary
echo "Total worked hours: "$totalwh
