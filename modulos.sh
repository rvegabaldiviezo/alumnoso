#!/bin/bash

RUTA_SCRIPTS=$1
TPSO=$2

# 1 Compilar los modulos del TP: consola,kernel,memoria,cpu 
# memoria
cd "${RUTA_SCRIPTS}/${TPSO}/memoria/Debug"
sudo make clean
sudo make all
pwd
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "COMPILO memoria" $RUTA_SCRIPTS

# cpu
cd "${RUTA_INICIAL}/${TPSO}/cpu/Debug"
sudo make clean
sudo make all
pwd
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "COMPILO cpu" $RUTA_SCRIPTS

# kernel
cd "${RUTA_INICIAL}/${TPSO}/kernel/Debug"
sudo make clean
sudo make all
pwd
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "COMPILO kernel" $RUTA_SCRIPTS

# consola
cd "${RUTA_INICIAL}/${TPSO}/consola/Debug"
sudo make clean
sudo make all
pwd
sudo sh "$RUTA_SCRIPTS/error.sh" "$?" "0" "COMPILO consola" $RUTA_SCRIPTS
