#!/bin/bash

# Detectar la carpeta actual donde se encuentra el script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Asignar nombre y ruta del script
SCRIPT_NAME="ready.sh"
TARGET_PATH="/usr/local/bin/ready"

# Verificar si el archivo parrot.sh existe en el directorio
if [[ -f "$DIR/$SCRIPT_NAME" ]]; then
    echo "Archivo $SCRIPT_NAME encontrado. Procediendo con la instalación..."

    # Asignar permisos de ejecución al script parrot.sh
    chmod +x "$DIR/$SCRIPT_NAME"

    # Mover el archivo a /usr/local/bin/ready
    sudo mv "$DIR/$SCRIPT_NAME" "$TARGET_PATH"

    # Asignar permisos de ejecución en /usr/local/bin
    sudo chmod +x "$TARGET_PATH"

    echo "Instalación completa. Ahora puedes ejecutar el comando 'ready' en la terminal."
else
    echo "Error: No se encontró el archivo $SCRIPT_NAME en el directorio $DIR."
    exit 1
fi
