#!/bin/bash
# Fecha: 23/10/2026
# Autora: Camila Roman
# Descripción: Fase 1 - Informe de reconocimiento del servidor

#Imprime lo solicitado entre comillas dobles en la pantalla
echo "============================================================================================="
echo "                        🔏💻  INNFORME DE RECONOCIMIENTO DEL SERVIDOR                      "
echo "============================================================================================="
#Imprime una linea en blanco
echo ""
#Imprime el nombre del usuario actual que ha iniciado sesion en el sistema
echo "Usuario: $(whoami)"
#Imprime la fecha actual y la hora del sistema operativo
echo "Fecha: $(date)"
#Imprime la ruta completa del directorio actual de trabajo
echo "Directorio actual: $(pwd)"
echo ""
echo "Contenido del directorio:"
#Lista los archivos del directorio en formato largo con tamaños legibles
ls -lh
echo ""
echo "Espacio ocupado en disco:"
du -sh .
echo ""
echo "Espacio disponible en disco:"
df -h .

