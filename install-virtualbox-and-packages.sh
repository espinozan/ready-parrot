#!/bin/bash

# 1. Actualizar la lista de paquetes
echo "Actualizando la lista de paquetes..."
sudo apt update

# 2. Instalar VirtualBox Guest Utilities
echo "Instalando virtualbox-guest-utils..."
sudo apt install -y virtualbox-guest-utils

# 3. Instalar VirtualBox Guest X11
echo "Instalando virtualbox-guest-x11..."
sudo apt install -y virtualbox-guest-x11

# 4. Instalar herramientas de compilación y paquetes adicionales
echo "Instalando build-essential, git, vim y librerías necesarias..."
sudo apt install -y build-essential git vim xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev

# 5. Reiniciar la máquina para aplicar los cambios
echo "Reiniciando la máquina..."
sudo reboot

# 6. Verificar la instalación de Guest Additions (este paso se ejecutará después del reinicio)
echo "Después del reinicio, verifica la instalación de Guest Additions ejecutando:"
echo "sudo /usr/sbin/VBoxService -V"
