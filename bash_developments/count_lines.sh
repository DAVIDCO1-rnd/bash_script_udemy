#!/bin/sh
# Linux users have to change $8 to $9
awk '
BEGIN 	{ count=0 } 
		{ count++ }	
END   	{ print count } 
'
