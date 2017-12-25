#!/bin/bash

# This scripts will install the VPN PIA 
# Edit the line of code to match your version

printf "Make sure you have a version of PIA in your Downloads directory that
matches the version of PIA in this script\n\n"

cd ~/Downloads

# Change these if install fails
tar -xzf pia-v75-installer-linux.tar.gz && ./pia-v75-installer-linux.sh ||
  printf "\nCheck your version of PIA in the install script\n\n"

set -e

sudo apt update
sudo apt upgrade


