#!/bin/bash
# homework from this link: https://ryanstutorials.net/bash-scripting-tutorial/bash-arithmetic.php
# Create a simple script which will take two command line arguments and then multiply them together using each of the methods detailed above.

let a=$1\*$2
echo $a

b=$( expr $1 \* $2 )
echo $b

c=$(($1 * $2))
echo $c
