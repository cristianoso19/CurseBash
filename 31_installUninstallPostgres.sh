#!/bin/bash
# Menu de opciones con funciones y argumentos  
# FOR UBUNTU
# Autor: @cristianoso19

#FUNCIONES
simulate () {
      sleep 3
}
instalar_postgres () {
  echo -e "\nVerificar instalacion de postgress..."
  verifyInstall=$(which psql)
  if [ $? eq 0 ]; then 
    echo -e "\nPostgres se encuentra instalado."
  else
    read -s -p "ingresar contraseña de sudo: " password
    read -s -p "Ingresar contrase de postgress: " passpsql
    echo "$password" | sudo -S apt install update
    echo "$password" | sudo -S apt-get -y install postgresql postresql-contrib
    sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$passpsql}';"
    echo "$password" | sudo -S systemctl enable postgresql.service
    echo "$password" | sudo -S systemctl start postgresql.service
  fi
  read -n 1 -s -r -p "Presione [ENTER] para continuar..."
}

desinstalar_postgres () {
  read -s -p "ingresar contraseña de sudo: " password
  echo -e "\n"
  echo "$password" | sudo -S systemctl stop postgresql.service
  echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
  echo "$password" | sudo -S rm -r /etc/postgresql 
  echo "$password" | sudo -S rm -r /etc/postgresql-common 
  echo "$password" | sudo -S userdel -r postgres 
  echo "$password" | sudo -S grupodel postgresql 
  read -n 1 -s -r -p "Presione [ENTER] para continuar..."
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
