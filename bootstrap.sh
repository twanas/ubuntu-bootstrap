#!/bin/bash
##
# Ubuntu 18.04 bootstrap scripts
# based on ubuntu-bootstrap (https://github.com/deadbits/ubuntu-bootstrap)
# 
# Comment out any source action you dont want to use.
# View the README.md file for detailed information on the entire process and
# what each script does.
## 

# Require sudo
sudo -v
# sudo keepalive
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Ubuntu Boostrap (https://github.com/twanas/ubuntu-bootstrap)"
echo "***"
echo " "

sudo apt-get -qq install -y git
git clone https://www.github.com/twanas/ubuntu-bootstrap
cd ubuntu-bootstrap

clear

work=$HOME/bootstrap-temp
repo=`pwd`

# install system packages and settings
source $repo/core/system.sh

# install oh-my-fish and dotfile
source $repo/core/omf.sh

# install vim settings and colors
source $repo/core/vim.sh

# install tmux settings and colors
source $repo/core/tmux.sh

# install applications
source $repo/core/apps.sh

# install anydesk
source $repo/core/anydesk.sh
