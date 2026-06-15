#!/bin/bash

while true;
do
read -p "Introduce el host para el escaneo de puertos " host

if [[ ! "$host" =~ ^[0-9]+(\.[0-9]+){3}$ ]]; then
        echo "Formato invalido"
        continue

fi



IFS='.' read -r a b c d <<< "$host"

if (( a < 0 || a > 255 || b < 0 || b > 255 || c < 0 || c > 255 || d < 0 || d > 255 )); then
        echo "IP fuera del rango"

continue
fi


break
done
if ping -c 1 "$host" > /dev/null 2>&1; then
    echo "Host activo, escaneando puertos..."
        # Cambia esto y pon el rango de puertos que quieras
    for puerto in {1..100}; do
        if timeout 1 bash -c "echo > /dev/tcp/$host/$puerto" 2>/dev/null; then
            echo "El puerto $puerto esta abierto"
        fi
    done
else