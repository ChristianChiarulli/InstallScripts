!#/bin/bash

#set -e

printf "\nHello $USER this an unoffical install script for i3gaps for Debian
run with . ./\n"

sudo apt install -y i3

sudo apt install -y libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb
libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev
libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev
libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev

cd /opt

# clone the repository
sudo git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
sudo autoreconf --force --install
sudo rm -rf build/
sudo mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
sudo ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

cd ~
