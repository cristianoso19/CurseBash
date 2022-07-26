#!/bin/bash
#Capture user info using read 
#Autor: Cristian Sacta 

option=0
backupName=""

echo "Utility Postgres Program"

read -p "ingresar una opcion:" option

read -p "Ingresar el nombre del archivo del backup:" backupName

echo "Opcion: $option . backupName:$backupName"
