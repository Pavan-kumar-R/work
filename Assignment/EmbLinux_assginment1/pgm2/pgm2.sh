#!/bin/bash

echo -n "please enter the base and height of the triangle:"

read base
read height

area=`expr "scale=2; 1/2*$base*$height" | bc`
echo "area of the triangle=$area"
