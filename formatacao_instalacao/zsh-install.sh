#!/bin/bash

# comando do gerenciador de pacotes para instalação (apt ou pacman)
$install=$1
# pular confirmação na hora da instação
$confirmation=$2
#comando de update
$update=$3
#comando de upgrade
$upgrade=$4


#Instala ZSH e deixa como shell padrão do sistema
sudo $install zsh $confirmation

#Verifica versão 
zsh --version

#Adiciona o zsh a lista de shells permitidas
echo "/bin/zsh" >> /etc/shells

#A shell padrão é definida no arquivo de configurações do usuário
