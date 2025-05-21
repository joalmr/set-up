# 📦 Set Up Flutter Architecture

Este repositorio proporciona scripts para automatizar la creación de la arquitectura base de un proyecto Flutter. Facilita la generación de carpetas y archivos esenciales, permitiendo iniciar el desarrollo de manera rápida y organizada.

## 🚀 ¿Qué incluye?

- **t_core.sh**: Crea la estructura de carpetas principal del proyecto.
- **t_feature.sh**: Genera la estructura para una nueva funcionalidad o módulo.
- **t_arch.sh**: Ejecuta ambos scripts anteriores para configurar la arquitectura completa del proyecto.

## 🛠️ Requisitos previos

- Tener instalado [Flutter](https://flutter.dev/docs/get-started/install) en tu sistema.
- Acceso a una terminal con conexión a internet.
- Sistema operativo compatible con scripts de shell (Linux, macOS o Windows con WSL).

## ⚙️ Instalación y uso

### 1. Configurar la arquitectura completa

```bash
curl -O https://raw.githubusercontent.com/joalmr/set-up/main/t_core.sh \
  && curl -O https://raw.githubusercontent.com/joalmr/set-up/main/t_feature.sh \
  && curl -O https://raw.githubusercontent.com/joalmr/set-up/main/t_arch.sh \
  && chmod +x t_*.sh \
  && ./t_arch.sh \
  && rm t_arch.sh t_feature.sh t_core.sh
```

### 2. Configurar solo la estructura principal
```bash
curl -O https://raw.githubusercontent.com/joalmr/set-up/main/t_core.sh \
  && chmod +x t_core.sh \
  && ./t_core.sh \
  && rm t_core.sh
```

### 3. Agregar una nueva funcionalidad o módulo
```bash
curl -O https://raw.githubusercontent.com/joalmr/set-up/main/t_feature.sh \
  && chmod +x t_feature.sh \
  && ./t_feature.sh \
  && rm t_feature.sh
```

## 📁 Estructura generada
El script t_arch.sh crea la siguiente estructura de carpetas:

```css
lib/
├── core/
│   ├── models/
│   ├── services/
│   └── utils/
├── features/
│   └── example_feature/
│       ├── data/
│       ├── domain/
│       └── presentation/
└── main.dart
```

> Nota: Puedes personalizar los nombres de las carpetas y archivos según las necesidades de tu proyecto.
>

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas! Si deseas mejorar o agregar nuevas funcionalidades, por favor abre un [issue](https://github.com/joalmr/set-up/issues) o envía un [pull request](https://github.com/joalmr/set-up/pulls).