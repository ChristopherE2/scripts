#!/bin/bash
# Provides: ChristopherE2
# Description: Script para actualizaciones de scripts
# Version: 1.0
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
else
	echo "¡Conexión a internet NOK!"
fi
