#!/bin/bash
# Escritura de un archivo 
# Autor: @cristianoso19

echo "Escribir en un archivo"

#forma 1
echo "Valores escritos con el comando echo" >> $1

#forma 2 multilinea
cat <<EOM >> $1
$2
EOM
