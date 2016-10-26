#Implement a function in shell for finding the numbers of users present in the system.
echo "All users in system"
 awk -F':' '{ print $1}' /etc/passwd
