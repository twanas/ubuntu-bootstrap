#!/bin/bash

# download apt-key

sudo wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -

# add the repository:

sudo echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list

# update apt cache

sudo apt update

# install anydesk

sudo apt install anydesk
