#!/bin/bash

#Instala ZSH e deixa como shell padrão do sistema
sudo apt install zsh -y

#Verifica versão 
zsh --version

#Adiciona o zsh a lista de shells permitidas
echo "/bin/zsh" >> /etc/shells

#A shell padrão é definida no arquivo de configurações do usuário
