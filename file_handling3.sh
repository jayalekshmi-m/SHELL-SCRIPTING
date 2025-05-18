#!/bin/bash
read -p "Enter first filename:" file1
read -p "Enter second filename:" file2
read -p "Enter third filename:" file3
echo "Enter contents of $file1:"
cat > $file1 
echo "Enter contents of $file2" 
cat > $file2 
echo "Difference of $file1 and $file2 saved in $file3"
# to know difference 
diff -a $file1 $file2 > $file3
cat $file3 

# print all difference between 2 files and copy that diff into another  file(pgm 19-3)