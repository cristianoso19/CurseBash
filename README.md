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
```bash
CURSE_NAME=ProgracionBash
export CURSE_NAME //Que se inicie con el SO
```

- Declaracion de variables:
```bash
opcion=5 
nombre=Marco
```

- Uso de variables:
```bash
echo "Opcion: $opcion y nombre: $nombre"
```
> El alcance de las variables esta restringida al proceso que lo creo, es decir no se pueden usar en otr script a menos de usar la palabra reservada: export;
```bash
#exportar la varible nombre para que este disponible a otros procesos
export nombre
#llamar al siguiente script y recuperar la varible
./2_variables_alcance.sh
```
-Uso de la variable en un siguiente script se lo llama, así:
```bash
#!/bin/bash
#Program for view varibles declaration
#Variables a nivel de programa

echo "Opcion nombre del script anterior: $nombre"
```
### Tipos de operadores
```bash
#!/bin/bash
#Operators
#Autor: Cristian Sacta 

numA=10
numB=4

echo "Operadores Aritmeticos"
echo "Numeros: A=$numA y B=$numB"
echo "Sumar A+B =" $((numA + numB))
echo "Restar A-B =" $((numA - numB))
echo "Multiplicar A*B =" $((numA * numB))
echo "Dividir A/B =" $((numA / numB))
echo "Residuo A%B =" $((numA % numB))

echo -e "\nOperadores Relacionales"
echo "Numeros: A=$numA y B=$numB"
echo "A > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <=9 B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A !=9 B =" $((numA != numB))

echo -e "\nOperadores Asignación"
echo "Numeros: A=$numA y B=$numB"
echo "Sumar A += B" $((numA += numB))
echo "Restar A -= B" $((numA -= numB))
echo "Multiplicacion A *= B" $((numA *= numB))
echo "Dividir A /= B" $((numA /= numB))
echo "Residuo A %= B" $((numA %= numB))
```
### Script con Argumentos
| Identificador | Descripción                          |
| ------------- | ------------------------------------ |
| $0            | El nombre del script                 |
| \$1 al ${10}  | El número de argumento, si son más de un dígito se usan {} |
| $#            | Contador de argumentos  |
| $*            | Refiere a los argumentos | 

