#!/bin/bash
# Recursively search all files with extension .sh in a given folder and for each file, replace all occurances of "bin" with "banana"

directory="/home/dell/Developments/bash_script_udemy/"
sh_files=`find $directory -type f -name "*.sh"`
for file in $sh_files
do
	echo $file
done
