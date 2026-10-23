#!/bin/bash
# Fecha de escritura: 22/10/2026
# Autor: Camila Roman
# Descripción: Script para ordenar los datos del proyecto KPC

PROYECTO="operacion_KPC"

echo "Creando estructura de operaciones: $PROYECTO ..."

mkdir -p "$PROYECTO"/{datos_crudos,datos_procesados,resultados,scripts,log}

echo "Datos crudos de los aislados KPC de la UCI" > "$PROYECTO/datos_crudos/LEEME.txt"
echo "Registro inicial del sistema" > "$PROYECTO/log/registro.log"
echo "Extructura de directorios generada:"

find "$PROYECTO" | sort

echo "Base de operaciones lista. Esperando secuencias..."
