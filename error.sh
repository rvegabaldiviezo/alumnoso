#!/bin/bash

ESTADO=$1
ESTADO_ESPERADO=$2
MENSAJE_CASO_EXITO=$3
RUTA_SCRIPTS=$4

case $ESTADO in
    $ESTADO_ESPERADO) # Caso de exito  
        sudo sh "$RUTA_SCRIPTS/loggear.sh" 1 "$MENSAJE_CASO_EXITO";;
    *) # Caso Error
        sudo sh "$RUTA_SCRIPTS/loggear.sh" 3 "NO SE PUDO: $MENSAJE_CASO_EXITO"
        exit 1;;
esac
