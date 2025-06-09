#!/bin/bash

read -p "enter a filename:" filename
if [ ! -e "$filename" ]; then
echo "file does not exist,creating file $filename"
touch "$filename"
else
echo "file already exist"
fi

echo "current contents of $filename:"
cat "$filename"

echo "enter text to append to file:"
cat>>"$filename"

echo "updated content of $filename:"
cat "$filename"

