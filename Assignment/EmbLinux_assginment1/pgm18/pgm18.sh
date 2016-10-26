#!/bin/bash

echo "Enter 5 digit number"
read n
number=$n
reverse=0
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
n=`expr $n / 10 `
reverse=`expr $reverse \* 10 + $a `
count=$((count+1))
done
echo $reverse
if [ $count -eq 5 ]
then
	if [ $number -eq $reverse ]
	then
		echo "Number is palindrom"
	else
		echo "Number is not palindrom"
	fi
else
	echo "Enter 5 digit number"
fi
