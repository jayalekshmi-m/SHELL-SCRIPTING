#!/bin/bash

if [ $# -ne 2 ]; then
echo "usage:$0 <source_file> <destination_file>"
exit
fi

source_file=$1
dest_file=$2

if [ ! -e "$source_file" ]; then
echo "error:source file $source_file does not exist"
exit 1
fi

cp "$source_file" "$dest_file"

if [ $? -eq 0 ]; then
echo "file copied successfully"
cat "$dest_file"
else
echo "error"
exit 1
fi
