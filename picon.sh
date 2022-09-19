#!/bin/bash
# Provides: ChristopherE2
# Description: Script para actualizaciones de picon /media/hdd
# Version: 2.0
# Date: 19/09/2022

URL_PICON="https://github.com/ChristopherE2/picon/archive/refs/heads/main.zip"

ping -c 1 github.com
if [ $? -ne 1 ];
then
	echo "¡Conexión a internet OK!"
	## Picon Remove ##
	rm -rf /media/hdd/picon
	## Picon Download ##
	cd /media/hdd
	wget $URL_PICON
	unzip main.zip
	## Picon Install ##
	mv picon-main picon
	rm -rf /media/hdd/main.zip
	echo "¡Picons actualizados con éxito!"
else
	echo "¡Conexión a internet NOK!"
fi
