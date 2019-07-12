#!/bin/bash

#installs MEAN stack and launches a project

export project_name=PoolManager

export backend_giturl=https://github.com/Nboaram/TeamAPoolProjectBackend.git
export backend_directory=TeamAPoolProjectBackend
export backend_branch=Developer
export backend_runfile=index.js

export frontend_giturl=https://github.com/Nboaram/TeamAPoolProjectUI.git
export frontend_directory=TeamAPoolProjectUI
export frontend_branch=Developer

#update
sudo apt update -y
sudo apt upgrade -y

#install curl
sudo apt-get install -y curl

#install wget
sudo apt install -y wget


#create project directory
echo "*****creating project directory*****"
mkdir ~/${project_name}

#install nodejs
echo "*****installing nodejs*****"
sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
node --version
yes | npm --version

sudo chmod +x *.sh
echo "*****launching backend*****"
./backend.sh

echo "*****launching frontend*****"
./frontend.sh

