#!/bin/bash
#If else ifelse 
#Autor: @cristianoso19

edad=0

echo "Ejemplo sentencia If -else elseif"

read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
  echo "La persona es adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
  echo "La persona es adulta"
else
  echo "La persona es un adulto mayor"
fi
