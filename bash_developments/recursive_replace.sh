#!/bin/bash
# Recursively search all files with given extension in a given folder. For each file, this script replaces all occurances of strings in the first column in a given csv file and replaces them with the strings in the second column of the same csv file.

directory="./data_folder/"
renaming_file='renaming.csv'
extension="txt"
num_of_files=`find $directory -type f -name "*."$extension | wc -l`
files=`find $directory -type f -name "*."$extension`
let num_of_substitutions=`awk '{++cnt} END {print cnt}' $renaming_file`-1
old_names=`awk -F ',' '{print $1}' $renaming_file | tail +2`
new_names=`awk -F ',' '{print $2}' $renaming_file | tail +2`
arr_old_names=($old_names)
arr_new_names=($new_names)
arr_files=($files)

for ((i=0; i<$num_of_files; i++))
do
	current_file=${arr_files[i]}
	echo $current_file
	for ((j=0; j<$num_of_substitutions; j++))
	do
		current_old_name=${arr_old_names[j]}
		current_new_name=${arr_new_names[j]}
		# awk "{ gsub(/\<$current_old_name\>/, $current_new_name); print }" $current_file
		set -x
		sed -i "s:\b$current_old_name\b:$current_new_name:g" $current_file
		set +x
	done
done
