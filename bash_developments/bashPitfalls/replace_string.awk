#!/bin/awk -f

		current_old_name=${arr_old_names[i]}
		current_new_name=${arr_new_names[i]}
		# awk "{ gsub(/\<$current_old_name\>/, $current_new_name); print }" $file
		sed -i "s:\b$current_old_name\b:$current_new_name:g" $file
	done
done

