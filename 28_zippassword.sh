#!/bin/bash
# Empaquetar ZIP y PASSWORD 
# Se usa por usa multicore, comprime un solo archivo
# Autor: @cristianoso19

echo "Empaquetar todos los scripts en la carpeta actual con zip y asignar un password"

zip -e shellCourse.zip *.sh

#para descomprimir:
#unzip archivo.zip
