#!/bin/bash
# Recursively search all files with extension .sh in a given folder and for each file, replace all occurances of "bin" with "banana"

directory="/home/dell/Developments/bash_script_udemy/bash_developments/"
sh_files=`find $directory -type f -name "*.txt"`
# renaming_file='renaming.csv'
# old_names=`awk -F ',' '{print $1}' $renaming_file$`
# new_names=`awk -F ',' '{print $2}' $renaming_file$`

for file in $sh_files
do
	old_name='david'
	new_name='norm'
	sed -i "s:\b$old_name\b:$new_name:g" $file
done
