#!/bin/bash

RUTA_SCRIPTS=$1
COMMONS="so-commons-library"

# 1. Instalar la Commons
rm -rf $COMMONS
git clone "https://github.com/sisoputnfrba/${COMMONS}.git"
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "INSTALO LAS COMMONS LIBRARIES" $RUTA_SCRIPTS

# 2. Compilar las commons 
cd $RUTA_SCRIPTS/$COMMONS
sudo make uninstall
sudo make all
sudo make install
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "COMPILO LAS COMMONS LIBRARIES" $RUTA_SCRIPTS
