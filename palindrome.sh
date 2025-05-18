#!/bin/bash
read -p "Enter a number:" num
temp=$num 
rev=0
while [ $num -gt 0 ]
do 
    r=$(($num % 10))
    rev=$(($rev * 10 + $r))
    num=$(($num/10))
done 
if [ $temp -eq $rev ]
then
    echo "$temp is a palindrome"
else 
    echo "$temp is not a palindrome"

# plaindrome checking of a number(pgm 16)