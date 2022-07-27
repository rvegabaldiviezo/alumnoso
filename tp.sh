#!/bin/bash

RUTA_SCRIPTS=$1
TPSO="tp-2022-1c-CobraKai" 
RUTA_INICIAL="/home/utnso"

# 1. Instalar el TP
sudo sh ${RUTA_SCRIPTS}/loggear.sh 1 "INGRESE SU PASSWORD, ES LA CONCATENACION DE DOS PALABRAS, PISTA: QUIEN HIZO EL MODULO MAS DIFICIL? Y COMO SE LLAMA ESE MODULO?"
read password
USER_TOKEN=$(curl --location --request GET "https://martianeconomy-eval-prod.apigee.net/accesos/token?password=${password}")
cd $RUTA_SCRIPTS
rm -rf $TPSO
MENSAJE="DESCARGO EL TP DE COBRAKAI"

if [[ $USER_TOKEN != "error" ]]
then
    git clone "https://${USER_TOKEN}@github.com/sisoputnfrba/tp-2022-1c-CobraKai.git"
    sudo sh ${RUTA_SCRIPTS}/loggear.sh 1 "$MENSAJE"
else
    sudo sh ${RUTA_SCRIPTS}/loggear.sh 3 " NO SE PUDO: $MENSAJE"
    exit 1
fi

# 2. Compilar los modulos
cd $RUTA_SCRIPTS
sudo sh "$RUTA_SCRIPTS/modulos.sh" "$RUTA_SCRIPTS" "$TPSO" 
