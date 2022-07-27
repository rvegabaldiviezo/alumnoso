#!/bin/bash
RUTA_INICIAL="/home/utnso"
RUTA_REPO_DEPLOY=$PWD
TITULO="CobraKai" #Nombre del tp 

# 2) Instalar la Commons
COMMONS="so-commons-library"
cd $RUTA_INICIAL
pwd
rm -rf $COMMONS
git clone "https://github.com/sisoputnfrba/${COMMONS}.git"
sudo sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "INSTALAMOS LAS COMMONS LIBRARIES" 1

# 2.1 Compilar las commons 
cd $RUTA_INICIAL/$COMMONS
sudo make uninstall
make all
sudo make install
sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "COMPILAMOS LAS COMMONS LIBRARIES" 1