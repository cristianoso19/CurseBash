#!/bin/bash
#Program for view varibles declaration
#Variables a nivel de programa
opcion=5 
nombre=Marco
#imprimimos el valor de opcion y nombre
echo "Opcion: $opcion y nombre: $nombre"
#exportar la varible nombre para que este disponible a otros procesos
export nombre

#llamar al siguiente script y recuperar la varible
./2_variables_alcance.sh
