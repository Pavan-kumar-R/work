#!/bin/sh
echo "Towers of Hanoi. How many disks? "
read disk
for (( x=1; x < (1 << $disk ); x++ )) ; 
do
  i=$((($x & $x - 1 ) % 3))
  j=$(((($x | $x - 1 ) + 1 ) % 3))
  echo "Move from tower $i to tower $j"
done