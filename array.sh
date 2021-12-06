#!/bin/bash
declare -a arr;
arr=(22,34,54);
i=0;
while [ $i -lt 3 ]
do
	echo ${arr[$i]};
	((i++));
done