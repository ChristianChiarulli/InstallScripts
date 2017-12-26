#!/bin/bash

printf "Hello $USER, this install script will install Docker for Debian 9\n\n"

sudo apt-get remove docker docker-engine docker.io

sudo apt update
 
sudo apt install apt-transport-https 
sudo apt install ca-certificates 
sudo apt install curl
sudo apt install gnupg2
sudo apt install software-properties-common

curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg | sudo apt-key add -


printf "\nVerify you have the key will the following fingerprint: 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88\n"

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release;
echo "$ID") \
     $(lsb_release -cs) \
        stable"

sudo apt update

sudo apt install docker-ce

printf "run: <sudo docker run hello-world> to verify installation\n"

# This is to add docker as a group
sudo groupadd docker

# this is so you won't have to run sudo docker on every install

sudo usermod -aG docker $USER

printf "\nto enable Docker on startup run <sudo systemctl enable docker>\n\n to
disable replace 'enable' with 'disable' "
