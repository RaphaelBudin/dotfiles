#!/bin/bash

#GitHub desktop

# comando do gerenciador de pacotes para instalação (apt ou pacman)
install=$1
# pular confirmação na hora da instação
confirmation=$2
#comando de update
update=$3
#comando de upgrade
upgrade=$4


echo "Habilitando Github-Desktop"
sudo wget -qO - https://mirror.mwt.me/ghd/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null

sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftkey-desktop.list'

#sudo $update $confirmation && sudo $install github-desktop $confirmation $$ echo "Github-Desktop instalado!"
sudo apt update -y && sudo apt upgrade -y $$ 
sudo apt install github-desktop -y