```bash
#!/bin/bash
#Parametros

nombreCurso=$1
horarioCurso=$2

echo "EL nombre del curso es: $nombreCurso"
echo "El horario del curso es: $horarioCurso"
echo "El numero de parametros enviados es de: $#"
echo "Los parametros enviados son: $*"
```
### Sustitución de comandos en variables
Se puede almacenar la salida de una ejecución de un comando en una variable
- Usando el backtick caracter. (`)
- Usando el signo $: `$(comando)`
```bash
#!/bin/bash
#Save output of commands in a varible
#Autor: Cristian Sacta 

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es la siguiente: $ubicacionActual"
echo "Información del kernel: $infoKernel"

```

### Debug
- bash -v: Muestra el resultado detallado de nuestro script, evaluado linea a linea.
- bash -x: Despliega la información de los comandos usados y su salida. 

## Scripts Interactivos
### Capturar información usuario
Se usa el comando `read` de dos maneras:
- Usandolo en conjunto con `echo`y `$REPLY`
```bash
#!/bin/bash
#Capture user info using echo and read and $REPLY
#Autor: Cristian Sacta 

option=0
backupName=""

echo "Utility Postgres Program"
echo -n "ingresar una opcion:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opcion: $option . backupName:$backupName"

```
- Usando directamente `read`
```bash
#!/bin/bash
#Capture user info using read 
#Autor: Cristian Sacta 

option=0
backupName=""

echo "Utility Postgres Program"

read -p "ingresar una opcion:" option

read -p "Ingresar el nombre del archivo del backup:" backupName

echo "Opcion: $option . backupName:$backupName"
```

### Expresiones regulares

Cuando se solicita ingresar información al usuario que está usando el programa, independientemente el lenguaje que esté realizado, es importante considerar la validación de la información no solo en su tamaño sino también en los tipos de datos y formatos soportados, esto nos permite asegurar la calidad de la información que recibida y que sera procesada.

Dentro de este contexto en la programación bash para cumplir con este objetivo se utiliza **EXPRESIONES REGULARES**, las cuales son básicamente cadenas de caracteres que definen un patrón de búsqueda que se valida frente a una información específica para asegurar que cumple la validación definida.
  
Se necesita conocer ciertos criterios utilizados en las expresiones regulares que son los siguientes:

- `^` Caracter que representa el inicio de la expresión regular.
- `$` Caracter que representa el final de la expresión regular.
- `*` Caracter que representa cero o más ocurrencias de la expresión
- `+` Caracter que representa una o más ocurrencias de la expresión.
- `{n}` Representa n veces de una expresión.
- `[ ]` Representa un conjunto de caracteres, por ejemplo: [a-z] representa las letras del abecedario de la a a la z.

[Cheatsheet regex] (http://w3.unpocodetodo.info/utiles/regex.php)

Tomando en cuenta estos criterios se realizará un programa que valida la siguiente información:

- Número de Identificación de un tamaño de 10 números. Ejemplo: 1717836520.
- País de Origen denotado por dos letras en un rango específico. Ejemplo: EC, CO, US.
- Fecha de Nacimiento en el formato yyyyMMDD. Ejemplo: 20181222

Primero se definirá las expresiones regulares y se solicitará la información del usuario:

<img src="https://static.platzi.com/media/user_upload/Captura%20de%20pantalla%202019-01-16%20a%20la%28s%29%2015.58.48-4bedb3f4-a096-4381-97ad-61e73844d1d4.jpg"/>

Luego se validará cada expresión regular comenzando con la identificación, para lo cual para cada validación se utilizará la sentencia condicional if y para comparar la expresión se debe utilizar el siguiente formato especial if [[ $variable =~ $expresionRegular ]] como se muestra a continuación.

<img src="https://static.platzi.com/media/user_upload/Captura%20de%20pantalla%202019-01-16%20a%20la%28s%29%2015.59.26-00ffab79-1f96-4d00-b135-4e82996e1c07.jpg"/>

Se realizará la ejecución de la aplicación con los dos escenarios el correcto y el incorrecto como se muestra a continuación:

<img src="https://static.platzi.com/media/user_upload/Captura%20de%20pantalla%202019-01-16%20a%20la%28s%29%2015.59.55-0c3eb175-30c5-4563-97f0-d325ead87735.jpg"/>

### Validar información

Es importante para asegurarnos la calidad de la información ingresada, para evitar posibles errores.
Tenemos dos maneras de hacerlo.
- `read -n<numero de caracteres>`
- Usando expresiones regulares

> Cuando usamos este tipo de validaciones **NO SE PUEDE BORRAR LA INFORMACIÓN INGRESADA CON** <kbd>BACKSPACE</kbd>

```bash
#!/bin/bash
#Capture info and validate  
#Autor: Cristian Sacta 

option=0
backupName=""
clave=""

echo "Utility Postgres Program"
#Acept input of one character data
read -n1 -p "ingresar una opcion:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Opcion: $option . backupName:$backupName"
#Ideal para contraseñas
read -s -p "Clave: " clave
echo "Clave: $Clave"
```

### Envio de Opciones/Parametros
-  Se pueden enviar independientemente o complementaria. Encontraremos que se puede enviar solo opciones o parametros con opciones.
- La diferencia entre un parametro y una opcion, es que la opcion se ingresa antecendedo el signo "-".
```bash
#!/bin/bash
#Example options with or without parameters 
#Autor: Cristian Sacta 

echo "Programa Opciones"
echo "Opcion 1 enviada:  $1"
echo "Opcion 2 enviada:  $2"
echo "Opcion eviadas: $*"
echo -e "\n"
echo "Recuperar valores"
while [ -n "$1" ]
do
case "$1" in
-a) echo "-a option used";;
-b) echo "-b option used";;
-c) echo "-c option used";;
-*) echo "$1 no es una opcion";;
esac
shift
done

```

### Descargar información de internet.

Se requiere por que es necesario descargar archivos o programas por la consola. Para eso existe

- wget
- curl

```bash
#!/bin/bash
#Download files or programs from internet
#@cristianoso19

echo "Descargar info desde internet"

wget https://github.com/lusaxweb/vuesax-next

```

### Reto 2
Solicitar la información de cada uno de ustedes como nombres, apellidos, edad, dirección y números telefónicos; y posterior imprima toda la información.
```bash
#!/bin/bash

rXage='^([1-9]{1,2})$'
rXfirstname='^([A-z]{2,})$'
rXlastname='^([A-z]{2,})$'
rXaddress='^([A-z]*)'
rXphone='^[0-9]{10})$'

read -p "Ingrese su nombre: " firstname
read -p "Ingrese su apellido: " lastname
read -p "Ingrese su edad: " age
read -p "Ingrese su direccion: " address
read -p "Ingrese su telefono: " phone

if [[ $age =~ $rXage ]]; then
  echo "Edad valida"
else 
  echo "Edad invalida"
fi

if [[ $firstname =~ $rXfirstname ]]; then
  echo "Nombre valido"
