#!/bin/bash

read -p "enter a number" num
 num1=$num
sum=0

for((i=1;i<num;i++))
do
if [ $((num % i)) == 0 ]; then
sum=$((sum+i))
fi
done

if [ $sum -eq $num1 ]; then
echo "$num1 is a perfect number"
else
echo "not perfect"
fi

