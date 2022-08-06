FLAG="$1"

if [ $FLAG ]


COMANDO="$2"


PARAMETRO_UNO=$3


case $COMANDO in
    "ip")
        TIPO_IP="enp0s3"
        #alias ipimagen="echo $(ip route|grep $TIPO_IP |SS='$?'|echo $SS|cut -d ' ' -f14)"
        sudo echo $(ip route|grep $TIPO_IP |SS='$?'|echo $SS|cut -d ' ' -f14)
        ;;
    *)
        echo " COMANDO DESCONOCIDO, COMANDOS ADMITIDOS: ip, etc"
        ;;
esac