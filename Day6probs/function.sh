 #!/bin/bash
echo 'Enter the Question number from 1 to 3';
echo '1. Temperature Calculation';
echo '2. Palindromes';
echo '3. Prime and palindrome';
read qnum;
	case $qnum in
		1) 
		echo '****Temperature Calculation***';
		echo '1. Celsius to Fahrenheit ';
		echo '2. Fahrenheit to celsius';
		echo 'Enter your option (1 or 2)';
		read usr_opt;
		function celtofah() {
			echo 'Conversion of value from Celsius to Fahrenheit';
			echo '---------------------------------';
			echo 'Enter the Celsius Degree value between 0 to 100:'
			read cel;
			if [ $cel -ge 0 ] && [ $cel -lt 101 ];
			then
				tofah=`echo $cel | awk '{print ($1*1.8)+32}'`;
				echo The Fahrenheit value is : $tofah;
			else
				echo 'Wrong input';
			fi		
			}
		function fahtocel() {
			echo 'Conversion of value from Fahrenheit to Celsius';
			echo '---------------------------------';
			echo 'Enter the Fahrenheit Degree value between 32 and 212:'
			read fah;
			if [ $fah -ge 32 ] && [ $fah -le 212 ];
			then
				tocel=`echo $fah | awk '{print ($1-32)*(5/9)}'`;
				echo The Celsius value is : $tocel;
			else
				echo 'Wrong Input';
			fi	
			}
		case $usr_opt in
			1) 
			celtofah
			;;
			2)
			fahtocel
			;;
			*)
			echo 'Please enter valid input';
			;;
		esac
		;;
		2)
		echo '****Palindrome or not****';
		echo 'Enter the first Number:';
		read pnum1;
		echo 'Enter the second Number:';
		read pnum2;
		function palindrome() {
			s=0;
			rev="";
			temp=$pnum1;
			while [ $pnum1 -gt 0 ]
			do	
				s=$(( $pnum1 % 10 ));
				pnum1=$(( $pnum1 / 10 ));
				rev=$( echo ${rev}${s} );
			done
			if [ $pnum2 -eq $rev ];
			then
				echo 'Both are palindrome';
			else
				echo 'Both are not palindrome';
			fi
		}
		palindrome pnum1 pnum2;
		;;
		3) 
			echo '****Prime and palindrome****';
			echo 'Enter a number:';
			read usr_num;
			function prime() {
				for((i=2; i<=$usr_num/2; i++))
				do
 					ans=$(( usr_num%i ))
  					if [ $ans -eq 0 ]
  					then
    						echo "$usr_num is not a prime number."
						exit 0;
					fi
				done
					echo "$usr_num is a prime number";
					echo "Checking for its palindrome..";
					palindrome;
				}
			function palindrome() {
				while [ $usr_num -gt 0 ]
				do	
					s=$(( $usr_num % 10 ));
					usr_num=$(( $usr_num / 10 ));
					rev=$( echo ${rev}${s} );
				done
					temp=$rev;
				for((j=2; j<=$temp/2; j++))
				do
 					ans1=$(( temp%j ))
  					if [ $ans1 -eq 0 ]
  					then
    						echo "Its palindrome $temp is not a prime number."
						exit 0;
					fi
				done
				echo "Its palindrome $temp is also a prime number"
			}
			prime;
		;;
		*)
			echo 'Please enter the correct input';
		;;
	esac