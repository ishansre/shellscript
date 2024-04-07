#!/bin/sh


#create a file in 2 dir

#specify the dir path
dir1="/home/ubuntu/practice"
dir2="/home/ubuntu/practice1a"

#provide a filename
new_file="denver.txt"

#check if dir exists and then create a file
if [ -d "$dir1" ] && [ ! -f "$dir1/$new_file"  ]; then
	touch "$dir1/$new_file"
	echo "$new_file file created in $dir1"

elif [ ! "$dir1" ]; then
	echo "Error: $dir1 not exists"

else
	echo "$new_file file already exists in $dir1..."	
fi


if [ -d "$dir2" ] && [ ! -f "$dir2/$new_file" ]; then
        touch "$dir2/$new_file"
        echo "$new_file file created in $dir2"

elif [ ! "$dir2" ]; then
        echo "Error: $dir2 not exists"

else
	echo "$new_file file already exists in $dir2..."
fi

