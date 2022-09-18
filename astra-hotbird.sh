#!/bin/sh
# Provides: ChristopherE2
# Description: Script para actualizaciones de lista de canales astra-hotbird
# Version: 3.1
# Date: 18/09/2022

URL_BOUQUET="https://github.com/ChristopherE2/astra-hotbird/raw/main/astra-hotbird.tar.gz"

## Lamedb + Bouquet + Satellites Download ##
cd /tmp/
wget $URL_BOUQUET
chmod 755 /tmp/astra-hotbird.tar.gz
tar -xzvf astra-hotbird.tar.gz

## Satellites Remove ##
rm -rf /etc/tuxbox/satellites.xml

## Satellites Install ##
mv /tmp/tuxbox/satellites.xml /etc/tuxbox/

## Bouquet Remove ##
cd /etc/enigma2 && rm -rf *.tv *.radio blacklist lamedb

## Bouquet Install ##
mv /tmp/enigma2/* /etc/enigma2

## Tmp Trash Remove ##
rm -rf /tmp/tuxbox /tmp/enigma2 /tmp/astra-hotbird.tar.gz /etc/enigma2/*.del

## Lamedb & Bouquet Reload ##
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0

## Restart Enigma2 ##
wget -O /dev/null -q http://127.0.0.1/web/powerstate?newstate=3
