#!/bin/bash
read -p "Enter two numbers" a b
m=$a 
if [ $b -lt $m ]
then 
    m=$b 
fi 
#to find gcd
while [ $m -gt 0 ]
do 
    x=$(($a % $m))
    y=$(($b % $m))
    if [ $x -eq 0 -a $y -eq 0]
    then 
        echo "GCD of $a and $b = $m"
        break
    fi
    m=$(($m - 1))
done 
# to find lcm 
l=$(($a \* $b / $m))
echo "LCM of $a and $b = $l"

# gcd and lcm(pgm 21)