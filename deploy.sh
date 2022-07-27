#!/bin/bash

############### 1. VARIABLES NECESARIAS #################################### 
RUTA_SCRIPTS=$PWD # Ruta Absoluta donde vamos a instalar: Commons, tp, etc. Ej: /home/utnso/alumnoso

############### 2. DESCARGAR Y COMPILAR LAS COMMONS ########################
sh $RUTA_SCRIPTS/commons.sh "$RUTA_SCRIPTS"

############### 3. DESCARGAR Y COMPILAR EL TP ##############################
sh $RUTA_SCRIPTS/tp.sh "$RUTA_SCRIPTS"

############### 4. COMENTARIOS FINALES ####################################
