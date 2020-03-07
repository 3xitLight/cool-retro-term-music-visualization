#!/bin/bash

#  https://github.com/Swordfish90/cool-retro-term
sudo pacman -S --needed --noconfirm qt5-base qt5-declarative qt5-quickcontrols qt5-graphicaleffects
git clone --recursive https://github.com/Swordfish90/cool-retro-term.git
cd cool-retro-term
qmake && make
cd ..

# https://github.com/arybczak/ncmpcpp
sudo pacman -S --needed --noconfirm libmpdclient curl taglib ncurses fftw boost-libs boost
git clone --recursive https://github.com/arybczak/ncmpcpp.git
cd ncmpcpp
./autogen.sh
./configure
make
sudo make install
cd ..

# https://github.com/karlstav/cava
sudo pacman -S --needed --noconfirm base-devel fftw ncurses alsa-lib iniparser pulseaudio
git clone --recursive https://github.com/karlstav/cava.git
cd cava 
./autogen.sh
./configure
make
sudo make install
cd ..

cp -r cava.config ~/.config/cava/config
cp -r  cool-retro-term/  ~/
cp -r  red.json ~/cool-retro-term/
