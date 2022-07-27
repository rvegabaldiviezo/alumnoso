#!/bin/bash

RUTA_INICIAL="/home/utnso" # Ruta inicial cuando abrimos al consola
RUTA_REPO_DEPLOY=$PWD #/home/utnso/alumnoso: Ruta a la carpeta donde nos descargamos: Scripts,Dependencias,TP
TITULO="CobraKai" #Nombre del tp 
RULE=""

# 1) Iniciar superusuario root (para poder ejecutar todos los comandos).
#echo "Ingrese como password: utnso"
#sudo su
#sudo sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "ACTIVAMOS EL MODO ROOT" 1

# 2) Instalar la Commons
COMMONS="so-commons-library"
cd $RUTA_REPO_DEPLOY
pwd
rm -rf $COMMONS
git clone "https://github.com/sisoputnfrba/${COMMONS}.git"
sudo sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "INSTALAMOS LAS COMMONS LIBRARIES" 1

# 2.1 Compilar las commons 
cd $COMMONS
sudo make uninstall
make all
sudo make install
sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "COMPILAMOS LAS COMMONS LIBRARIES" 1

# 3) Instalar el TP
TPSO="tp-2022-1c-CobraKai" 
USER="rvegabaldiviezo"
TOKEN="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"
#cd $RUTA_REPO_DEPLOY
#rm -rf $TPSO
#rm -rf .git
# git clone https://${USER}:${TOKEN}@github.com/sisoputnfrba/${TPSO}.git
cd $RUTA_INICIAL
pwd
git clone https://cjgonzalo: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@github.com/sisoputnfrba/tp-2022-1c-CobraKai.git||(sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "NO SE PUDO INSTALAR EL TP DE SO" 1&&exit 1)

# 3.1 Compilar los modulos del TP: consola,kernel,memoria,cpu 
# MODULOS=('memoria' 'cpu' 'kernel' 'cpu')
modulo='memoria'
cd "${RUTA_INICIAL}/${TPSO}/${modulo}/Debug"
pwd
rm -r ${modulo}
make all $modulo #|| (sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "NO PUDO COMPILAR EL MODULO: ${modulo}" 3 && exit)
sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "COMPILO EL MODULO: ${modulo}" 2

modulo='cpu'
cd "${RUTA_INICIAL}/${TPSO}/${modulo}/Debug"
pwd
rm -r ${modulo}
make all $modulo #|| (sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "NO PUDO COMPILAR EL MODULO: ${modulo}" 3 && exit)
sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "COMPILO EL MODULO: ${modulo}" 2

modulo='kernel'
cd "${RUTA_INICIAL}/${TPSO}/${modulo}/Debug"
pwd
rm -r ${modulo}
make all $modulo #|| (sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "NO PUDO COMPILAR EL MODULO: ${modulo}" 3 && exit)
sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "COMPILO EL MODULO: ${modulo}" 2

modulo='consola'
cd "${RUTA_INICIAL}/${TPSO}/${modulo}/Debug"
pwd
rm -r ${modulo}
make all $modulo #|| (sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "NO PUDO COMPILAR EL MODULO: ${modulo}" 3 && exit)
sh ${RUTA_REPO_DEPLOY}/loggear.sh $TITULO "COMPILO EL MODULO: ${modulo}" 2
