#!/bin/bash
echo "1. list of all files in directory"
echo "2. Print the word count of a file"
echo "3. Check whether machine supports hardware supported virtualization"
echo "4. users shell"
read option
case $option in

	1) ls ;;
	2) wc -w $0 ;;
	3) grep --color svm /proc/cpuinfo ;;
	4) cut -f 1,7 -d: /etc/passwd > temp.txt;;
	*) echo "entered invalid option";;
esac
