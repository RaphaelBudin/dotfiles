#!/bin/bash

#Adiciona o usuário (sistemas Arch Based) 
#sudo usermod -aG weel "$USER" wheel 

# =================================================
#  ZSH 
# =================================================
#Define a ZSH como shell principal
chsh -s $(which zsh)

# =================================================
#  VIM E NEOVIM 
# =================================================

#Define arquivo de configuração do vim
initvim='~/.config/nvim/init.vim'
export EDITOR=vim

#Instala alguns plugins que acho útil

echo "Plug 'roxma/nvim-completion-manager'" >> $initvim
echo "Plug 'SirVer/ultisnips'" >> $initvim
echo "Plug 'honza/vim-snippets'" >> $initvim
echo "Plug 'brooth/far.vim'" >> $initvim
