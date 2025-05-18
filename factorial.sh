#!/bin/bash
read -p "Enter a number:" num
sum=1
for((i=1;i<=num;i++))
do 
    sum=$((sum*i))
done 
echo "Factorial is: $sum"

# factorial of  a number(pgm 15)