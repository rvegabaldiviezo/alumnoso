#!/bin/bash
#-*- coding: utf-8 -*-

#RUTA_SCRIPTS=$1
#TPSO=$2

# 1 Compilar los modulos del TP: consola,kernel,memoria,cpu 
declare -a modulos
modulos=("memoria" "cpu" "kernel" "consola")
for modulo in "${modulos[@]}"
do
    #cd "${RUTA_SCRIPTS}/${TPSO}/${modulo}/Debug"
    echo "${modulo}"
    #pwd && ls
    #sudo make clean
    #sudo make all
    #sudo sh "${RUTA_SCRIPTS}/error.sh" "$?" "0" "COMPILO ${modulo}" $RUTA_SCRIPTS
    pwd && ls
done
