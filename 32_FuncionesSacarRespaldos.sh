#!/bin/bash
# Menu de opciones con funciones y argumentos  
# FOR UBUNTU
# Autor: @cristianoso19

today=`date +%Y%m%d`

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
  echo "Listar las DB"
  sudo -u postgresql psql -c "\l"
  read -p "Elegir la base de datos a respaldar: "dbRespaldo
  echo -e "\n"
  if [ -d "$1" ]; then
    echo "Establecer permisos directorio"
    echo "$password" | sudo -S chmod 755 $1 
    echo "Realizando respaldo..."
    sudo -u postgres pg_dump -Fc $dbRespaldo > "$1/bdrespaldo$today.bak"
    echo "Respaldo realizado correctamente en la ubicación $1/bdrespaldo$today.bak"
  else
    echo "El directorio $1 No existe"
  fi

  read -n 1 -s -r -p "Presione [ENTER] para continuar..."
}

restaurar_respaldo () {
  echo "Listar respaldos"
  read -p "Ingresar el directorio donde estan los respaldos:" directorioBackup
  ls -la $directorioBackup
  read -p "Elegir el respaldo a restaurar" respaldoResataurar
  echo -e "\n"
  read -p "Ingresa el nombre de la base de datos destino: " bddDestino
  #Verificar si la DB existe
  verifyDb=$(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep wq $bddDestino)
  if [ $? eq 0 ]; then
    echo "Restaurando en DB destino: $bddDestino"
  else
    sudo -u postgres psql -c "create database $bddDestino"
  fi
  if [ -f "$1/$respaldoResataurar" ]; then
    echo "Restaurando respaldo ..."
    sudo -u postgres pg_restore -Fc -d $bddDestino "$directorioBackup/$respaldoResataurar"
    echo "listar la base de datos"
    sudo -u postbres psql -c "\l"
  else
    echo "El respaldo $respaldoResataurar no existe"
  fi
  read -n 1 -s -r -p "Presione [ENTER] para continuar..."
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
