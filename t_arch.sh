#!/bin/bash

./t_core.sh
./t_feature.sh

# Agrega el paquete provider al proyecto Flutter
flutter pub add provider
# Agrega el paquete go_router al proyecto Flutter
flutter pub add go_router