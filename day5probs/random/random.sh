#!/bin/bash
echo 'Enter the Question number from 1 to 5';
read qnum;
	case $qnum in
		1) 
		echo '****Single digit random number***';
		echo $((RANDOM%10));
		;;
		2)
		echo '****The Random Dice number is****';
		RANGE=$((7-0+1));
		res=$(($(($RANDOM%$RANGE))+0));
		echo $res;
		;;
		3)
		echo '****Addition of two random dice numbers****';
		RANGE=$((7-0+1));
		dice1=$(($(($RANDOM%$RANGE))+0));
		dice2=$(($(($RANDOM%$RANGE))+0));
		echo The random two dice numbers are $dice1 and $dice2;
		echo '--------------------------------------------------';
		echo Addition of two dice number is $((dice1+dice2));
		;;
		4) 
		echo '****Sum and Average of 5 two digit numbers****';
		RANGE=$((100-9+1));
		for((i=1 ; i<=5 ; i++));
		do
			number=$(($(($RANDOM%$RANGE))+9));
			echo The numbers are $number;
			sum=$(( number + sum ));
		done
			echo The sum of the numbers is $sum;
			echo The average is $((sum/5));
		;;
		5)
		echo '****Unit conversion****';
		echo 'a. Say if 1ft is equal to 12inch, then 42inch is equal to';
		res=`echo 42 | awk '{print $1/12}'`;
		echo The result is $res;
		echo '##################################';
		echo 'b. Rectangular plot of 60feet x 40feet';
		length=`echo 60 | awk '{print $1/3.281}'`;
		breadth=`echo 40 | awk '{print $1/3.281}'`;
		area=`echo $length $breadth | awk '{print $1*$2}'`;
		echo Area in metre : $area m.sq;
		echo '#####################################';
		echo 'c. The Total area of 25 such plots is:';
		tot_area=`echo $area | awk '{print $1*25}'`;	
		echo $tot_area;			
		;;
		*)
		echo 'Please enter the correct input';
		;;
	esac