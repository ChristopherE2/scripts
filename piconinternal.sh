#!/bin/sh
# Provides: ChristopherE2
# Description: Script para actualizaciones de picon /usr/share/enigma2
# Version: 1.0
# Date: 17/09/2022

URL_PICON="https://github.com/ChristopherE2/picon/archive/refs/heads/main.zip"

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
