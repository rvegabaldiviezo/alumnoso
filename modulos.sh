#!/bin/bash

RUTA_SCRIPTS=$1
TPSO=$2

# 1 Compilar los modulos del TP: consola,kernel,memoria,cpu 
modulo='memoria'
cd "${RUTA_SCRIPTS}/${TPSO}/${modulo}/Debug"
sudo rm -r "${modulo}"
make all $modulo
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "COMPILO ${modulo}" $RUTA_SCRIPTS

modulo='cpu'
cd "${RUTA_INICIAL}/${TPSO}/${modulo}/Debug"
sudo rm -r"${modulo}"
make all $modulo 
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "COMPILO ${modulo}" $RUTA_SCRIPTS

modulo='kernel'
cd "${RUTA_INICIAL}/${TPSO}/${modulo}/Debug"
sudo rm -r "${modulo}"
make all $modulo 
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "COMPILO ${modulo}" $RUTA_SCRIPTS

modulo='consola'
cd "${RUTA_INICIAL}/${TPSO}/${modulo}/Debug"
sudo rm -r "${modulo}"
make all $modulo 
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "COMPILO ${modulo}" $RUTA_SCRIPTS
