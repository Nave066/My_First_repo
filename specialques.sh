#!/bin/bash
declare -a arr;
declare -A dir;
echo 'Enter the no of iteration to be made';
read itr;
for(( i=0 ; i<=itr ; i++ ))
do
	echo 'Enter the two inputs';
	read num1;
	read num2;
	
	case bool in 
		[ num1 -gt 20 ] && [ num2 -gt 20  ])
		echo 'Adding the numbers';
		add=$((num1+num2));
		arr+=($add);
		dir[a]=($add);
		;;
		[ num1 -lt 20 ] && [ num2 -lt 20  ])
		echo 'Sub the numbers';
		sub=$((num1-num2));
		arr+=($sub);
		dir[s]=($sub);
		;;
		[ num1 -eq 20 ] && [ num2 -eq 20  ])
		echo 'Div the numbers';
		div=$((num1/num2));
		arr+=($div);
		dir[d]=($div);
		;;
		*)
		echo 'Not in option';
		;;
	esac
		echo "${array[@]}";
		echo "{dir[*]}";
done