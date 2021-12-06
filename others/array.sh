#!/bin/bash
arr=(naveen 18597 kavin guhan 31200)
declare -A array;
echo ${arr[@]}
echo ${arr[*]}
echo ${arr[@]:1:4}
echo ${arr[4]:1:3}
