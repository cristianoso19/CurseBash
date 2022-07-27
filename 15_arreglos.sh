#!/bin/bash
#Arreglos
#Autor: @cristianoso19

arregloNumeros=(1 2 3 4 5 6)
arregloStrings=(Cristian, Jenny, Cami, Eve)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de números: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de números: ${arregloRangos[*]}"

#Imprimir tamaño de arreglos
echo "Tamaño Arreglo de números: ${#arregloNumeros[*]}"
echo "Tamaño Arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño Arreglo de números: ${#arregloRangos[*]}"

#Imprimir indice 3 de arreglos
echo "Posicion 3 Arreglo de números: ${#arregloNumeros[3]}"
echo "Posicion 3 Arreglo de Cadenas: ${#arregloCadenas[3]}"
echo "Posicion 3 Arreglo de números: ${#arregloRangos[3]}"

#Añadir y eliminar valores en arreglos
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Tamaño arreglo de numeros: ${#arregloNumeros[*]}"

