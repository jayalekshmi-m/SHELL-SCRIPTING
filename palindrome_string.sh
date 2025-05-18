#!/bin/bash
read -p "Enter a string:" str
# to reverse the string
rev=$(echo "$str" | rev)
if [ "$str" == "$rev ]
then 
    echo "'$str' is a palindrome"
else 
    echo "'$str' is not a palindrome"
fi

# to check palindrome using string
