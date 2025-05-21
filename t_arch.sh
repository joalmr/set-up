#!/bin/bash

./t_core.sh
./t_feature.sh

# Agrega paquetes al proyecto Flutter
flutter pub add go_router provider equatable intl logger flutter_dotenv

# Función para crear archivos Dart con contenido básico
crear_archivo_dart() {
  local ruta_archivo=$1
  local contenido=$2

  # Crear el archivo y añadir el contenido
  echo "$contenido" > "$ruta_archivo"
  echo "Creado: $ruta_archivo"
}

# Crear archivos env para producción y desarrollo
mkdir -p /
crear_archivo_dart ".env" '''# PRODUCTION'''
crear_archivo_dart ".env.dev" '''# DEVELOPMENT'''