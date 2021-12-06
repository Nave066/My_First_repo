#!/bin/bash
for file in `ls *.txt`
do
fol=`echo $file | awk -F. '{print $1}'`;
echo $fol;
done