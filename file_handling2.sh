#!/bin/bash
read -p "Enter a filename" file1
echo "Enter contents of $file1:" 
cat > $file1 
read -p "Enter line number:" l
echo "Start printing from line $l:"
tail +$l $file1

# start printing file at certain line(pgm 19-2)