#!/bin/bash

#Temas Flat-Remix
[[ ! -d "~/.icons/" ]] && mkdir ~/.icons/ && echo "Pasta .icons criada!"
cd ~/.icons/
git clone https://github.com/daniruiz/flat-remix.git
unzip flat-remix-master.zip
rm flat-remix-master.zip
cp -r ~/.icons/flat-remix/Flat-Remix-Blue-Dark ~/.icons/ 

