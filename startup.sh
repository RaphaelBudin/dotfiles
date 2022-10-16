!#/bin/bash

#Inicia o servidor PostgreSQL junto com o sistema
#echo "Iniciando postgres"
#sudo systemctl start postgresql.service

#Para pausar o servidor
#sudo systemctl stop postgresql.service

#Para teclados que não possuem as teclas \ e | 
~/github/dotfiles/map_kb_keys.sh

#Teclados que o RGB é ativado na tecla scroll lock precisa do comando abaixo para ativar
xset led named "Scroll Lock"
# Para desativar, insira o comando abaixo:
# xset -led named "Scroll Lock"
