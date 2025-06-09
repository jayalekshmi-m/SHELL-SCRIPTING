#!/bin/bash

read -p "enter a string:" str
str=$(echo "$str" | tr 'A-Z' 'a-z')
vowel_count=0;
consonant_count=0;

for((i=0;i<${#str};i++))
do
char=${str:$i:1}

if [[ $char =~ [aeiou] ]]; then
((vowel_count++))
elif [[ $char =~ [a-z] ]]; then
((consonant_count++))
fi
done

echo "vowels:$vowel_count"
echo "consonants:$consonant_count"
