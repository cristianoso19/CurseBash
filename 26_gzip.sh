#!/bin/bash
# Empaquetar con GZIP 
# Autor: @cristianoso19

echo "Empaquetar todos los scripts en la carpeta actual"
tar -cvf shellCourse.tar *.sh
#Cuando se comprime con GZIP el original se elimina
#Solo permite comprimir UN ARCHIVO, por ese motivo se usa con 
#TAR
gzip shellCourse.tar
echo "Empaquetar un solo archivo con ratio 9"
gzip -9 9_options.sh
