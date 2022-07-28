echo "Seu gerenciador de pacotes é o APT(1) ou Pacman(2)?"
read opt

if [[ $opt -eq '1' ]]; then
	install='apt install'
    confirmation='-y'
    update='apt update'
    upgrade='apt upgrade'
elif [[ $opt -eq '2' ]]; then
	install='pacman -S'
    confirmation='--noconfirm'
    update='pacman -Sy'
    upgrade='pacman -Syu'
else
	echo "Opção inválida..."
	exit
fi

#Habilita execução de todos os scripts da pasta
sudo chmod +x *.sh

#Atualiza o sistema
sudo $update $confirmation && sudo $upgrade $confirmation

#Inicia o script principal
sudo ./recem-formatado.sh $install $confirmation $update $upgrade