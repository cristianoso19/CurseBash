#!/bin/bash
#For loop
#Autor: @cristianoso19

arregloNumeros=(1 2 3 4 5 6)

echo "iterar en la lista de numeros"

for num in ${arregloNumeros[*]}
do
  echo "Número: $num"
done

echo "Iterar en strings"
for nom in "Marco" "Eve" "Cami" "Jenny"
do 
  echo "Nombres: $nom"
done

echo "Iterar files"
for file in *
do 
  echo "Archivo: $file"
done

echo "Iterar usando comandos"
for fil in $(ls)
do
  echo "Archivo: $fil"
done

echo "Iterar usando el formato tradicional THREE FOR LOOP"
for ((i=1; i<10; i++))
do
  echo "Numero: $i"
done

