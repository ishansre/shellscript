#!/bin/bash


<< task 
Deploy Django app using shell scripting
task


code_clone(){
	echo "***************Cloning django app...******************"
	git clone https://github.com/ishansre/django-todo.git
}

install_requirements(){
	echo "****************Installing dependencies****************"
	sudo apt-get update
	sudo apt-get install docker.io nginx -y

}

required_restart(){
	echo "***************Restarting dependencies*****************"
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

code_deploy(){
	echo "***********RUNNING DOCKER***************"
	docker build -t django-todo .
	docker run -d -p 8000:8000 django-todo:latest

}

echo "**************DEPLOYMENT STARTED****************"

if ! code_clone; then
	echo "****************CODE EXIST*******************"
	cd /home/ubuntu/shellscript/django-todo
fi

if ! install_requirements; then
	echo "****************INSTALLATION FAILED********************"
	exit 1
fi

if ! required_restart; then
	echo "****************SYSTEM FAULT*****************"
	exit 1
fi

if ! code_deploy; then
	echo "*************DEPLOYMENT FAILED********************"
	exit 1
fi
echo "**************DEPLOYMENT DONE*******************"
