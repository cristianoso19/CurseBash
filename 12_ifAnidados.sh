#!/bin/bash
#If anidados 
#Autor: @cristianoso19

notaClase=0
continua=""

echo "Ejemplo sentencia If -else"

read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"

if [ $notaClase -ge 7 ]; then
  echo "El alumno aprueba"
  read -p "Desea continuar al siguiente nivel (s/n):" continua
  if [ $continua = "s" ]; then
    echo "Bienvenido al siguiente nivel"
  else
    echo "Gracias por trabajar con nosotros, mucha suerte !!!"
  fi
else
  echo "El alumno reprueba"
fi


