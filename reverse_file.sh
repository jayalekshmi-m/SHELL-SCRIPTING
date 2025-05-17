#!/bin/bash
if[ $# -eq 1 ]
    echo "Reverse of $1"
    cat $1
    echo "->"
    tac $1
else 
    echo "Not a file"
    echo "enter a filename
fi

# Reverse content of a file(pgm 7)