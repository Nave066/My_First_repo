#!/bin/bash
echo 'Enter name of 5 log files.... ';
read f1; read f2; read f3; read f4; read f5;
printf "\n";
echo 'The Log files created for rename are...';
touch $f1.log.1 $f2.log.1 $f3.log.1 $f4.log.1 $f5.log.1;
ls *.log.1;
echo '----------------------------------------------------';
echo 'Segregating base name and Extension of file...';
	cdate=$(date '+%d%m%Y');
	echo Current date is $cdate;
	echo 'Segregated file names are...';
	for file in `ls *.log.1`
	do
		filename=`echo $file | awk -F. '{print $1}'`;		
		echo $filename;
		mv $file $filename-$cdate.log;		
	done 
	echo -e "The Appended new file name is \n" `ls -1a *.log`;
	printf "\n";
	echo '=====================================================';
