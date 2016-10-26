#!/bin/bash

echo "Enter the name of directory"
read name

files=($(find /home/sois/))
zip -r $name.zip "${files[@]}"
