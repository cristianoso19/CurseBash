# CurseBash
Platzi's bash curse repository
## Introducción
### Componentes de linux, tipos de shell y comandos de información
- Componentes
  - Kernel: nucleo del so maneja hardware y perifericos.
  - Shell: interprete con ui controla aplicaciones y programas.
  - Aplicaciones: Programas comunes que interactuan con el usuario.
- Shell
  - SH
  - KSH
  - CSH
  - BASH
> Para obtener información del comando usar: `man comando` y el mas completo`info comando`

### Bash Scripting
Es ejecutar comandos de forma secuencial para automatizar procesos especificos a traves de un conjunto de rutinas, funciones, comandos y procedimientos.
Estos comandos son colocados en un archivo de texto simple y ejecutados en la terminal del usuario.
> Usar en lo posible editores de texto de terminal como vim o emacs.

### Primer Script
- Crear archivo y abrirlo 1_UtilityPostgres.sh. La extensión es importante.
- `#!/bin/bash ` Establece el shell o interprete a usar. En este caso BASH.
- `echo "mensaje"` Muestra un mensaje en pantalla.
> Para ejecutar el programa debe tener los permisos de ejecucion `chmod u+x archivo.sh`.
> Para ejecutar el programa se lo realiza con `sh archivo.sh` ó `./archivo.sh`
> Debemos asegurarnos que el programa se ejecute sin problemas deberá tener un nombre único para eso usamos `type -a archivo.sh`
## Programación Shell Básica.
### Variables y alcance en Bash Shell
- Tipos de variables:
-- De usuario:
-- De entorno o de SO: se encuentran en `/etc/profile` generalmente se usua mayusculas como: 
``bash
CURSE_NAME=ProgracionBash
export CURSE_NAME //Que se inicie con el SO
``

- Declaracion de variables:
``bash
opcion=5 
nombre=Marco
``

- Uso de variables:
``bash
echo "Opcion: $opcion y nombre: $nombre"
``
> El alcance de las variables esta restringida al proceso que lo creo, es decir no se pueden usar en otr script a menos de usar la palabra reservada: export;
``bash
#exportar la varible nombre para que este disponible a otros procesos
export nombre
#llamar al siguiente script y recuperar la varible
./2_variables_alcance.sh
``
Y para recuperarla se lo llama en el siguiente script, así:
``bash
#!/bin/bash
#Program for view varibles declaration
#Variables a nivel de programa

echo "Opcion nombre del script anterior: $nombre"
``
