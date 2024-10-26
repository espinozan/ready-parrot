#!/bin/bash

# Colores
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Banner ASCII con "READY PARROT"
echo -e "${GREEN}"
echo "RRRRRRRRRRRRRRR   EEEEEEEEEEEEEEEEEEEEEE       AAA        DDDDDDDDDDDDD        YYYYYYY       YYYYYYY        "
echo "R::::::::::::::::R E::::::::::::::::::::E     A:::A       D::::::::::::DDD     Y:::::Y       Y:::::Y        "
echo "R::::::RRRRRR:::::REE::::::::::::::::::::E   A:::::A      D:::::::::::::::DD   Y:::::Y       Y:::::Y        "
echo "RR:::::R     R:::::R  E:::::EEEEEEEEEEE:::E  A:::::::A     DDD:::::DDDDD:::::D  Y::::::Y     Y::::::Y        "
echo "  R::::R     R:::::R  E:::::E       EEEEEE A:::::::::A      D:::::D    D:::::D  YYY:::::Y   Y:::::YYY        "
echo "  R::::R     R:::::R  E:::::E            A:::::A:::::A     D:::::D     D:::::D     Y:::::Y Y:::::Y           "
echo "  R::::RRRRRR:::::R   E::::::EEEEEEEEEE  A:::::A A:::::A    D:::::D     D:::::D      Y:::::Y:::::Y            "
echo "  R:::::::::::::RR    E:::::::::::::::E A:::::A   A:::::A   D:::::D     D:::::D       Y:::::::::Y             "
echo "  R::::RRRRRR:::::R   E:::::::::::::::EA:::::A     A:::::A  D:::::D     D:::::D        Y:::::::Y              "
echo "  R::::R     R:::::R  E::::::EEEEEEEEEEA:::::AAAAAAAAA:::::A D:::::D     D:::::D        Y:::::Y               "
echo "  R::::R     R:::::R  E:::::E         A:::::::::::::::::::::AD:::::D     D:::::D        Y:::::Y               "
echo "  R::::R     R:::::R  E:::::E       EEA:::::AAAAAAAAAAAAA:::::AD:::::D    D:::::D        Y:::::Y               "
echo "RR:::::R     R:::::REE:::::EEEEEEEE::::EA:::::A             A:::::ADDD:::::DDDDD:::::D    Y:::Y                "
echo "R::::::R     R:::::RE::::::::::::::::::::EA:::::A           A:::::A D:::::::::::::::DD    Y:::Y                "
echo "R::::::R     R:::::RE::::::::::::::::::::EA:::::A          A:::::A  D::::::::::::DDD      Y:::Y                "
echo "RRRRRRRR     RRRRRRRREEEEEEEEEEEEEEEEEEEE  AAAAAAA          AAAAAAA  DDDDDDDDDDDDD         YYY                 "
echo -e "${CYAN}                           READY TO HACK PARROT OS | SYSTEM UPDATE SCRIPT${NC}"
echo ""

# Mostrar información sobre la distribución
echo "Mostrando información del sistema operativo:"
cat /etc/os-release
echo ""

# Actualizar lista de paquetes y mostrar los que se pueden actualizar
echo "Actualizando la lista de paquetes..."
sudo apt update
echo "Mostrando paquetes que se pueden actualizar:"
sudo apt list --upgradable
echo ""

# Realizar actualización completa del sistema
echo "Realizando actualización completa del sistema..."
sudo parrot-upgrade -y

# Limpiar paquetes y archivos temporales
echo "Limpiando el sistema..."
sudo apt clean
sudo apt autoremove -y
sudo apt autoclean

#Actualizar la distribución completa
echo "Actualizando el sistema a la próxima versión disponible..."
sudo parrot-upgrade

echo "Todo listo y en perfectas condiciones. Ahora puedes hackear el planeta..."
uname -a

# Mostrar información sobre la distribución
echo "Mostrando información del sistema operativo:"
cat /etc/os-release
echo ""

# Reiniciar el sistema de forma forzada
echo "Reiniciando el sistema..."
sudo reboot -f


