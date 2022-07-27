#!/bin/bash

#RUTA_INICIAL="/home/utnso" # Ruta inicial cuando abrimos al consola
RUTA_REPO_DEPLOY=$PWD #/home/utnso/alumnoso: Ruta a la carpeta donde nos descargamos: Scripts,Dependencias,TP
TITULO="GRUPO CobraKai" #Nombre del tp 
RULE=""

# 1) Iniciar superusuario root (para poder ejecutar todos los comandos).
echo "Ingrese como password: utnso"
sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "ACTIVAMOS EL MODO ROOT (SUPER USUARIO)" 1

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

sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "INSTALAMOS Y COMPILAMOS LAS COMMONS LIBRARIES" 1

# 3) Instalar el TP
TPSO="tp-2022-1c-CobraKai" 
USER="rvegabaldiviezo"
TOKEN="..."
cd $RUTA_REPO_DEPLOY
rm -rf $TPSO
git clone https://${USER}:${TOKEN}@github.com/sisoputnfrba/${TPSO}.git

# 3.1 Compilar los modulos del TP: consola,kernel,memoria,cpu 
MODULOS=(memoria cpu kernel cpu)
cd $RUTA_REPO_DEPLOY/$TPSO

for modulo in "${MODULOS[@]}"
do
    cd $modulo/Debug
    make clean
    make all $modulo||sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "NO PUDO COMPILAR EL MODULO: ${modulo}" 3
    la
    sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "COMPILO EL MODULO: ${modulo}" 2
    cd $RUTA_REPO_DEPLOY/$TPSO
done
