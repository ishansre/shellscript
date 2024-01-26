#!/bin/sh


#create a file in 2 dir

#specify the dir path
dir1="/home/ubuntu/practice"
dir2="/home/ubuntu/practice1a"

#provide a filename
new_file="denver.txt"

#check if dir exists and then create a file
if [ -d "$dir1" ]; then
	touch "$dir1/$new_file"
	echo "File created in $dir1"
else
	echo "Error: $dir1 not exists"
fi

if [ -d "$dir2" ]; then
        touch "$dir2/$new_file"
        echo "File created in $dir2"
else
        echo "Error: $dir2 not exists"
fi

