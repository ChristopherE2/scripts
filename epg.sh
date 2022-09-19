#!/bin/bash
# Provides: ChristopherE2
# Description: Script para actualización de mhw_equiv
# Version: 2.0
# Date: 19/09/2022

URL_EPG="https://raw.githubusercontent.com/ChristopherE2/epg/main/mhw_Equiv.epg"

ping -c 1 github.com
if [ $? -ne 1 ];
then
	echo "¡Conexión a internet OK!"
	## MHW_equiv Remove ##
	rm -rf /etc/mhw_Equiv.epg
	## MHW_equiv Download/Install ##
	cd /etc
	wget $URL_EPG
	echo "¡Se ha actualizado mhw_equiv con éxito!"
else
	echo "¡Conexión a internet NOK!"
fi
