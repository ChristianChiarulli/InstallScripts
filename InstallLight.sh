!#/bin/bash

printf "Run this with . ./\n\n"
printf "This prgram will install light I use it for dimming my screen in i3\n"

# Dependency
sudo apt install help2man

cd /opt

sudo git clone https://github.com/haikarainen/light.git

cd light/

sudo make

sudo make install


