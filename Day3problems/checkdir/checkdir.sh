#!/bin/bash
echo 'Enter the folder name';
read folder;
	for f in `ls | grep */`;
	do
		if [[ $f == $folder ]];
		then
			f1=0;
			break;
		else
			f1=1;
		fi
	done
		if [ $f1 == 1 ]
		then
			mkdir $folder;
			echo 'Folder creted successfully';
		else 
			echo 'Folder exists';
		fi