#!/bin/bash
echo 'Creating files such as abc.txt, def.txt, ghi.txt, jkl.txt';
	touch abc.txt def.txt ghi.txt jkl.txt;
echo 'Files created successfully';	
echo '----------------------------------------------------------'
echo 'The created files are...';
	ls *.txt
echo '----------------------------------------------------------' 
echo 'Segregating Basename and extention of these files...'
	
	for files in `ls *.txt`
		do
		folderName=`echo $files | awk -F. '{print $1}'`;
		printf "\n";
		if [ -d $folderName ]
			then
			rm -r $folderName;
			echo The folder $folderName already exists and it is removed to create new folder;
		fi
		mkdir $folderName;
		mv $files $folderName;
		echo The $files is moved to folder $folderName;
	done
printf "\n";
echo 'Files moved to respective folders successfully...'
echo '==========================================================='