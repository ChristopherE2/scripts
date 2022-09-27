#!/bin/bash
# Provides: ChristopherE2
# Description: Script para instalación de CCcam.Arm
# Version: 1.0
# Date: 27/09/2022

URL_BIN="https://github.com/ChristopherE2/CCcam/raw/main/Arm/CCcam.Arm"
URL_SCRIPT="https://github.com/ChristopherE2/CCcam/raw/main/Arm/softcam.CCcam.Arm"

ping -c 1 github.com
if [ $? -ne 1 ];
then
	echo "¡Conexión a internet OK!"
	## Bin Install ##
	cd /usr/bin
	wget $URL_BIN
	chmod 755 CCcam.Arm
	## Script Install ##
	cd /etc/init.d
	wget $URL_SCRIPT
	chmod 755 softcam.CCcam.Arm
	echo "¡Se ha instalado CCcam.Arm con éxito!"
	echo "Reiniciando decodificador en 5 ..."
	sleep 1s
	echo "                             4 ..."
	sleep 1s
	echo "                             3 ..."
	sleep 1s
	echo "                             2 ..."
	sleep 1s
	echo "                             1 ..."
	sleep 1s
	wget -O /dev/null -q http://127.0.0.1/web/powerstate?newstate=2
else
	echo "¡Conexión a internet NOK!"
fi
