#!/bin/bash
# Menu de opciones con funciones y argumentos  
# Autor: @cristianoso19

#FUNCIONES
simulate () {
      sleep 3
}
instalar_postgres () {
  echo -e "\nInstalar_postgres..."
  simulate
}

desinstalar_postgres () {
  echo -e "\nDesinstalar Postgres..."
  simulate
}

sacar_respaldo () {
  echo -e "\nSacar Respaldo..."
  echo -e "\nDirectorio backup: $1"
  simulate
}

restaurar_respaldo () {
  echo -e "\nRestaurar respaldo..."
  echo -e "\nDirectorio respaldo: $1"
  simulate
}

opcion=0

while :
do
  #limpiar la pantalla
  clear
  #desplegar el menu
  echo "-----------------------------------------"
  echo "ADVUTIL - Programa de Utilidad de Adviser"
  echo "-----------------------------------------"
  echo "             MENU PRINCIPAL "
  echo "-----------------------------------------"
  echo "1. Instalar Postgres"
  echo "2. Desinstalar Postgres"
  echo "3. Sacar un respaldo"
  echo "4. Restar respaldo"
  echo "5. Salir"

  #Leer los datos del usuario
  read -n1 -p "Ingrese una opción [1-5]: " opcion
  echo -e "\n"

  #Validar la opción ingresada
  case $opcion in 
    1)
      instalar_postgres
      ;;
    2)
      desinstalar_postgres
      ;;
    3) 
      read -p "Directorio Backup: " directorioBackup
      sacar_respaldo $directorioBackup
      ;;
    4) 
      read -p "Directorio Respaldos: " directorioRespaldos
      restaurar_respaldo $directorioRespaldos
      ;;
    5) 
      echo "Saliendo..."
      sleep 3
      exit 0
      ;;
  esac
done
