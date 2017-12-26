#!/bin/bash

printf "\nHello $USER this program will install Cava an audio visulaizer run with . ./\n"

cd /opt

sudo apt install -y libfftw3-dev libasound2-dev libncursesw5-dev libpulse-dev libtool

sudo git clone https://github.com/karlstav/cava.git

sudo apt install -y automake
sudo apt install -y libtool

cd cava

sudo ./autogen.sh
sudo ./configure

sudo make

sudo make install

cd ~
