#!/bin/bash
#Example options with or without parameters 
#Autor: Cristian Sacta 

echo "Programa Opciones"
echo "Opcion 1 enviada:  $1"
echo "Opcion 2 enviada:  $2"
echo "Opcion eviadas: $*"
echo -e "\n"
echo "Recuperar valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option used";;
-b) echo "-b option used";;
-c) echo "-c option used";;
-*) echo "$1 no es una opcion";;
esac
shift
done
