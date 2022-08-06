#!/bin/bash
PASSWORD=$1
MODULO=$2

############### 1. VARIABLES NECESARIAS #################################### 
RUTA_SCRIPTS=$PWD # Ruta Absoluta donde vamos a instalar: Commons, tp, etc. Ej: /home/utnso/alumnoso

############### 2. DESCARGAR Y COMPILAR LAS COMMONS ########################
sh $RUTA_SCRIPTS/commons.sh "$RUTA_SCRIPTS"

############## 5. Creamos comandos utiles
sudo bash ./run.sh

############### 3. DESCARGAR Y COMPILAR EL TP ##############################
NAME_TP="tp-2022-1c-CobraKai" 
cd $RUTA_SCRIPTS
sudo bash ./tp_deploy.sh "$RUTA_SCRIPTS" "$NAME_TP" "$PASSWORD"
cd "${RUTA_SCRIPTS}/${NAME_TP}/${MODULO}"
ls -a
############### 4. GENERAR ARCHIVO DE CONFIG ####################################

# Creamos un archivo donde guardamos la ip
SS=$(echo "$(ip route|grep enp0s3)"| cut -d ' ' -f12)&&echo $SS > ip_value.txt
echo "ip_${MODULO}=$(cat ip_value.txt)" > configs.txt 
cat configs.txt
echo "### FIN INSTALACIONES ###"

#cat ip_value.txt 
# Guardamos la IP en una API, asi los otros modulos pueden consumirla
#URL_REQUEST="https://martianeconomy-eval-prod.apigee.net/accesos/modulo?nombre=${MODULO}"
#echo "$URL_REQUEST"
#curl --location --request GET "${URL_REQUEST}" > response_modulos.txt
#USER_TOKEN="$(cat response_token.txt)"
#echo "RESPONSE: $USER_TOKEN"
# Creamos un archivo que tenga las IP de RED de cada modulo

