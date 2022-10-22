#!/bin/bash
# Provides: ChristopherE2
# Description: Script para actualización de epg mips
# Version: 1.0
# Date: 22/10/2022

ping -c 1 github.com
if [ $? -ne 1 ];
then
	echo "¡Conexión a internet OK!"
	##Files Download##
	cd /tmp
	wget https://github.com/ChristopherE2/crossepg/raw/main/mips.zip
	unzip mips.zip
	##Providers Install##
	mv /tmp/mips/providers/movistarepgprovider.conf /usr/crossepg/providers
	##Scripts Install##
	mv /tmp/mips/scripts/movistarepgdownload /usr/crossepg/scripts
	chmod 777 /usr/crossepg/scripts/movistarepgdownload/movistarepgdownload
	chmod 777 /usr/crossepg/scripts/movistarepgdownload/movistarepgdownload.sh
	##Crossepg.config Install##
	mv /tmp/mips/crossepg.config /usr/crossepg
	echo "¡epg actualizado con éxito!"
else
	echo "¡Conexión a internet NOK!"
fi
