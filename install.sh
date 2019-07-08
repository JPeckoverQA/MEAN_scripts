#!/bin/bash

#installs MEAN stack and launches a project

backend_runfile = "index.js"
backend_giturl="https://github.com/Nboaram/TeamAPoolProjectBackend.git"
backend_directory="TeamAPoolProjectBackend"
backend_branch="Developer"

frontend_giturl="https://github.com/Nboaram/TeamAPoolProjectUI.git"
frontend_directory="TeamAPoolProjectUI"
frontend_branch="Developer"

#update
sudo apt update

#install curl
sudo apt-get install -y curl

#install wget
sudo apt install -y wget


./backend.sh


