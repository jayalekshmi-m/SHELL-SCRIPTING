#!/bin/bash
echo "1001 RAM 97" >> myfile
echo "1002 NEHA 89" >> myfile
echo "1025 RAHUL 65" >> myfile
echo "1012 ARUN 99" >> myfile
echo "1013 NISHA 76" >> myfile

# Using the cat command to create myfile.(pgm 23-1)

echo "First two rows:"
head -2  myfile

# Print the first 2 rows of the file myfile.(pgm 23-2)

read -p "Enter start line: " start
read -p "Enter end line: " end
sed -n "${start},${end}p" myfile

# to print lines in a specific range

echo "Last 2 rows:"
tail -2 myfile 

# to print last 2 lines of the file(pgm 23-3)

cp myfle mycopyfile

# Copy the contents of “myfile” into another file called mycopyfile(pgm 23-4)

echo "Number of lines in file: $(wc -l < myfile)
echo "Number of wors in file: $(wc -w < myfile)
echo "Number of characters in file: $(wc -c < myfile)

# Count the number of lines, words, and characters of myfile.(pgm 23-5)

echo "third row"
sed -n '3p' myfile
# . Print the contents of the 3rd row only of the file myfile(pgm 23-6)

cat $myfile >> myappendfile
# Append the contents of myfile into a file called myappendfile without rewriting the contents of myappendfile.(pgm 23-7)

