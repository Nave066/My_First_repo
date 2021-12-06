#!/bin/bash
echo 'Enter the Question number from 1 to 4';
read qnum;
	case $qnum in
		1) 
		echo '****Number to word conversion***';
		echo 'Enter the Number from 0 to 9';
		read usernumber;
		re='^[0-9]+$';
		if ! [[ $usernumber =~ $re ]];
		then 
			echo 'Please enter numbers only';
		elif [ $usernumber -ge 0 ] && [ $usernumber -le 9 ];
		then 
			if [ $usernumber -eq 0 ]
			then
				echo The Word for 0 is ZERO;
			elif [ $usernumber -eq 1 ]
			then
				echo The Word for 1 is ONE;
			elif [ $usernumber -eq 2 ]
			then
				echo The Word for 2 is TWO;
			elif [ $usernumber -eq 3 ]
			then
				echo The Word for 3 is THREE;
			elif [ $usernumber -eq 4 ]
			then
				echo The Word for 4 is FOUR;
			elif [ $usernumber -eq 5 ]
			then
				echo The Word for 5 is FIVE;
			elif [ $usernumber -eq 6 ]
			then
				echo The Word for 6 is SIX;
			elif [ $usernumber -eq 7 ]
			then
				echo The Word for 7 is SEVEN;
			elif [ $usernumber -eq 8 ]
			then
				echo The Word for 8 is EIGHT;
			elif [ $usernumber -eq 9 ]
			then
				echo The Word for 9 is NINE;
			fi
		else
			echo 'Enter the vaild input';
		fi
		;;
		2)
		echo '****Number to Weekday conversion***';
		echo 'Enter the Number from 1 to 7';
		read userinput;
		re='^[0-9]+$';
		if ! [[ $userinput =~ $re ]];
		then 
			echo 'Please enter numbers only';
		elif [ $userinput -gt 0 ] && [ $userinput -le 7 ];
		then 
			if [ $userinput -eq 1 ]
			then
				echo The Weekday for 1 is SUNDAY;
			elif [ $userinput -eq 2 ]
			then
				echo The Weekday for 2 is MONDAY;
			elif [ $userinput -eq 3 ]
			then
				echo The Weekday for 3 is TUESDAY;
			elif [ $userinput -eq 4 ]
			then
				echo The Weekday for 4 is WEDNESDAY;
			elif [ $userinput -eq 5 ]
			then
				echo The Weekday for 5 is THRUSDAY;
			elif [ $userinput -eq 6 ]
			then
				echo The Weekday for 6 is FRIDAY;
			elif [ $userinput -eq 7 ]
			then
				echo The Weekday for 7 is SATURDAY;
			fi
		else
			echo 'Enter the vaild input';
		fi
		;;
		3)
		echo '****Power of 10 to Words****';
		echo 'Enter the Number which is power of 10';
		echo 'Eg) 1,10,100,1000,...';
		read userinput;
		re='^[0-9]+$';
		if ! [[ $userinput =~ $re ]];
		then 
			echo 'Please enter numbers only';
		elif [ $userinput -eq 1 ]
		then
			echo The word for 1 is UNIT;
		elif [ $userinput -eq 10 ]
		then
		echo The Word for 10 is TEN;
		elif [ $userinput -eq 100 ]
		then
			echo The Word for 100 is HUNDRED;
		elif [ $userinput -eq 1000 ]
		then
			echo The Weekday for 1000 is THOUSAND;
		elif [ $userinput -eq 10000 ]
		then
			echo The Weekday for 10000 is TEN THOUSAND;
		elif [ $userinput -eq 100000 ]
		then
			echo The Weekday for 100000 is LAKH;
		elif [ $userinput -eq 1000000 ]
		then
			echo The Weekday for 1000000 is TEN LAKH;
		elif [ $userinput -eq 10000000 ]
		then
			echo The Weekday for 10000000 is CRORE;
		elif [ $userinput -eq 100000000 ]
		then
			echo The Weekday for 100000000 is TEN CRORE;
		else
			echo 'Enter the vaild input';
		fi
		;;
		4) 
		echo '****Finding Max and min****';
		echo 'Enter the three numbers';
		read num1; read num2; read num3;		
		re='^[1-9]+$';
		if ! [[ $num1 =~ $re ]] && ! [[ $num2 =~ $re ]] && ! [[ $num3 =~ $re ]];
		then 
			echo 'Please enter numbers only';
		else
			expr1=$(($num1+$num2*$num3));
			echo The result of expression a+b*c is $expr1;
			expr2=$(($num1%$num2+$num3));
			echo The result of expression a%b+c is $expr2;
			expr3=$(($num3+$num1/$num2));
			echo The result of expression c+a/b is $expr3;
			expr4=$(($num1*$num2+$num3));
			echo The result of expression a*b+c is $expr4;
			arr=($expr1 $expr2 $expr3 $expr4);
			declare -a arr;
			echo '----------------------------------------';
			echo 'Getting maximum and minimum number';
			max=${arr[0]};
			min=${arr[0]};
			for i in "${arr[@]}"
			do
   				 if [[ "$i" -gt "$max" ]]; then
      		        	 max="$i"
 		        	 fi
			         if [[ "$i" -lt "$min" ]]; then
        			 min="$i"
    				 fi
			done
			echo 'Output results:';
			echo "Max is: $max"
			echo "Min is: $min"	
		fi
		;;
		*)
		echo 'Please enter the correct input';
		;;
	esac