else 
  echo "Nombre invalido"
fi

if [[ $lastname =~ $rXlastname ]]; then
  echo "Apellido valido"
else 
  echo "Apellido invalido"
fi

if [[ $address =~ $rXaddress ]]; then
  echo "Direccion valido"
else 
  echo "Direccion invalido"
fi

if [[ $phone =~ $rXphone ]]; then
  echo "Telefono valido"
else 
  echo "Telefono invalido"
fi

echo -e "Tú información: \n$firstname \n$lastname \n$age \n$address \n$phone"
```

## Condicionales

### IF / ELSE
Usa opradores lógicos y condicionales:

```bash
#Como usar IF

if [ condition ]; then
  statement 1 
elif [ condition ]; then
  statement 2
else
  statement 3
fi
```
Tambien podremos usar estos opradores relacionales
- eq: is equal to // Igual a
- ne: is not equal to // No es igual a
- gt: is greater than // Mayor a
- ge: is greater than or equal to // Mayor o igual a
- lt: is less than // Menor a
- le: is less than or equal to // Menor o igual a

```bash
#!/bin/bash
#If else ifelse 
#Autor: @cristianoso19

edad=0

echo "Ejemplo sentencia If -else elseif"

read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
  echo "La persona es adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
  echo "La persona es adulta"
else
  echo "La persona es un adulto mayor"
fi
```
### If anidados
```bash
if [ condition ]; then
  if [ condition ]; then
    statement 1
  else
    statement 2
  fi
else
  statement 3
fi
```

### Expresiones condicionales.

- Usada enn decisión, iteración.
- Formada por una o más condiciones.
- Condiciones con tipos de datos diferentes.
- Usa los operadores relacionales y condicinales.
```bash
#!/bin/bash
#Expresiones condicionales
#Autor: @cristianoso19

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su pais:" pais
read -p "Ingrese el path de su archivo:" pathArchivo

echo -e "\nExpresiones condicionales con números"
if [ $edad -lt 10 ]; then
  echo "La persona es un niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
  echo "Es un adolecente"
else
  echo "Es mayor de edad"
fi

#Usamos "=" para comparar STRINGS
echo -e "\nExpresiones condicionales con cadenas"
if [ $pais = "USA" ]; then
  echo "La persona es americana"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
  echo "La persona es de Sudamerica"
else
  echo "Se desconoce la nacionalidad"
fi

#Usamos "=" para comparar archivos
echo -e "\nExpresiones condicionales con archivos"
#Verificar si el archivo existe
if [ -d $pathArchivo ]; then
  echo "El directorio $pathArchivo existe"
else
  echo "El directorion $pathArchivo no existe"
fi
```

### Sentencias Case
Similar a **SWITCH**

```bash
case expression in 
opcion1)
 statements 1;;
opcion2)
  statemens 2;;
...
esac
```
- Evalua una expresion simple o una cadena.
- Muy similar a la sentencia switch.
- Puede evaluar rango de caracteres.
```bash
#!/bin/bash
#Sentencias Case
#Autor: @cristianoso19

opcion=""

echo "Ejemplo Sentencia Case"
read -n1 -p "Ingrese una opción de la A-Z: " opcion
echo -e "\n"

case $opcion in 
  "A") 
    echo -e "\n Guardar Archivo";;
  "B")
    echo -e "\n Eliminar Archivo";;
  [C-E])
    echo -e "\n No esta implementada la operación";;
  "*")
    echo -e "\n Opcion incorrecta";;
esac
```

## Iteracion
### Arreglos
Es una variable con "n" cantidad de elementos", ya sean numeros, strings. Empiezan por 0


```bash
#!/bin/bash
#Arreglos
#Autor: @cristianoso19

arregloNumeros=(1 2 3 4 5 6)
arregloStrings=(Cristian, Jenny, Cami, Eve)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de números: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de números: ${arregloRangos[*]}"

#Imprimir tamaño de arreglos
echo "Tamaño Arreglo de números: ${#arregloNumeros[*]}"
echo "Tamaño Arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño Arreglo de números: ${#arregloRangos[*]}"

#Imprimir indice 3 de arreglos
echo "Posicion 3 Arreglo de números: ${#arregloNumeros[3]}"
echo "Posicion 3 Arreglo de Cadenas: ${#arregloCadenas[3]}"
echo "Posicion 3 Arreglo de números: ${#arregloRangos[3]}"

#Añadir y eliminar valores en arreglos
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de numeros: ${arregloNumeros[*]}"
echo "Tamaño arreglo de numeros: ${#arregloNumeros[*]}"
```

