#!/bin/bash
#-*- coding: utf-8 -*-

RUTA_SCRIPTS=$1
TPSO=$2

# 1 Compilar los modulos del TP: consola,kernel,memoria,cpu 
declare -a modulos_array
modulos_array=(memoria cpu kernel consola) 

for modulo "${modulos_array[@]}"
do
    cd "${RUTA_SCRIPTS}/${TPSO}/${modulo}/Debug"
    pwd && ls
    sudo make clean
    sudo make all
    sudo sh "${RUTA_SCRIPTS}/error.sh" "$?" "0" "COMPILO ${modulo}" $RUTA_SCRIPTS
    ls
done

