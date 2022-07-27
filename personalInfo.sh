#!/bin/bash

rXage='^([1-9]{1,2})$'
rXfirstname='^([A-z]{2,})$'
rXlastname='^([A-z]{2,})$'
rXaddress='^([A-z]*)'
rXphone='^[0-9]{10})$'

read -p "Ingrese su nombre: " firstname
read -p "Ingrese su apellido: " lastname
read -p "Ingrese su edad: " age
read -p "Ingrese su direccion: " address
read -p "Ingrese su telefono: " phone

if [[ $age =~ $rXage ]]; then
  echo "Edad valida"
else 
  echo "Edad invalida"
fi

if [[ $firstname =~ $rXfirstname ]]; then
  echo "Nombre valido"
else 
  echo "Nombre invalido"
fi

if [[ $lastname =~ $rXlastname ]]; then
  echo "Apellido valido"
else 
  echo "Apellido invalido"
fi

if [[ $address =~ $rXaddress ]]; then
  echo "Direccion valido"
else 
  echo "Direccion invalido"
fi

if [[ $phone =~ $rXphone ]]; then
  echo "Telefono valido"
else 
  echo "Telefono invalido"
fi

echo -e "Tú información: \n$firstname \n$lastname \n$age \n$address \n$phone"

