#!/bin/bash
# Lectura de un archivo 
# Autor: @cristianoso19

echo "Leer en un archivo"

cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

#Otra forma con la variable especial IFS
#Se usa para evitar que los espacios en blanco se recorten
#al inicio o final del archivo
#usando while
echo -e "\nLeer archivos línea a línea"
while IFS= read linea
do
  echo "$linea"
done < $1
