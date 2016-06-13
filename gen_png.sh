#!/bin/sh 

if [ $# == 1 ] ; then 
##	echo "Number of arguments = $#"
    if [ -f $1 ] ; then 
		# name without extension
	    name=${1%\.*}

		echo "Input filename is (w/ extension): $1"
		echo "Input filename is (w/o extension): ${name}"

		dot -Tpng $1 -o ${name}.png

	else 
		echo "ERROR: $1 file does not exist!"
	fi
else
	echo "Usage: $0 [dot_filename]"
fi
