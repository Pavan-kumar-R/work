#Implement a shell script to check if the file is normal file or a special file.

#!/bin/bash
echo "please enter the file location"
read input
if [ -f "$input" ]
then
  echo "$input is not Device or Directory file."
fi
if [ -d "$input" ]
then
   echo "$input is a directory."
fi
