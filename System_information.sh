#!/bin/bash
echo  "Show all users login"
who
echo "Count of all login name:"
who | wc -l

# showing the count of users logged in(pgm 20-1)

#!/bin/bash
echo "Print 3 coloumns in a home directory"
ls -l | cut -c 17-24,39-50,56-

# printing col list in ur home directory(pgm 20-2)


#!/bin/bash
echo "List of below priority jobs"
ps -al | cut -c 16-19,70-

#listing ur job with below normal priority