#!bin/bash
#shell script to print traingle numbers
$n2=0
for (( i =  1; i <= 9; i++ ))
    do 
	n2=`expr $n2 + 1`
	   for (( n = 1; n <= i ; n++ ))
		do 
		    echo -n " $n2 "
		done
	echo " " ###prints the new line###
     done
