#!/bin/bash
read -p "Enter the limit:" l
f1=0
f2=1
f3=0
i=0
while [ $i -lt l ]
do 
    f3=(($f1+$f2))
    echo "$f1"
    f1=$f2 
    f2=$f3 
    i=(($i+1))
done 

# to generate fibonacci series(pgm 17)