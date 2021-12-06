#!/bin/bash
echo 'Enter the Question number from 1 to 4';
read qnum;
	case $qnum in
		1) 
		echo '****Three digit random Values***';
		RANGE=$((1000-99+1));
		for((i=1 ; i<=5 ; i++));
		do
			number=$(($(($RANDOM%$RANGE))+99));
			arraynumber+=("$number");
			declare -a arraynumber;
			#echo ${arraynumber[@]};
		done
			echo The numbers are ${arraynumber[@]};
			echo '----------------------------------------';
			echo 'Getting maximum and minimum number';
			max=${arraynumber[0]};
			min=${arraynumber[0]};
			for i in "${arraynumber[@]}"
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
		;;
		2)
		echo '****Finding day between range****';
		echo 'Enter the date';
		read usrdate;
		echo 'Enter the month';
		read usrmonth;
		echo 'Checking whether the entered date is between march 20 and june 20';
		startingdate=$(date +%s -d '12/24')
		;;
		3)
		echo '****Leap year or not****';
		Echo 'Enter a year:';
		read useryear;
		divby4=`expr $useryear % 4`;
		divby100=`expr $useryear % 100`;
		divby400=`expr $useryear % 400`;
		if [ $divby4 -eq 0 -a $divby100 -ne 0 -o $divby400 -eq 0 ]
		then
			echo The year $useryear is a leap year;
		else
			echo The year $useryear is not a leap year;
		fi
		;;
		4) 
		echo '****Coin Flip****';
		echo 'Enter your choice, head or tail :';
		read userchoice;
		if [ $userchoice == "head" ] || [ $userchoice == "tail" ];
		then
			coinflip=$((RANDOM%2));
			#echo $coinflip;
			if [ $coinflip -eq 0 ]
			then
				result=head;
			else
				result=tail;
			fi
			if [ $result == $userchoice ]
			then
				echo Congratulations.... You won buddy... It is $result;
			else
				echo Sorry buddy It is $result better luck next time ;
			fi
		else
			echo 'Please enter valid input : head or tail';
		fi
		;;
		*)
		echo 'Please enter the correct input';
		;;
	esac