#!/bin/bash
#created file in local
file=wastefile
# -e it checks wether file exists on ur local
if [ -e "$file"]; then 
echo "file exists"
# ls will give you the list of files & awk will print the specific column
ls -l $file | awk '{print $1}'
else
echo "file does not exist"
fi
