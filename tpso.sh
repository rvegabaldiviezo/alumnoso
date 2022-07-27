#!/bin/bash
RUTA_INICIAL="/home/utnso"
RUTA_REPO_DEPLOY="/home/utnso/alumnoso"
TITULO="CobraKai" #Nombre del tp 
TPSO="tp-2022-1c-CobraKai" 

# 3) Instalar el TP
TPSO="tp-2022-1c-CobraKai" 
#USER="rvegabaldiviezo"
#TOKEN="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"
#cd $RUTA_REPO_DEPLOY
#rm -rf $TPSO
#rm -rf .git
# git clone https://${USER}:${TOKEN}@github.com/sisoputnfrba/${TPSO}.git
cd $RUTA_INICIAL
pwd
git clone https://rvegabaldiviezo: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@github.com/sisoputnfrba/tp-2022-1c-CobraKai.git

sudo sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "SE DESCARGO EL TP DE COBRAKAI" 1
#git clone https://rvegabaldiviezo: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@github.com/sisoputnfrba/tp-2022-1c-CobraKai.git
