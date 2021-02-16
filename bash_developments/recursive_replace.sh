#!/bin/bash
# Recursively search all files with extension .sh in a given folder and for each file, replace all occurances of "bin" with "banana"

directory=$HOME"/Developments/Renaming/"
files=`find $directory -type f -name "*.txt"`
renaming_file='renaming.csv'
let num_of_lines=`awk '{++cnt} END {print cnt}' $renaming_file`-1
old_names=`awk -F ',' '{print $1}' $renaming_file | tail +2`
new_names=`awk -F ',' '{print $2}' $renaming_file | tail +2`
old_and_new_names=`awk -F ',' '{print $1,",",$2,":"}' $renaming_file | tail +2`

arr_old_names=($old_names)
arr_new_names=($new_names)

for file in $files
do
	for ((i=0; i<$num_of_lines; i++))
	do
		current_old_name=${arr_old_names[i]}
		current_new_name=${arr_new_names[i]}
		# awk "{ gsub(/\<$current_old_name\>/, $current_new_name); print }" $file
		sed -i "s:\b$current_old_name\b:$current_new_name:g" $file
	done
done
