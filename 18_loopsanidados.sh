#!/bin/bash
#loops anidados
#Autor: @cristianoso19

echo "Loops anidados"
for fil in $(ls)
do
  for nombre in fil{1..4}
  do
    echo "Archivo: $fil _ $nombre"
  done
done
