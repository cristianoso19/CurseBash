#!/bin/bash
#If else 
#Autor: @cristianoso19

notaClase=0
edad=0

echo "Ejemplo sentencia If -else"

read -n1 -p "Indique cual es su nota (1-9): " notaClase
echo -e "\n"

if (( $notaClase >= 7 )); then
  echo "El alumno aprueba"
else
  echo "El alumno reprueba"
fi

read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
  echo "La persona no puede votar"
else
  echo "La persona puede sufragar"
fi
