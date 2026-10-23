#!/bin/bash
# Fecha: 23/10/2026
# Autor: Camila Roman
# Descripción: Fase 3 - Interceptar secuencias

# Variable con la ruta del archivo FASTA
FASTA="operacion_KPC/datos_crudos/aislados_uci.fasta"

mkdir -p operacion_KPC/datos_crudos
echo "Generando archivo FASTA con aislados de la UCI..."

# Crear el archivo FASTA con las secuencias
cat > "$FASTA" << 'EOF'
>KP_UCI_001|Klebsiella_pneumoniae|paciente_01
ATGCGTACGTTAGCTAGCTAGCTAGCTAGCTAGCTA
>KP_UCI_002|Klebsiella_pneumoniae|paciente_02
ATGCGTACGTTAGCTAGCTAGCTAGCTAGCTAGCTAGCTAGCTA
>KP_UCI_003|Klebsiella_pneumoniae|paciente_03
ATGCGTACGTTAGCTAGCTAGCTAGCTAGCTAGCTA
EOF

echo ""
# Cuenta las líneas que contienen el símbolo > (cabeceras)
echo "Secuencias interceptadas: $(grep -c '>' "$FASTA")"

echo ""
echo "Identificadores:"
# Muestra solo las cabeceras
grep ">" "$FASTA"

echo ""
echo "Longitud aproximada:"
# Aísla la línea de secuencia (la siguiente a la cabecera) y cuenta sus caracteres
echo "KP_UCI_001 : $(grep -A1 'KP_UCI_001' "$FASTA" | tail -1 | wc -c) caracteres"
echo "KP_UCI_002 : $(grep -A1 'KP_UCI_002' "$FASTA" | tail -1 | wc -c) caracteres"
echo "KP_UCI_003 : $(grep -A1 'KP_UCI_003' "$FASTA" | tail -1 | wc -c) caracteres"

# Cuenta regresiva
echo ""
echo "Este mensaje se autodestruirá en..."
echo "3"; sleep 1
echo "2"; sleep 1
echo "1"; sleep 1
clear
