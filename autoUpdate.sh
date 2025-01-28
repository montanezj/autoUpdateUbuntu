#!/bin/bash

# Update the package list
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Optionally, you can also run a distribution upgrade if you want to
# sudo apt dist-upgrade -y

# Clean up unnecessary packages and dependencies
sudo apt autoremove -y
sudo apt clean
