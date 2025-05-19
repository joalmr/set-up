#!/bin/bash
# Solicitar al usuario una variable
read -p "Introduce el nombre de la funcionalidad: " feature_name
feature_name=${feature_name:-auth}

echo "Creando estructura para la funcionalidad: $feature_name..."

# Función para crear archivos Dart con contenido básico
crear_archivo_dart() {
  local ruta_archivo=$1
  local contenido=$2

  # Crear el archivo y añadir el contenido
  echo "$contenido" > "$ruta_archivo"
  echo "Creado: $ruta_archivo"
}

echo "Iniciando la creación de la estructura de carpetas y archivos Dart..."

# Crear carpetas de características (features)
mkdir -p lib/features/$feature_name/data/datasources
crear_archivo_dart "lib/features/$feature_name/data/datasources/${feature_name}_datasources.dart" '''//
abstract class DataSource {
  // ...
}

class DataSourceImpl implements DataSource {
  // ...
}  
'''

mkdir -p lib/features/$feature_name/data/models
crear_archivo_dart "lib/features/$feature_name/data/models/${feature_name}_models.dart" '''//
import "../../domain/entities/'${feature_name}'_entities.dart";

class  Model extends Entity{
    // ...
    // A model is a more generic term and can represent structured data used within an application. 
    // ...
    // fromJson
    // ...
    // toJson

}
'''

mkdir -p lib/features/$feature_name/data/repositories_impl
crear_archivo_dart "lib/features/$feature_name/data/repositories_impl/${feature_name}_repositories_impl.dart" '''//
import "../datasources/'${feature_name}'_datasources.dart";
import "../../domain/repositories/'${feature_name}'_repositories.dart";

class RepositoryImp implements Repository{

    final DataSource dataSource;
    RepositoryImp({required this.dataSource});
  
    // ... example ...
    //
    // Future<User> getUser(String userId) async {
    //     return remoteDataSource.getUser(userId);
    //   }
    // ...
}
''' 

mkdir -p lib/features/$feature_name/domain/entities
crear_archivo_dart "lib/features/$feature_name/domain/entities/${feature_name}_entities.dart" '''//
class Entity {
    // ...
    // An entity represents a real-world object with a distinct identity.
}
'''

mkdir -p lib/features/$feature_name/domain/repositories
crear_archivo_dart "lib/features/$feature_name/domain/repositories/${feature_name}_repositories.dart" '''//
abstract class Repository {
  // ...
}
'''
    
mkdir -p lib/features/$feature_name/domain/usecases
crear_archivo_dart "lib/features/$feature_name/domain/usecases/${feature_name}_usecases.dart" '''//
import "../repositories/'${feature_name}'_repositories.dart";

class UseCase {
    final Repository repository;
  
    UseCase({required this.repository});
  
    // Future<User> execute(String userId) async {
    //   return repository.getUser(userId);
    // }
  }
'''
mkdir -p lib/features/$feature_name/presentation/pages
mkdir -p lib/features/$feature_name/presentation/widgets



echo "¡Estructura y archivos creados con éxito!"
