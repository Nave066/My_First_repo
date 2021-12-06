#!/bin/bash
echo 'Enter the Question number from 1 to 6';
echo '1. Table of Power of 2';
echo '2. Harmonic number';
echo '3. Prime number';
echo '4. Prime number in range';
echo '5. Factorial ';
echo '6. Prime factorization method';
read qnum;
	case $qnum in
		1) 
		echo '****Table of power of 2***';
		echo 'Enter the value of n';
		read valofn;
		echo 'Table of power of 2 are...';
		for(( i=0 ; i<=$valofn ; i++ ))
		do
			echo Two power $i = $(( 2 ** $i )); 
		done
		;;
		2)
		echo '****Harmonic number****';
		echo 'Enter the value of n';
		read valofn;
		harmonic=1;
		echo Harmonic number of $valofn is...;
		for(( i=2 ; i<=$valofn ; i++ ))
		do
			temp=`echo $i | awk '{print 1/$1}'`;
			harmonic=`echo $temp $harmonic | awk '{print $1+$2}'`;
		done
		echo The harmonic number of $valofn is $harmonic;
		;;
		3)
		echo '****To chceck whether the entered number is prime or not****';
		echo -e "Enter Number : \c"
		read n
		for((i=2; i<=$n/2; i++))
		do
 			ans=$(( n%i ))
  			if [ $ans -eq 0 ]
  			then
    				echo "$n is not a prime number."
    				exit 0
  			fi
		done
		echo "$n is a prime number."
		;;
		4) 
		echo '****To chceck all the prime number between a range****';
		echo "Enter Starting range: (Except zero and one)"
		read start;
		echo "Enter End range:"
		read end;
		function prime() {
			for(( i=2; i<=$j/2; i++ ))
			do
 				ans=$(( j%i ))
  				if [ $ans -eq 0 ]
  				then
    					echo 'Not prime';
					exit 0;
  				fi
			done
			echo "$j is a prime number."
		}
		if [ $start -eq 0 ] || [ $start -eq 1 ];
		then
			echo 'Better go to kinder garden and learn some basic english...';
		else
			for (( j=$start ; j<=$end ; j++ ))
			do
				prime;
			done
		fi
		;;
		5)
		echo '****Factorial of a given number****';
		echo "Enter a number";
		read num;
		temp=$num;
		fact=1;
		while [ $num -gt 1 ]
		do
			fact=$((fact * num))  #fact = fact * num
 			num=$((num - 1))      #num = num - 1
		done
			echo The Factorial of $temp is $fact;		
		;;
		6)
					
		;;
		*)
			echo 'Please enter the correct input';
		;;
	esac