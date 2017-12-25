#!/bin/bash

printf "Run with . ./\n"

sudo mkdir /opt/popcorn-time

sudo wget -qO- https://get.popcorntime.sh/build/Popcorn-Time-0.3.10-Linux-64.tar.xz | sudo tar Jx -C /opt/popcorn-time

sudo ln -sf /opt/popcorn-time/Popcorn-Time /usr/bin/popcorn-time

printf "insert the following in /usr/share/applications/popcorntime.desktop
\n\n 
[Desktop Entry]\n
Version = 1.0\n
Type = Application\n
Terminal = false\n
Name = Popcorn Time\n
Exec = /usr/bin/popcorn-time\n
Icon = /opt/popcorn-time/popcorntime.png\n
Categories = Application;\n"

sudo touch /usr/share/applications/popcorntime.desktop

cd /usr/share/applications/

printf "\n Getting logo\n"

sudo wget -q -O /opt/popcorn-time/popcorntime.png https://upload.wikimedia.org/wikipedia/commons/6/6c/Popcorn_Time_logo.png

cd ~
