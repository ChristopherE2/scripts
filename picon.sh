#!/bin/sh
# Provides: ChristopherE2
# Description: Script para actualizaciones de picon /media/hdd
# Version: 1.0
# Date: 17/09/2022

URL_PICON="https://github.com/ChristopherE2/picon/archive/refs/heads/main.zip"

## Picon Remove ##
rm -rf /media/hdd/picon

## Picon Download ##
cd /media/hdd
wget $URL_PICON
unzip main.zip

## Picon Install ##
mv picon-main picon
rm -rf /media/hdd/main.zip
