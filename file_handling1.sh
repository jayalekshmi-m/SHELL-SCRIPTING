#!/bin/bash
read -p "Enter a filename" file1
echo "Enter contents of $file1:"
cat > $file1 
read -p "Enter an existing filename:" file2
echo "Displaying copy of contents from $file1 to $file2:"
cp $file1 $file2 
cat $file2

# input a page profile to yourself,copy it into another existing file(pgm 19-1)