#!/bin/bash

read -p "enter a filename:" filename
if [ ! -e "$filename" ]; then
echo "error,filenot found"
exit 1
fi

while true
do
echo "1.search and display lines matching a pattern"
echo "2.display lines that start with a particular word"
echo "3.count and display the number of lines containing a word"
echo "4.exit"
read -p "enter your choice" ch
case $ch in
1)read -p "enter the pattern to search:" pattern
echo "matching lines:"
grep "$pattern" "$filename";;
2)read -p "enter the starting word:" start
echo "lines starting with $start:"
grep "^$start" "$filename";;
3)read -p "enter the word to count:" word
count=$(grep -c "$word" "$filename")
echo "number of lines containing $word:$count";;
4)break;;
*)echo "invalid choice"
esac
read -p "do u want to continue(y/n)?:" cont
if [[ "$cont" != "y" && "$cont" != "Y" ]]; then
echo "goodbye"
break
fi
done



