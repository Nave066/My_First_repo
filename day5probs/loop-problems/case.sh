#!/bin/bash
echo 'Enter the Question number from 1 to 4';
read qnum;
	case $qnum in
		1) 
		echo '****Number to word conversion using case statement***';
		echo 'Enter the Number from 0 to 9';
		read usernumber;
		re='^[0-9]+$';
		if ! [[ $usernumber =~ $re ]];
		then 
			echo 'Please enter numbers only';
		elif [ $usernumber -ge 0 ] && [ $usernumber -le 9 ];
		then 
			case $usernumber in 
			0)
			echo The Word for 0 is ZERO;
			;;
			1)
			echo The Word for 1 is ONE;
			;;			
			2)
			echo The Word for 2 is TWO;
			;;
			3)
			echo The Word for 3 is THREE;
			;;
			4)
			echo The Word for 4 is FOUR;
			;;
			5)
			echo The Word for 5 is FIVE;
			;;			
			6)
			echo The Word for 6 is SIX;
			;;
			7)
			echo The Word for 7 is SEVEN;
			;;
			8)
			echo The Word for 8 is EIGHT;
			;;
			9)
			echo The Word for 9 is NINE;
			;;
			esac
		else
			echo 'Enter the vaild input';
		fi
		;;
		2)
		echo '****Number to Weekday conversion using case statement***';
		echo 'Enter the Number from 1 to 7';
		read userinput;
		re='^[0-9]+$';
		if ! [[ $userinput =~ $re ]];
		then 
			echo 'Please enter numbers only';
		elif [ $userinput -gt 0 ] && [ $userinput -le 7 ];
		then 
			case $userinput in
			1)
			echo The Weekday for 1 is SUNDAY;
			;;
			2)
			echo The Weekday for 2 is MONDAY;
			;;
			3)
			echo The Weekday for 3 is TUESDAY;
			;;
			4)
			echo The Weekday for 4 is WEDNESDAY;
			;;
			5)
			echo The Weekday for 5 is THRUSDAY;
			;;
			6)
			echo The Weekday for 6 is FRIDAY;
			;;
			7)
			echo The Weekday for 7 is SATURDAY;
			;;
			esac
		else
			echo 'Enter the vaild input';
		fi
		;;
		3)
		echo '****Power of 10 to Words using case statement****';
		echo 'Enter the Number which is power of 10';
		echo 'Eg) 1,10,100,1000,...';
		read userinput;
		re='^[0-9]+$';
		if ! [[ $userinput =~ $re ]];
		then 
			echo 'Please enter numbers only';
		else
			case $userinput in
			1) 
			echo The word for 1 is UNIT;
			;;
			10)
			echo The Word for 10 is TEN;
			;;
			100)
			echo The Word for 100 is HUNDRED;
			;;
			1000)
			echo The Weekday for 1000 is THOUSAND;
			;;
			10000)
			echo The Weekday for 10000 is TEN THOUSAND;
			;;
			100000)
			echo The Weekday for 100000 is LAKH;
			;;
			1000000)
			echo The Weekday for 1000000 is TEN LAKH;
			;;
			10000000)
			echo The Weekday for 10000000 is CRORE;
			;;
			100000000)
			echo The Weekday for 100000000 is TEN CRORE;
			;;
			*)
			echo 'Enter the vaild input';
			;;
			esac		
		fi
		;;
		4) 
		echo '****Measurement Convertion****';
		echo 'Choose a option from 1 to 4';
		echo '1.Feet to inch';
		echo '2.Feet to Meter';
		echo '3.Inch to feet';
		echo '4.Meter to Feet';
		read option;		
		re='^[1-9]+$';
		if ! [[ $option =~ $re ]];
		then 
			echo 'Please enter numbers Between 1 to 4';
		else
			case $option in 
			1)
				echo '***Feet to inch Convertion***';
				echo 'Enter the Number';
				read usr_number;
				result=$(($usr_number*12));
				echo Result: $usr_number Foot = $result Inch;
			;;
			2)
				echo '***Feet to Meter Convertion***';
				echo 'Enter the Number';
				read usr_number;
				result=`echo $usr_number | awk '{print $1/3.281}'`;
				echo Result: $usr_number Foot = $result Meter; 
			;;
			3)
				echo '***Inch to Feet Convertion***';
				echo 'Enter the Number';
				read usr_number;
				result=`echo $usr_number | awk '{print $1/12}'`;
				echo Result: $usr_number Inch = $result Foot; 
			;;
			4)
				echo '***Meter to Feet Convertion***';
				echo 'Enter the Number';
				read usr_number;
				result=`echo $usr_number | awk '{print $1*3.281}'`;
				echo Result: $usr_number Meter = $result Foot; 
			;;
			esac	
		fi
		;;
		*)
		echo 'Please enter the correct input';
		;;
	esac