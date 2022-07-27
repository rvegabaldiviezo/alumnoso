#!/bin/bash
#-*- coding: utf-8 -*-

RUTA_SCRIPTS=$1
TPSO=$2

# 1 Compilar los modulos del TP: consola,kernel,memoria,cpu 

modulos[0]="memoria" 
modulos[1]="cpu" 
modulos[2]="kernel" 
modulos[3]="consola"

for modulo "${modulos[@]}"
do
    cd "${RUTA_SCRIPTS}/${TPSO}/${modulo}/Debug"
    pwd && ls
    sudo make clean
    sudo make all
    sudo sh "${RUTA_SCRIPTS}/error.sh" "$?" "0" "COMPILO ${modulo}" $RUTA_SCRIPTS
    ls
done

