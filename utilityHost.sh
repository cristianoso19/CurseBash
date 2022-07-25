#!/bin/bash

option=$1
result=$(ping -c 10 $option)

echo "Resultado\n $result"
