### `READY`
[![GitHub](https://img.shields.io/badge/GitHub-espinozan-blue)](https://github.com/espinozan)
```markdown
# Ready-Parrot

**Ready-Parrot** es una herramienta de línea de comandos para usuarios de sistemas basados en Parrot OS y Debian. Facilita la actualización, limpieza y administración básica del sistema operativo. Con el comando `ready`, puedes ejecutar todo el proceso de mantenimiento del sistema con un solo comando.

## Requisitos

- Sistema operativo Parrot OS y derivados del mismo.
- Privilegios de sudo para ejecutar algunas de las acciones de mantenimiento.

## Estructura de Archivos

- **ready.sh**: El script principal que realiza todas las acciones de actualización y limpieza del sistema.
- **install.sh**: Script de instalación que configura `ready.sh` para ejecutarse como un comando de shell (`ready`) accesible en todo el sistema.

## Instalación

1. **Clona este repositorio** o descarga el archivo en una carpeta llamada `ready-parrot`:

   ```bash
   git clone https://github.com/espinozan/ready-parrot.git
   cd ready-parrot
   ```

2. **Asigna permisos de ejecución a `install.sh`**:

   ```bash
   chmod +x install.sh
   ```

3. **Ejecuta el instalador**:

   ```bash
   ./install.sh
   ```

   Este script detectará el archivo `ready.sh` y lo moverá a `/usr/local/bin` con permisos de ejecución. Una vez instalado, podrás ejecutar el comando `ready` desde cualquier terminal.

## Uso

Escribe `ready` en la terminal y presiona **Enter**. El script ejecutará las siguientes acciones:

1. **Verificación de privilegios**: Indica si el script se está ejecutando con o sin permisos de root.
2. **Actualización del sistema**: Actualiza la lista de paquetes y muestra los paquetes que pueden ser actualizados.
3. **Actualización del sistema en Parrot OS**: Ejecuta la función `parrot-upgrade` para actualizar el sistema.
4. **Limpieza del sistema**: Remueve paquetes innecesarios y limpia la caché de `apt`.
5. **Información del sistema**: Muestra información del sistema antes y después de la actualización.
6. **Reinicio opcional**: Solicita al usuario que elija si desea reiniciar el sistema. Si elige "si", el sistema se reiniciará automáticamente.

### Ejemplo de Ejecución

```bash
ready
```

El script solicitará permisos de `sudo` para algunas acciones, especialmente aquellas que requieren privilegios elevados.

## Descripción de Archivos

### ready.sh

Este script contiene todas las funciones de mantenimiento y actualización del sistema. Puedes revisar el archivo para ver detalles específicos de cada acción ejecutada, ya que incluye comentarios en cada sección.

### install.sh

Este es el instalador que permite convertir `ready.sh` en el comando `ready`. Realiza las siguientes acciones:

1. Detecta el directorio actual y el archivo `ready.sh`.
2. Establece permisos de ejecución para `ready.sh`.
3. Mueve `ready.sh` a `/usr/local/bin/ready`.
4. Establece permisos de ejecución en `/usr/local/bin/ready` para permitir su ejecución como comando.

### Ejecución del instalador

Para ejecutar el instalador, navega a la carpeta `ready-parrot` y sigue las instrucciones en la sección **Instalación**.

## Contribuciones

Las contribuciones son bienvenidas. Para contribuir:

1. Haz un fork de este repositorio.
2. Crea una rama para tu función (`git checkout -b feature-nueva-funcion`).
3. Haz commit de tus cambios (`git commit -m 'Añadir nueva función'`).
4. Haz push a la rama (`git push origin feature-nueva-funcion`).
5. Abre un pull request.

## Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo `LICENSE` para más detalles.

---

Autor: [espinozan](https://github.com/espinozan)
```
