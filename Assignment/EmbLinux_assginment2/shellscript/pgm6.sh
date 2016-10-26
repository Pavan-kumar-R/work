#Implement an shell script to find the file size in a directory which is maximum and minimum.

#!/bin/bash
dir=$1

if [ $# -ne 1 ]
then
    echo "please pass arguments" 
exit
fi

if [ -d $Desktop ]
then
    if [ -z "$(ls -1A -- $Desktop )" ]
      then
        echo " directory exists but its empty" 
        else
                printf "minimum file size: %s\n" 
                du $Desktop  -hab | sort -n -r |tail -n 2
                 find "$Desktop " -type f -printf '%s %p\n' | sort -n -r | head -n 1 | {
                read -r size name
                printf "maximum file size: %d\n\t%s\n" "$size" "$name"
                }

                printf "average file size: %s"
                du $Desktop  -sk | awk '{s+=$1}END{print s/NR}'
    fi
        else
        echo " directory doesn't exists"
fi
