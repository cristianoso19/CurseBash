#!/bin/bash
# Menu de opciones para utilidades
# Autor: @cristianoso19

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
      echo "Instalar Postgres..."
      sleep 3
      ;;
    2)
      echo "Desinstalar Postgres..."
      sleep 3
      ;;
    3) 
      echo "Sacar Respaldo..."
      sleep 3
      ;;
    4) 
      echo "Restaurar respaldo..."
      sleep 3
      ;;
    5) 
      echo "Saliendo..."
      sleep 3
      exit 0
      ;;
  esac
done
