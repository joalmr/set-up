#!/bin/bash

./t_core.sh
./t_feature.sh

# Agrega el paquete provider al proyecto Flutter
flutter pub add provider
# Agrega el paquete go_router al proyecto Flutter
flutter pub add go_router
# Agrega el paquete intl al proyecto Flutter
flutter pub add intl
# Agrega el paquete equatable al proyecto Flutter
flutter pub add equatable
# Agrega el paquete logger al proyecto Flutter
flutter pub add logger

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