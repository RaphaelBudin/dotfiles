#Alguns programas podem aparecer em mais de uma lista
#Isso deve a possibilidade de desmembrar este script em scripts menores por categoria
#Assim, é necessário garantir que alguns programas (git por exemplo) estejam presentes no sistema

#Caso não deseje algum programa da lista, basta excluir a linha, ou comentá-la utilizando a cerquilha -> '#'

#--------------------------------------------------------- 
#		BÁSICO
#--------------------------------------------------------- 

echo ""
echo ""
echo ""
echo "INSTALANDO  ------- COMPONENTES BÁSICOS -------"
echo ""
echo ""
echo ""

#Habilita execução de todos os scripts da pasta
sudo chmod +x *.sh

#		Encontrar a mirror mais rápida do país
#echo "Encontrando mirror mais rápida do Brasil..."
#sleep 1
#sudo ./apt-select-config.sh

sleep 5 
sudo apt update -y && sudo apt upgrade -y
sleep 5 

#Instala terminal ZSH 
echo "Instalando ZSH..."
sudo ./zsh-install.sh

echo "Instalando Git..."
sudo apt install git -y

#Caso a distro não aceite snap (Mint), instala as configurações
echo "Verificando se distro já tem snap..."
sleep 1
sudo ./snap-config.sh

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

sudo apt install unzip -y

#Whatsapp Desktop
sudo apt install whatsapp-desktop -y

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
sudo ./github-desktop.sh

#Configura chaves SSh para adicionar no Github
echo "Configura chaves SSH para adicionar no Github"
sudo ./git-config.sh

#Instala Neovim
sudo ./neovim-install.sh

# Equivalente ao Oracle JDK para desenvolvimento Java
sudo apt install openjdk-8-jdk -y

#Instala o Sublime-Text última versão
sudo apt install sublime-text -y

# Visual Studio Code
sudo snap install --classic code -y

# DBeaver - Conexão com Banco de Dados
sudo apt install dbeaver-ce -y

#Instala Filezilla
sudo apt install filezilla -y

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
sudo apt install keepassxc -y
