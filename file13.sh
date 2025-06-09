#!/bin/bash

read -p "enter the directory name:" dir
if [ ! -d "$dir" ]; then
echo "directory doesnt exist,creating $dir"
mkdir "$dir"
else
echo "directory already exists"
fi

read -p "enter the filenames to move(space-separated):" files

for file in $files
do
if [ -e "$file" ]; then
mv "$file" "$dir/"
echo "moved $file to  $dir/"
else
echo "warning,file not exist"
fi
done

echo "contents of $dir:"
ls "$dir"
