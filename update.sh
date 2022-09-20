#!/bin/bash
# Provides: ChristopherE2
# Description: Script para actualizaciones de scripts
# Version: 2.1
# Date: 20/09/2022

URL_EPG="https://raw.githubusercontent.com/ChristopherE2/update/main/scripts/epg.sh"
URL_PICON="https://raw.githubusercontent.com/ChristopherE2/update/main/scripts/picon.sh"
URL_PICONINTERNAL="https://raw.githubusercontent.com/ChristopherE2/update/main/scripts/piconinternal.sh"
URL_ASTRA="https://raw.githubusercontent.com/ChristopherE2/update/main/scripts/astra.sh"
URL_ASTRAHOTBIRD="https://raw.githubusercontent.com/ChristopherE2/update/main/scripts/astra-hotbird.sh"

ping -c 1 github.com
if [ $? -ne 1 ];
then
	echo "¡Conexión a internet OK!"
	## Scripts Remove ##
	rm -rf /usr/script/*
	## Scripts Install ##
	cd /usr/script
	wget $URL_EPG
	wget $URL_PICON
	wget $URL_PICONINTERNAL
	wget $URL_ASTRA
	wget $URL_ASTRAHOTBIRD
	chmod 755 /usr/script/*
	echo "¡Scripts actualizados con éxito!"
else
	echo "¡Conexión a internet NOK!"
fi
