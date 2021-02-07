#!/bin/bash
# homework from this link: https://ryanstutorials.net/bash-scripting-tutorial/bash-arithmetic.php
# Write a Bash script which will print tomorrows date. (Hint: use the command date)



let a=$1\*$2
echo $a

b=$( expr $1 \* $2 )
echo $b

c=$(($1 * $2))
echo $c
