#!/bin/bash
DIR=vamsi
if [ -d "$DIR" ]; then
echo "$DIR exists"
else
echo "$DIR does not exist"
fi

#list the files in a dir if dir exists

#!/bin/bash
DIR=rathi
if [ -d "$DIR" ]; then
echo "$DIR exists and files in a directory is $(ls -l $dir)" 
else
echo "$DIR does not exist"
fi
