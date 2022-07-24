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
