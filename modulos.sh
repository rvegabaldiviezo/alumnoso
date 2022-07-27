#!/bin/bash

RUTA_SCRIPTS=$1
TPSO=$2

# 1 Compilar los modulos del TP: consola,kernel,memoria,cpu 
modulo='memoria'
cd "${RUTA_SCRIPTS}/${TPSO}/${modulo}/Debug"
sudo make all $modulo
pwd
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "COMPILO ${modulo}" $RUTA_SCRIPTS

modulo2='cpu'
cd "${RUTA_INICIAL}/${TPSO}/${modulo2}/Debug"
pwd
sudo make all $modulo2 
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "COMPILO ${modulo2}" $RUTA_SCRIPTS

modulo3='kernel'
cd "${RUTA_INICIAL}/${TPSO}/${modulo3}/Debug"
sudo rm -r "${modulo3}"
sudo make all $modulo3 
pwd
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "COMPILO ${modulo3}" $RUTA_SCRIPTS

modulo4='consola'
cd "${RUTA_INICIAL}/${TPSO}/${modulo4}/Debug"
sudo rm -r "${modulo4}"
sudo make all $modulo4
pwd
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "COMPILO ${modulo4}" $RUTA_SCRIPTS
