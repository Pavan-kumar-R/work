#!/bin/sh

####################################
# Dependent packages: zenity, sftp #   
#                                  #
# sudo apt-get install zenity      #
# sudo apt-get install openssh     #
#                                  #
#                                  #
####################################


# Input
user=$(zenity --entry --title="Username of server" --text="Enter username of server:")
echo "User is $user"
SERVERIP=$(zenity --entry --title="IP address of server" --text="Enter IP address of server:")
echo "SERVER IP address is $SERVERIP"

options () {
while true; do
    read -p "Options: Enter \"get\" for Copy: Enter \"put\" for download: Enter \"mac\" for MAC: Enter \"E\" to exit: \n" opt
    case $opt in
        [get]* ) download ; break;;
        [put]* ) upload ; break;;        
        [mac]* ) macaddr ; break;;        
        [E]* ) exit;;
        * ) echo "Please input only get or put or E.";;
    esac
done
}

download () {
    zenity --info "Enter the Full Path of required remote file for Download (ex: /home/sois/download/download.txt)"
    read -p dwnldfile
    # secured file copy from remote server to current directory of host
    scp $user@$SERVERIP:$dwnldfile .
}

upload () {
    zenity --info "Enter the Full Path of required file for upload (ex: /home/mysystem/Desktop/upload.txt)"
    read -p uploadFile
    zenity --info "Enter the Full Path of remote server to upload (ex: /home/sois/upload/)"
    read -p uploadPath
    # secured file copy to remote server from host
    scp $uploadFile $user@$SERVERIP:$uploadPath
}

macaddr () {
    scp $user@$SERVERIP:/sys/class/net/eth0/address .
    echo "MAC Addr is: " && cat address
}

ping -c 3 $SERVERIP > /dev/null 2>&1

if [ $? -ne 0 ]
then
   # Server is down
   echo "Server is down" 
else
   echo "Server is ON"
   options     
fi




