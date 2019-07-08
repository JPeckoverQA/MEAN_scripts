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
sudo apt-get install -yg curl

#install wget
sudo apt install -yg wget

#install git
apt-get install -yg git-core


