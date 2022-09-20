#!/bin/bash
# Provides: ChristopherE2
# Description: Script para actualizaciones de scripts
# Version: 1.1
# Date: 20/09/2022

URL_UPDATE="https://raw.githubusercontent.com/ChristopherE2/update/main/update.sh"

ping -c 1 github.com
if [ $? -ne 1 ];
then
	echo "¡Conexión a internet OK!"
	## Scripts Remove ##
	rm -rf /etc/init.d/update.sh
	## Scripts Install ##
	cd /etc/init.d
	wget $URL_UPDATE
	chmod 755 update.sh
	echo "¡Script update actualizado con éxito!"
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
