#!/bin/bash
# Crear archivos y directorios
# Autor: @cristianoso19

echo "Archivos - Directorios"

#Para ver se envian los parametros correctos
if [[ $# -ne 2 ]]; then
    echo "Número de parámetros incorrectos"
    exit 1
fi

if [ $1 = "d" ]; then
  mkdir -m 755 $2
  echo "Directorio creado correctamente"
  ls -la $2
elif [ $1 == "f" ]; then
  touch $2
  echo "Archivo creado correctamente"
  ls -la $2
else
  echo "No existe esa opcion: $1"
fi
