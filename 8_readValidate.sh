#!/bin/bash
#Capture info and validate  
#Autor: Cristian Sacta 

option=0
backupName=""
clave=""

echo "Utility Postgres Program"
#Acept input of one character data
read -n1 -p "ingresar una opcion:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Opcion: $option . backupName:$backupName"
read -s -p "Clave: " clave
echo "Clave: $Clave"
