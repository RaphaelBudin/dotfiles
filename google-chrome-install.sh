#!/bin/bash

#Instalação Google Chrome
echo "Instalando o Google Chrome..."

echo "Baixando o arquivo .deb"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

echo "Instalando localmente"
sudo apt install ./google-chrome-stable_current_amd64.deb -y

echo "Removendo o instalador"
rm google-chrome-stable_current_amd64.deb #exclui instalador após finalizar

echo "Google Chrome instalado!"
