#!/bin/bash

echo "Enter the name of directory"
read name
files=($(find /home/sois/))
bzip2 $name.zip "${files[@]}"
