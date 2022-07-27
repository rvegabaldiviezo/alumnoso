#!/bin/bash
#-*- coding: utf-8 -*-

RUTA_SCRIPTS=$1
TPSO=$2

# 1 Compilar los modulos del TP: consola,kernel,memoria,cpu 

modulo="memoria"
cd "${RUTA_SCRIPTS}/${TPSO}/${modulo}/Debug"
pwd && ls
sudo make clean
sudo make all
sudo sh "${RUTA_SCRIPTS}/error.sh" "$?" "0" "COMPILO ${modulo}" $RUTA_SCRIPTS
ls

modulo="cpu"
cd "${RUTA_SCRIPTS}/${TPSO}/${modulo}/Debug"
pwd && ls
sudo make clean
sudo make all
sudo sh "${RUTA_SCRIPTS}/error.sh" "$?" "0" "COMPILO ${modulo}" $RUTA_SCRIPTS
ls

modulo="kernel"
cd "${RUTA_SCRIPTS}/${TPSO}/${modulo}/Debug"
pwd && ls
sudo make clean
sudo make all
sudo sh "${RUTA_SCRIPTS}/error.sh" "$?" "0" "COMPILO ${modulo}" $RUTA_SCRIPTS
ls

modulo="consola"
cd "${RUTA_SCRIPTS}/${TPSO}/${modulo}/Debug"
pwd && ls
sudo make clean
sudo make all
sudo sh "${RUTA_SCRIPTS}/error.sh" "$?" "0" "COMPILO ${modulo}" $RUTA_SCRIPTS
ls


