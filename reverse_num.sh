#!/bin/bash
read -p "Enter a number" n
num=$n 
p=0 
while [ $n -gt 0 ]
do      
    l=$(($n % 10))
    p=$(($p * 10 + $l))
    n=$(($n / 10))
done 
echo "Reversed number is $p"

#reverse of a number(pgm 11)

