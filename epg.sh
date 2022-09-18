#!/bin/sh
# Provides: ChristopherE2
# Description: Script para actualización de mhw_equiv
# Version: 1.0
# Date: 17/09/2022

URL_EPG="https://raw.githubusercontent.com/ChristopherE2/epg/main/mhw_Equiv.epg"

## MHW_equiv Remove ##
rm -rf /etc/mhw_Equiv.epg

## MHW_equiv Download/Install ##
cd /etc
wget $URL_EPG
