#!/bin/zsh
#Turorial baseado em https://github.com/asdf-vm/asdf-ruby
sudo apt-get install autoconf bison patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

echo ". $HOME/.asdf/asdf.sh" >> ~/.zshrc

sudo apt-get install dirmngr gpg curl gawk

asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git

asdf install ruby latest

asdf global ruby
asdf global nodejs
asdf global yarn

echo "ALTERAR ARQUIVO .asdfrc na HOME"
echo "legacy_version_file = yes"
echo "legacy_version_file = yes" >> ~/.asdfrc

gem install rails
