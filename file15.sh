#!/bin/bash

read -p "enter a filename:" file1
echo "enter contents for $file1:"
cat>"$file1"
read -p "enter filename to copy:" file2
cp "$file1" "$file2"
content=$(cat "$file2")
count=0
for((i=0;i<=${#content};i++))
do
ch="${content:$i:1}"
if [[ "$ch" =~ [aeiou] ]]; then
((count++))
fi
done

echo "copied file:"
cat "$file2"
echo "number of vowels in $file2 is $count"
