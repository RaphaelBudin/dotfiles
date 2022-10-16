#!/bin/bash

#Cria um .vimrc em branco se não existir
touch ~/.vimrc

#Instala Neovim no sistema (só com gerenciador de plugins e arquivo de configuração)
echo "Instalando NeoVim..."
sudo apt install neovim -y

echo "Instalando módulo Python no neovim..."
pip3 install --user neovim

echo "Instalando Gerenciando de Plugins 'vim-plug'"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Define se estrutura de diretórios está criada 
[[ ! -d "~/.config/"]] && mkdir ~/.config/
[[ ! -d "~/.config/nvim"]] && mkdir ~/.config/nvim
[[ ! -f "~/.config/nvim/init.vim"]] && mkdir ~/.config/nvim/init.vim

#Define arquivo de configuração do vim
initvim='~/.config/nvim/init.vim'

#Instala o vim-plug se não for encontrado && roda PlugInstall ao iniciar o vim
echo "Instala o vim-plug se não for encontrado..."
echo "\"Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

\"Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif" >> ~/.vimrc

#Cria seção de plugins no arquivo
echo "call plug#begin()" >> $initvim 
echo "call plug#end()" >> $initvim
