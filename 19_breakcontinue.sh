#!/bin/bash
#Break y continue
#Autor: @cristianoso19

echo "Break y continue"

for fil in $(ls)
do
  for nombre in fil{1..4}
  do
    if [ $fil = "10_download.sh" ]; then
      break;
    elif [[ $fil == 4* ]]; then
      continue;
    else
      echo "Archivo: $fil _ $nombre"
    fi
  done
done
