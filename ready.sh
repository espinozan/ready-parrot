#!/bin/bash

# Verificar si se está ejecutando con permisos de root.
if [[ "$EUID" -eq 0 ]]; then
    echo "Ejecución con privilegios de root."
else
    echo "Ejecución sin privilegios de root."
fi

# Mostrar mensaje de inicio
echo "Iniciando actualización del sistema..."

# Mostrar información del sistema operativo
echo "Mostrando información del sistema operativo:"
cat /etc/os-release

# Actualizar lista de paquetes
echo "Actualizando lista de paquetes..."
sudo apt-get update

# Mostrar lista de paquetes actualizables
echo "Mostrando paquetes actualizables:"
sudo apt list --upgradable

# Realizar actualización de paquetes de Parrot
echo "Actualizando Parrot OS..."
sudo parrot-upgrade -y

# Limpiar caché de apt y remover paquetes innecesarios
echo "Limpiando caché de apt y removiendo paquetes innecesarios..."
sudo apt clean
sudo apt-get autoremove -y
sudo apt-get autoclean

# Mostrar información del sistema operativo después de la actualización
echo "Información del sistema operativo después de la actualización:"
cat /etc/os-release
uname -a

# Solicitar al usuario si desea reiniciar
read -p "¿Reiniciar ahora? (si/no): " op

# Evaluar la respuesta del usuario para reiniciar o no
if [[ "$op" == "si" ]]; then
    echo "Reiniciando el sistema..."
    sudo reboot -f
elif [[ "$op" == "no" ]]; then
    echo "Recuerda reiniciar el sistema más tarde para aplicar los cambios."
else
    echo "Opción no válida. Por favor elige 'si' o 'no'."
fi
