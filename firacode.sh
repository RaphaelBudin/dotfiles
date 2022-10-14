#!/bin/bash

$install = $1
$confirmation = $2

# Estou tentando instalar manualmente ambos
# Fazer método inteligente de descobrir se é apt ou pacman

#Caso seja APT
sudo apt install fonts-firacode -y

#Caso seja PACMAN
sudo pacman -S ttf-fira-code


