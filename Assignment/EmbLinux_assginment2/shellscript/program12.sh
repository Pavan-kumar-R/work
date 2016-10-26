#Implement a menu driven schell script to a) add a user b) delete a user c) chown of a directory

#!/bin/bash

title="Select example"
prompt="Pick an option:"
options=("Add a user" "Delete a user" "chown a directory")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do 

    case "$REPLY" in

    1 ) echo "Enter user name to add:"; read user; sudo adduser $user; break;;
    2 ) echo "Enter user name to delete:"; read user; sudo deluser $user; break;;
    3 ) echo "Enter path to chown:"; read path; echo "Enter owner name"; read owner; echo "Enter user name"; read user1; sudo chown $owner $user1 $path; break;;

    $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;

    esac

done

