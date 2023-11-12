#!/bin/bash

# List of packages to install
packages=(
sssd-ad
sssd-tools
realmd
adcli
)

# Update package list and install packages
sudo apt update
sudo apt install -y "${packages[@]}"