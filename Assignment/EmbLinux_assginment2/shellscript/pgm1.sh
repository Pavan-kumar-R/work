#Implement a shell script to print the depth of the directory the cursor is present. For example,/home/user1/python/ the depth level is 3. /home/user1 depth level is 2.

find . -mindepth 1 -type d | wc -l

