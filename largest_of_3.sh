#!/bin/bash

read -p "enter 3 Numbers:" a b c
 if [ $a -gt $b ]   && [ $a -gt $c ]
 then 
 	echo $a "is the greatest"
 elif [ $b -gt $c ]
 then
 	echo $b "is the greatest"
 else
 	echo $c "is the greatest"
 fi
# largest among 3 numbers (exp 5)