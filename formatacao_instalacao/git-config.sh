#!/bin/bash

echo "Configurando sua chave SSH para Github..."
echo "Seu nome de usuário: "
read username
echo "Seu email: "
read email

git config --global color.ui true
git config --global user.name "$username"
git config --global user.email "$email"

#Gera chave SSH para adicionar no github
ssh-keygen -t rsa -b 4096 -C "$email"

#Abre na página de configuração do github
xdg-open https://github.com/settings/ssh/new

cat ~/.ssh/id_rsa.pub > ~/github-ssh-key
cat ~/github-ssh-key
echo "Adicione a chave SSH ao Github. Feito isso, digite qualquer coisa aqui"
read confirmacao
ssh -t git@github.com
echo "Git e Github configurados!"
sleep 5

