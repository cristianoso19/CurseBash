#!/bin/bash
#Save output of commands in a varible
#Autor: Cristian Sacta 

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es la siguiente: $ubicacionActual"
echo "Información del kernel: $infoKernel"
