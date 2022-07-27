#!/bin/bash

############### 1. VARIABLES NECESARIAS #################################### 
RUTA_SCRIPTS=$PWD # Ruta Absoluta donde vamos a instalar: Commons, tp, etc. Ej: /home/utnso/alumnoso
#RUTA_INICIAL="/home/utnso"

############### 2. PASAR A USUARIO ROOT ####################################
#sudo su

############### 3. DESCARGAR Y COMPILAR LAS COMMONS ########################
sh $RUTA_SCRIPTS/commons.sh "$RUTA_SCRIPTS"

############### 4. DESCARGAR Y COMPILAR EL TP ##############################
sh $RUTA_SCRIPTS/tp.sh "$RUTA_SCRIPTS"

############### 5. COMENTARIOS FINALES ####################################
