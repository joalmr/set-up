#!/bin/bash
# Función para crear archivos Dart con contenido básico
crear_archivo_dart() {
  local ruta_archivo=$1
  local contenido=$2

  # Crear el archivo y añadir el contenido
  echo "$contenido" > "$ruta_archivo"
  echo "Creado: $ruta_archivo"
}

echo "Iniciando la creación de la estructura de carpetas y archivos Dart..."

# Crear carpetas principales
mkdir -p lib/core/animation
crear_archivo_dart "lib/core/animation/animation.dart" '''// animation
'''

mkdir -p lib/core/routes
crear_archivo_dart "lib/core/routes/routes.dart" '''// routes
'''

mkdir -p lib/core/config
crear_archivo_dart "lib/core/config/config.dart" '''// config
export "injection.dart";
export "di.dart";
'''
crear_archivo_dart "lib/core/config/di.dart" "// config"
crear_archivo_dart "lib/core/config/injection.dart" '''// config
import "package:flutter/material.dart";

class DependencyInjection {
    static Future<void> init() async {
        WidgetsFlutterBinding.ensureInitialized();
        
    }
}
'''

mkdir -p lib/core/constants
crear_archivo_dart "lib/core/constants/constants.dart" '''// constants
export "colors.dart";
export "text_style.dart";
'''
crear_archivo_dart "lib/core/constants/colors.dart" '''// constants
import "package:flutter/material.dart";

class AppColor {

    static Color black = const Color(0xFF000000);
    static Color white = const Color(0xFFFFFFFF);

    static Color primaryColor = const Color(0xFF00703C);

    static Color backgroundColor = Colors.white;

    //TEXTO
    static Color textColor = Colors.black;
    static Color textColorContrast = Colors.white;

}
'''
crear_archivo_dart "lib/core/constants/text_style.dart" '''// constants
import "package:flutter/material.dart";
// 
mixin Font implements FontWeight  {
    static FontWeight get l => FontWeight.w300;
    static FontWeight get n => FontWeight.w400;
    static FontWeight get sb => FontWeight.w500;
    static FontWeight get b => FontWeight.w700;
}
// 
class AppTextStyle extends TextStyle {

    static TextStyle get header => const TextStyle();
}
'''

mkdir -p lib/core/errors
crear_archivo_dart "lib/core/errors/error.dart" "// errors"

mkdir -p lib/core/theme
crear_archivo_dart "lib/core/theme/theme.dart" '''// theme
import "package:flutter/material.dart";

import "../constants/constants.dart";

ThemeData themeData = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColor.backgroundColor,
);
'''

mkdir -p lib/core/utils
crear_archivo_dart "lib/core/utils/utils.dart" "// utils"

mkdir -p lib/core/widgets
crear_archivo_dart "lib/core/widgets/widgets.dart" "// widgets"

echo "¡Estructura y archivos creados con éxito!"