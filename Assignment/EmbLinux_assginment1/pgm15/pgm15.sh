#!/bin/bash

echo "Enter the name of the file"
read file


if [ -e "$file" ] #to check file exist or not
then
        echo "$file found."
else
        echo "$file not found."
fi

echo "The content of $file is "
echo ""

cat $file 
echo ""

word=`wc -w < $file`

char=`wc -c < $file`

line=`grep -c "." < $file`

echo "The number of word in file is $word"

echo "The number of character in  file is $char"

echo "The number of lines in file is $line"
