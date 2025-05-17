#!/bin/bash
read -p "enter a directory" dir
direct="/home/mca/$dir"
if [ -d $direct ]
then 
    num_files=$(find $direct -type f | wc -l)
    echo "$num_files files in $direct"
else 
    echo "not a directory"
fi 

# to check a file is a directory or not(pgm 9)
