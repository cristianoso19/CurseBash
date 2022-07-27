#!/bin/bash
#Menu program for server 
#Autor: cristianoso19@gmail.com
#!/bin/bash
# Bash Menu Script Example
echo "Mantenimiento del servidor"
PS3="Porfavor elige una opción: "

options=("Facturación Electrónica" "Indice Corrupto" "Reiniciar Equipo" "Servicios Adicionales" "Quit")

select opt in "${options[@]}"
do
    case $opt in
        "Facturación Electrónica")
            echo "you chose choice 1"
            ;;
        "Indice Corrupto")
            echo "you chose choice 2"
            ;;
        "Reiniciar Equipo")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Servicios Adicionales")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
