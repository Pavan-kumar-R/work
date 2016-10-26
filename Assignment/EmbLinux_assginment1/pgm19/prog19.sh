#!/bin/bash
#Usage:used to find factorial

#factroial function
factorial()
{

  if [ "$1" -gt "1" ]; then	        #checking input number is greater than 1 or not

    temp=1				                  #variable initialisation

    for (( c=1; c<=$1; c++ ))	
    do
        fact=`expr $c \* $temp`
        temp=$fact			            #saving factorial value to temperory variable
    done 
  else
   temp=1
  fi

}


#while :
#do
  echo "Enter a number to calculate factorial:"
  read input

  factorial $input		            	#function call with passing input

  echo "factorial of the entered number is:" $temp
#done 
