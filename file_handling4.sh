#!/bin/bash
read -p "Enter filename" file1
echo "enter contents of $file1"
cat > $file1 
read -p "Enter a pattern to search in file" s
# searching for match
grep -ni $s $file1 

# print lines matching certain word pattern(pgm 19-4)