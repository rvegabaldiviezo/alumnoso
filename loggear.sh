#!/bin/bash

TIPO=$1 # 1: INFO, 2: WARNIG, 3: ERROR
MENSAJE=$2 # Es el mensaje a mostrar
TITULO_LOGS="CobraKai" # Nombre reprentativo de los logs 

# Obtener número la Fecha
FECHA2="$(date -I)" # Almacena (como string) en una variable de shell

# Obtener la hora
HORA2="$(date +'%T:%3N')"

# Colores
GREEN="\e[32m"
YELLOW="\e[93m"
RED="\e[31m"
ENDCOLOR="\e[0m"  

case $1 in
    1)  
        sudo echo -e "${GREEN}[INFO][${FECHA2}][${HORA2}] ${TITULO_LOGS}: ${MENSAJE} ${ENDCOLOR}";;
    2)
        sudo echo -e "${YELLOW}[WARNIG][$FECHA2][$HORA2] ${TITULO_LOGS}: ${MENSAJE} ${ENDCOLOR}";;
    3)
        sudo echo -e "${RED}[ERROR][$FECHA2][$HORA2] ${TITULO_LOGS}: ${MENSAJE} ${ENDCOLOR}";;
    *)
        echo " CASO DESCONOCIDO, CASOS ADMITIDOS: 1: INFO, 2: WARNIG, 3: ERROR";;
esac