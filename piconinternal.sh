#!/bin/bash
# Provides: ChristopherE2
# Description: Script para actualizaciones de picon /usr/share/enigma2
# Version: 2.0
# Date: 19/09/2022

URL_PICON="https://github.com/ChristopherE2/picon/archive/refs/heads/main.zip"

ping -c 1 github.com
if [ $? -ne 1 ];
then
	echo "¡Conexión a internet OK!"
	## Picon Remove ##
	rm -rf /usr/share/enigma2/picon
	## Picon Download ##
	cd /tmp
	wget $URL_PICON
	unzip main.zip
	mv picon-main picon
	## Picon Install ##
	mv /tmp/picon /usr/share/enigma2
	rm -rf /tmp/main.zip
	echo "¡Picons actualizados con éxito!"
else
	echo "¡Conexión a internet NOK!"
fi
