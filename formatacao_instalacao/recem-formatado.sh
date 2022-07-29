#Alguns programas podem aparecer em mais de uma lista
#Isso deve a possibilidade de desmembrar este script em scripts menores por categoria
#Assim, é necessário garantir que alguns programas (git por exemplo) estejam presentes no sistema

#Caso não deseje algum programa da lista, basta excluir a linha, ou comentá-la utilizando a cerquilha -> '#'

#--------------------------------------------------------- 
#		BÁSICO
#--------------------------------------------------------- 

# comando do gerenciador de pacotes para instalação (apt ou pacman)
install=$1
# pular confirmação na hora da instação
confirmation=$2
#comando de update
update=$3
#comando de upgrade
upgrade=$4

echo ""
echo ""
echo ""
echo "INSTALANDO  ------- COMPONENTES BÁSICOS -------"
echo ""
echo ""
echo ""


#Instala terminal ZSH 
echo "Instalando ZSH..."
sudo ./zsh-install.sh $install $confirmation $update $upgrade

echo "Instalando Git..."
sudo $install git $confirmation

#Caso a distro não aceite snap (Mint), instala as configurações
echo "Verificando se distro já tem snap..."
sleep 1
sudo ./snap-config.sh $install $confirmation $update $upgrade

echo ""
echo "Corrigindo Erro de Horário em caso de Dual Boot..."
sleep 1
timedatectl set-local-rtc 1 --adjust-system-clock
echo "Feito!"
echo ""

#--------------------------------------------------------- 
#		UTILIDADES
#--------------------------------------------------------- 
echo ""
echo ""
echo ""
echo "INSTALANDO  ------- UTILIDADES ------- "
echo ""
echo ""
echo ""

sudo $install unzip $confirmation

#Whatsapp Desktop
sudo $install whatsapp-desktop -y

#Skype
sudo snap install skype -y

#---------------------------------------------------------
#		PROGRAMAÇÃO
#--------------------------------------------------------- 

echo ""
echo ""
echo ""
echo "INSTALANDO  ------- PROGRAMAÇÃO ------- "
echo ""
echo ""
echo ""

#Instala Github Desktop
sudo ./github-desktop.sh $install $confirmation $update $upgrade

#Configura chaves SSh para adicionar no Github
echo "Configura chaves SSH para adicionar no Github"
sudo ./git-config.sh $install $confirmation $update $upgrade

#Instala Neovim
sudo ./neovim-install.sh $install $confirmation $update $upgrade

# Equivalente ao Oracle JDK para desenvolvimento Java
sudo $install openjdk-8-jdk $confirmation

# #Instala o Sublime-Text última versão
sudo $install sublime-text $confirmation

# Visual Studio Code
sudo snap install --classic code

# DBeaver - Conexão com Banco de Dados
sudo $install dbeaver $confirmation

#Instala Filezilla
sudo $install filezilla $confirmation

#--------------------------------------------------------- 
#		DIVERSOS
#--------------------------------------------------------- 

echo ""
echo ""
echo ""
echo "INSTALANDO  ------- DIVERSOS ------- "
echo ""
echo ""
echo ""

# Gerenciador de senhas criptografado
sudo $install keepassxc $confirmation