#!/bin/bash
#Usage:used to find factorial	

factorial()		                     #factorial function
{

  if [ "$1" -gt "1" ]; theni p	   #checkng input is greter than 1 or not 

    temp=1			                    #initialising temperory variable

    for (( c=1; c<=$1; c++ ))
    do
        fact=`expr $c \* $temp`
        temp=$fact	               	#saving factorial value in temperory variable
    done

  else 
    temp=1
  fi

}



#while :
#do
  echo "Enter the series of number to calculate its factorial"
  echo "NOTE:Please give only 5 inputs with spaces"

  read a b c d e		#reading series of inputs

  array=( $a $b $c $d $e )     	#array initialisation

  factorial ${array[0]}         #function call with passing input
  val1=$temp                    #storing answer in temperory variable 

  factorial ${array[1]}
  val2=$temp

  factorial ${array[2]}
  val3=$temp

  factorial ${array[3]}
  val4=$temp

  factorial ${array[4]}
  val5=$temp

  echo "Factorial of the numbers for the given series of number is:"
  echo $val1 $val2 $val3 $val4 $val5 
#done 
