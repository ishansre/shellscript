#!/bin/bash

#Number of cpu 

check_cpu(){
	echo "Number of CPU"
	nproc
}


#Check memory usage

check_memory(){
	echo "Memory usage"
	free -g
}


#Check disk usage

check_disk(){
	echo "Disk space"
	df -h
}

check_cpu
echo "-------------"

check_memory
echo "-------------"

check_disk
echo "-------------"
