#!/bin/bash
# Transferir empaquetados por red usando RSYNC 
# Se usa por usa multicore, comprime un solo archivo
# Autor: @cristianoso19

echo "Transferir empaquetados por red usando RSYNC"

read -p "Ingresar host: " host
read -p "Ingresar usuario: " user

echo -e "\nEmpaquetando la carpeta y transferirla segun los datos ingresados"

rsync -avz $(pwd) $user@$host:/home/ecmserver/prob
