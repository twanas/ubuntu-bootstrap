#!/bin/bash

echo "[ Zero-tier setup ]"
echo ""
echo "Install zero-tier vpn client? (y/n): "
read install_zerotier

if [[ $install_zerotier == "y" || $install_zerotier == "Y" || $install_zerotier == "yes" ]]; then
    echo "** Installing Zerotier VPN Client **"
    curl -s https://install.zerotier.com | sudo bash
fi
