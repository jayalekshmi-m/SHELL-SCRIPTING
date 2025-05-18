#!/bin/bash
read -p "Enter two numbers:" a b
read -p "Enter the operation:" op
while True 
do 
    case $op in 
        "+")
            ans=$(echo "$a+$b | bc)
            ;;
        "-")
            ans=$(echo "$a-$b | bc)
            ;;
        "*")
            ans=$(echo "$a*$b" | bc)
            ;;
        "/")
            ans=$(echo "$a/$b" | bc)
            ;;
        *)
            echo "Invalid operator"
            exit 1
            ;;
        esac
        echo "$a $op $b = $ans"
done

#simple calculator(pgm 5)