#!/bin/bash
#Sentencias Case
#Autor: @cristianoso19

opcion=""

echo "Ejemplo Sentencia Case"
read -n1 -p "Ingrese una opción de la A-Z: " opcion
echo -e "\n"

case $opcion in 
  "A") 
    echo -e "\n Guardar Archivo";;
  "B")
    echo -e "\n Eliminar Archivo";;
  [C-E])
    echo -e "\n No esta implementada la operación";;
  "*")
    echo -e "\n Opcion incorrecta";;
esac
