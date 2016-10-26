#!/bin/bash
#usage:display softlinks 

echo "hello"
ln -s pgm3.sh pgm3sft.sh         	#creating a softlink
ls -l | grep ^l				#display all softlinks
