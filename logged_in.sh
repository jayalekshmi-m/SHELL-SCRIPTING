#!/bin/bash
if [ $# -eq 1 ]
then
    who > user.1st
    echo "$1 user logged at"
    grep -c $1 user.1st
else 
    echo "pls enter username"
fi

# number of terminals logged (exp 6)
