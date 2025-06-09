#!/bin/bash

read -p "enter a filename:" file1
echo "enter contents for $file1:"
cat>"$file1"
read -p "enter letter to search:" search
read -p "enter letter to replace:" word
read -p "enter file to copy:" file2
sed -i "s/$search/$word/g" "$file1"
echo "modifies content of $file1:"
cat "$file1"
cp "$file1" "$file2"
echo "copied to $file2:"
cat "$file2"
