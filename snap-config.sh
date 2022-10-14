#!/bin/bash

# comando do gerenciador de pacotes para instalação (apt ou pacman)
install=$1
# pular confirmação na hora da instação
confirmation=$2
#comando de update
update=$3
#comando de upgrade
upgrade=$4

#Verifica se a distro é Ubuntu
distro=$(cat /etc/issue)
SUB='Ubuntu'
if [[ "$distro" == *"$SUB"* ]]; then
	echo "Sistema ubuntu já tem snap instalado"
	exit
fi

#Remove restrição ao snap no Mint
echo "Revovendo restrição do SNAP no sistema..."
sudo rm /etc/apt/preferences.d/nosnap.pref 

echo "Atualizando pacotes..."
sudo $update $confirmation

echo "Instalando snapd..."
sudo $install snapd $confirmation

echo "Habilitando socket do snapd"
sudo systemctl enable --now snapd.socket

echo "Habilitando suporte SNAP CLASSIC..."
sudo ln -s /var/lib/snapd/snap /snap

echo "Insalando Snap Classic"
sudo snap install classic --beta

echo "Instalando snap-store"
sudo snap install snap-store -y
