COMANDO="$1"
PARAMETRO_UNO="$2"
PARAMETRO_DOS="$3"


case $COMANDO in
        "a")
                echo "Hola amigo $PARAMETRO_UNO";;
        "e")
                echo "Hola extranio $PARAMETRO_UNO, soy $PARAMETRO_DOS";;
        *)
                echo "Hola Extraterrestre";;
esac

#######
# Ruta de Comandos: cd /usr/bin/$comandoInventado 
# Dar Permisos de Ejecucion a un script:  
# chmod a+x ./hola
# sudo cp ./hola /usr/bin/

