 #!/bin/bash
echo 'Enter the Question number from 1 to 4';
echo '1. Table of Power of 2 till 256';
echo '2. Magic number';
echo '3. Flip coin';
echo '4. Betting Problem';
read qnum;
	case $qnum in
		1) 
		echo '****Table of power of 2 till 256***';
		echo 'Enter the value of n';
		read valofn;
		echo 'Table of power of 2 are...';
		i=0;
		until [ $i -gt 8 ]
		do
			res=$(( 2 ** $i ));
			echo Two power $i is $res;
			((i++));
		done 
		;;
		2)
		echo '****Magic number****';
		#echo 'Hi, Please select a number from 1 to 100';
		#read number;
		#echo 'Nice.... Now answer my questions...';
		
		#echo 'The number you entered';
		echo 'When i understand the question, I will answer it..';
		;;
		3) 
		echo '****Extended Flip coin problem****';
			hcount=0;
			tcount=0;
			until [ $hcount -ge 11 ] || [ $tcount -ge 11 ]
			do
				coinflip=$((RANDOM%2));
				if [ $coinflip -eq 0 ]
				then
					result=head;
					((hcount++));
				else
					result=tail;
					((tcount++));
				fi
			done
			if [ $hcount -eq 11 ]
			then
				echo 'The head got win';
				echo $hcount;
			else
				echo 'The tail got win';
				echo $tcount;	
			fi
		;;
		4)
			echo '****Gambler Game****';
			money=100;
			bet=0;
			win=0;
			until [ $money -eq 0 ] || [ $money -eq 200 ]
			do
				coinflip=$((RANDOM%2));
				if [ $coinflip -eq 0 ]
				then
					((money--));
					((bet++));
				else
					((money++));
					((bet++));
					((win++));
				fi
			done
			echo No of bets made : $bet;
			echo No of wins is : $win;
			echo No of Loss is : $((bet - win)); 
			if [ $win >= $loss ]
			then 
				echo 'The gambler won the game and have 200';
			else
				echo 'The gambler Lost all his money';
			fi
		;;
		*)
			echo 'Please enter the correct input';
		;;
	esac