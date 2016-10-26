#!/bin/bash
file1=$1
file2=$2

if [ -e "$file1" ] #to check file exist or not
then
	echo "$file1 found."
else
	echo "$file1 not found."
fi

echo ""
echo "content of $file1 is:"
cat $file1

echo ""
if [ -f "$file2" ] #to check file is a normal file,not a directory or a device
then
        echo "$file2 found."
else
        echo "$file2 not found."
fi

echo ""
echo "content of $file2 is:"
cat $file2

echo ""
if  cmp -s "$file1" "$file2"
then
	echo "Files have the same content"
else
	echo "Files dont have the same content"
fi
