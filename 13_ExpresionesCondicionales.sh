#!/bin/bash
#Expresiones condicionales
#Autor: @cristianoso19

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su pais:" pais
read -p "Ingrese el path de su archivo:" pathArchivo

echo -e "\nExpresiones condicionales con números"
if [ $edad -lt 10 ]; then
  echo "La persona es un niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
  echo "Es un adolecente"
else
  echo "Es mayor de edad"
fi

#Usamos "=" para comparar STRINGS
echo -e "\nExpresiones condicionales con cadenas"
if [ $pais = "USA" ]; then
  echo "La persona es americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
  echo "La persona es de Sudamerica"
else
  echo "Se desconoce la nacionalidad"
fi

#Usamos "=" para comparar archivos
echo -e "\nExpresiones condicionales con archivos"
#Verificar si el archivo existe
if [ -d $pathArchivo ]; then
  echo "El directorio $pathArchivo existe"
else
  echo "El directorion $pathArchivo no existe"
fi
