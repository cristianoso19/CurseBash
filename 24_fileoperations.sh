#!/bin/bash
# Operaciones de un archivo 
# Autor: @cristianoso19

echo "Operaciones de un archivo"
mkdir -m 755 backupScripts



echo -e "\nCopiar scripts en directorio actual a nuevo directorio"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio de backupScripts a otra ubicación: $HOME"
mv backupScripts $HOME

echo -e "\n Eliminar los archivos .txt"
rm *.txt

