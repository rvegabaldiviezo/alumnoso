#!/bin/bash

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
