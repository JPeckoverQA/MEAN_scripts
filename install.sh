#!/bin/bash

#installs MEAN stack and launches a project

set frontend_giturl="https://github.com/Nboaram/TeamAPoolProjectUI.git"
setfrontend_directory="TeamAPoolProjectUI"
set frontend_branch="Developer"

#update
sudo apt update

#install curl
sudo apt-get install -y curl

#install wget
sudo apt install -y wget

echo "launching backend"
./backend.sh


