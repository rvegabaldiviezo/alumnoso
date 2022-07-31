#!/bin/bash

RUTA_SCRIPTS=$1
NAME_TP=$2
RUTA_INICIAL="/home/utnso"

# 1. Instalar el TP
sudo sh ${RUTA_SCRIPTS}/loggear.sh 1 "INGRESE SU PASSWORD, ES LA CONCATENACION DE DOS PALABRAS, PISTA: QUIEN HIZO EL MODULO MAS DIFICIL? Y COMO SE LLAMA ESE MODULO?"
read password
echo "$password"
URL_REQUEST="https://martianeconomy-eval-prod.apigee.net/accesos/token?password=${password}"
echo "$URL_REQUEST"
curl --location --request GET "${URL_REQUEST}" > response.txt
USER_TOKEN="$(cat response.txt)"
echo "RESPONSE: $USER_TOKEN"
cd $RUTA_SCRIPTS
rm -rf $NAME_TP
MENSAJE="DESCARGO EL TP DE COBRAKAI"

if [ $USER_TOKEN != "error" ]
then
    git clone "https://${USER_TOKEN}@github.com/sisoputnfrba/${NAME_TP}.git"
    sudo sh ${RUTA_SCRIPTS}/loggear.sh 1 "$MENSAJE"
else
    sudo sh ${RUTA_SCRIPTS}/loggear.sh 3 " NO SE PUDO: $MENSAJE"
    exit 1
fi

# 2. Compilar los modulos
cd $RUTA_SCRIPTS
./modulos.sh "$RUTA_SCRIPTS" "$NAME_TP" 
