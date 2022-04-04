#!/bin/bash
# Script num 1
#David Suner


if (( $EUID != 0 )) # $EUID = 0 if you are running the script with root privileges
then
  echo "This script must be run as a root"
  exit 1 
fi

function mostra_serveis(){
	clear
	echo "Quien servei vols iniciar? ( inserir número): "
	echo "1: cups"
	echo "2: ssh"
	echo "3: apache2"
	read servei
}

function ctrl_servei(){
	clear
	case $servei in
		"1")
				sudo systemctl start cups.service
				echo "El servei cups està iniciat"
				exit 0
				;;
				
		"2")
				sudo systemctl start ssh.service
				echo "El servei ssh està iniciat"
				exit 0
			;;
		
		"3")
				sudo systemctl start apache2.service
				echo "El servei apache2 està iniciat"
				exit 0
			;;
		*)
			echo "Selecciona una opció correcte"
			exit 1
	esac
}
mostra_serveis
ctrl_servei
exit 0
