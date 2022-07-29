#!/bin/bash
# Empaquetar con PBZIP
# Se usa por usa multicore, comprime un solo archivo
# Autor: @cristianoso19

echo "Empaquetar todos los scripts en la carpeta actual"
tar -cvf shellCourse.tar *.sh
pbzip2 -f shellCourse.tar

echo "Empaquetar con tar y comprimir con pbzip2"
tar -cvf *.sh -c > shellCourseDos.tar.bz2
