#!/bin/bash
read -p "Enter a string:" s
l=${#s}
ns=""
for i in $(seq $l -1 1)
do 
    a=$(expr substr "$s" $i 1)
    ns="$ns$a"
done 
echo "reversed string is : $ns"

# to reverse a given string(pgm 18)