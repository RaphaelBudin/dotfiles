#!/bin/bash

#Instala Cryptomator
echo "Adicionando PPA do Cryptomator..."
sudo add-apt-repository ppa:sebastian-stenzel/cryptomator -y	
sudo apt-get update -y
sudo apt install cryptomator -y

echo "Cryptomator instalado!"
