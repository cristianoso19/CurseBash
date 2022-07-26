#!/bin/bash
#Capture user info using echo and read and $REPLY
#Autor: Cristian Sacta 

option=0
backupName=""

echo "Utility Postgres Program"
echo -n "ingresar una opcion:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opcion: $option . backupName:$backupName"
