#!/bin/bash
# Provides: ChristopherE2
# Description: Script para actualización de epg arm
# Version: 1.1
# Date: 12/11/2022

ping -c 1 github.com
if [ $? -ne 1 ];
then
	echo "¡Conexión a internet OK!"
	##Files Download##
	cd /tmp
	wget https://github.com/ChristopherE2/crossepg/raw/main/arm.zip
	unzip arm.zip
	##Providers Install##
	rm -rf /usr/crossepg/providers/movistarepgprovider.conf
	mv /tmp/arm/providers/movistarepgprovider.conf /usr/crossepg/providers
	##Scripts Install##
	rm -rf /usr/crossepg/scripts/movistarepgdownload
	mv /tmp/arm/scripts/movistarepgdownload /usr/crossepg/scripts
	chmod 777 /usr/crossepg/scripts/movistarepgdownload/movistarepgdownload
	chmod 777 /usr/crossepg/scripts/movistarepgdownload/movistarepgdownload.sh
	##Crossepg.config Install##
	rm -rf /usr/crossepg/crossepg.config
	mv /tmp/arm/crossepg.config /usr/crossepg
	echo "¡epg actualizado con éxito!"
else
	echo "¡Conexión a internet NOK!"
fi
