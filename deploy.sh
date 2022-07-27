#!/bin/bash

#RUTA_INICIAL="/home/utnso" # Ruta inicial cuando abrimos al consola
RUTA_REPO_DEPLOY=$PWD #/home/utnso/alumnoso: Ruta a la carpeta donde nos descargamos: Scripts,Dependencias,TP
TITULO="CobraKai" #Nombre del tp 
RULE=""

# 1) Iniciar superusuario root (para poder ejecutar todos los comandos).
echo "Ingrese como password: utnso"
sudo sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "ACTIVAMOS EL MODO ROOT (SUPER USUARIO)" 1

# 2) Instalar la Commons
COMMONS="so-commons-library"
cd $RUTA_REPO_DEPLOY
rm -rf $COMMONS
git clone "https://github.com/sisoputnfrba/${COMMONS}.git"

# 2.1 Compilar las commons 
cd $COMMONS
sudo make uninstall
make all
sudo make install

sudo sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "INSTALAMOS Y COMPILAMOS LAS COMMONS LIBRARIES" 1

# 3) Instalar el TP
TPSO="tp-2022-1c-CobraKai" 
USER="rvegabaldiviezo"
TOKEN="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"
cd $RUTA_REPO_DEPLOY
rm -rf $TPSO
# git clone https://${USER}:${TOKEN}@github.com/sisoputnfrba/${TPSO}.git
git clone https://cjgonzalo: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@github.com/sisoputnfrba/tp-2022-1c-CobraKai.git

# 3.1 Compilar los modulos del TP: consola,kernel,memoria,cpu 
# MODULOS=('memoria' 'cpu' 'kernel' 'cpu')
cd $RUTA_REPO_DEPLOY/$TPSO
modulo='memoria'
cd "${modulo}/Debug"
make clean
make all $modulo||sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "NO PUDO COMPILAR EL MODULO: ${modulo}" 3
sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "COMPILO EL MODULO: ${modulo}" 2

cd $RUTA_REPO_DEPLOY/$TPSO
modulo='cpu'
cd "${modulo}/Debug"
make clean
make all $modulo||sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "NO PUDO COMPILAR EL MODULO: ${modulo}" 3
sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "COMPILO EL MODULO: ${modulo}" 2

cd $RUTA_REPO_DEPLOY/$TPSO
modulo='kernel'
cd "${modulo}/Debug"
make clean
make all $modulo||sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "NO PUDO COMPILAR EL MODULO: ${modulo}" 3
sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "COMPILO EL MODULO: ${modulo}" 2

cd $RUTA_REPO_DEPLOY/$TPSO
modulo='consola'
cd "${modulo}/Debug"
make clean
make all $modulo||sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "NO PUDO COMPILAR EL MODULO: ${modulo}" 3
sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "COMPILO EL MODULO: ${modulo}" 2
