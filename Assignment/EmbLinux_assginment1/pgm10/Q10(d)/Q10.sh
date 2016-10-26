#!/bin/bash

echo "Enter the name of directory"
read name
files=($(find /home/sois/))
tar cvfz $name.tar.gz "${files[@]}"
