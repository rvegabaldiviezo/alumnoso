#!/bin/bash

TEMA=$1 # Es un titulo o tema sobre el que tratan los logs
MENSAJE=$2 # Es el mensaje a mostrar
TIPO=$3 # 1: INFO, 2: WARNIG, 3: ERROR

# Obtener número la Fecha
FECHA2="$(date -I)" # Almacena (como string) en una variable de shell

# Obtener la hora
HORA2="$(date +'%T:%3N')"

# Obtener milisegundo
#MSEG="$(date +'%3N')"


# Colores
GREEN="\e[32m"
YELLOW="\e[93m"
RED="\e[31m"
ENDCOLOR="\e[0m"  

case $3 in
    1)  
        # imprimirlo de color verde
        sudo echo -e "\n${GREEN}[INFO][${FECHA2}][${HORA2}] ${TEMA}: ${MENSAJE} ${ENDCOLOR}";;
    2)
        sudo echo -e "\n${YELLOW}[WARNIG][$FECHA2][$HORA2] $TEMA: ${MENSAJE} ${ENDCOLOR}";;
    3)
        sudo echo -e "\n${RED}[ERROR][$FECHA2][$HORA2] $TEMA: ${MENSAJE} ${ENDCOLOR}";;
    *)
        echo " CASO DESCONOCIDO, CASOS ADMITIDOS: 1: INFO, 2: WARNIG, 3: ERROR";;
esac

# AUX
#FECHA="$(date +'%Y/%m/%d')"
#HORA="$(date +'%H:%M:%s:')"
