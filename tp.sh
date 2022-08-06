COMANDO="$1"
PARAMETRO_UNO="$2"
PARAMETRO_DOS="$3"

case $COMANDO in
    "ip")
        TIPO_IP="enp0s3"
        #alias ipimagen="echo $(ip route|grep $TIPO_IP |SS='$?'|echo $SS|cut -d ' ' -f14)"
        sudo echo $(ip route|grep $TIPO_IP |SS='$?'|echo $SS|cut -d ' ' -f14)
        ;;
    "borrar")
        sudo rm -r "/home/utnso/alumnoso"
        ;;
    "compilar")
        cd  "/home/utnso/alumnoso/tp-2022-1c-CobraKai/${PARAMETRO_UNO}/Debug"
        sudo make clean
        sudo make all
        ls
        cd  "/home/utnso/alumnoso/tp-2022-1c-CobraKai/${PARAMETRO_UNO}"
        ls
        ;;
    *)
        echo " COMANDO DESCONOCIDO, COMANDOS ADMITIDOS: ip, borrar, compilar"
        ;;
esac