#!/bin/bash
# Provides: ChristopherE2
# Description: Script para instalación de CCcam.Mips
# Version: 1.0
# Date: 27/09/2022

URL_BIN="https://github.com/ChristopherE2/CCcam/raw/main/Mipsel/CCcam.Mips"
URL_SCRIPT="https://github.com/ChristopherE2/CCcam/raw/main/Mipsel/softcam.CCcam.Mips"
URL_LIB="https://github.com/ChristopherE2/CCcam/raw/main/Mipsel/libgcc_s.so.1"

ping -c 1 github.com
if [ $? -ne 1 ];
then
	echo "¡Conexión a internet OK!"
	## Bin Install ##
	cd /usr/bin
	wget $URL_BIN
	chmod 755 CCcam.Mips
	## Script Install ##
	cd /etc/init.d
	wget $URL_SCRIPT
	chmod 755 softcam.CCcam.Mips
	## Lib Install ##
	cd /lib
	wget $URL_LIB
	echo "¡Se ha instalado CCcam.Mips con éxito!"
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
