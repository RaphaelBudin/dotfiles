#!/bin/bash

# comando do gerenciador de pacotes para instalação (apt ou pacman)
install=$1
# pular confirmação na hora da instação
confirmation=$2
#comando de update
update=$3
#comando de upgrade
upgrade=$4


#Instala ZSH e deixa como shell padrão do sistema
sudo $install $confirmation zsh 

#Verifica versão 
zsh --version

#Adiciona o zsh a lista de shells permitidas
#echo "/bin/zsh" >> /etc/shells

#Necessário encerrar a sessão e voltar após isso

#Adiciona o Oh-my-ZSH automaticamente
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

chsh -s $(which zsh)

#Instalando para todos os usuários do computador
make install
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
