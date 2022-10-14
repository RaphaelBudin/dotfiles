#!/bin/bash

#Pega o melhor mirror para download
curl -s http://mirrors.ubuntu.com/mirrors.txt | xargs -n1 -I {} sh -c 'echo `curl -r 0-1024000 -s -w %{speed_download} -o /dev/null {}/ls-lR.gz` {}' |sort -g -r |head -1| awk '{ print $2  }'

#Necessário atualizar o sistema antes
sudo apt update -y
sudo apt upgrade -y
