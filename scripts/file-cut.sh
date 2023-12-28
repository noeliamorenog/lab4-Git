#!/bin/bash

# Obtener el nombre de usuario
usuario=$(whoami)

# Verificar si el usuario es alumno22
if [ "$usuario" == "alumno22" ]; then
    # Iterar sobre los ficheros originales
    for fichero in Sample1.fastq Sample2.fastq Sample3.fastq Sample4.fastq
    do
        # Nombre del fichero de salida
        fichero_salida="${fichero%.fastq}_cortado.fastq"

        # Calcular el número de líneas a mantener
        num_lineas=$(wc -l < "$fichero")
        num_lineas_cortar=$((num_lineas / 22))

        # Cortar y guardar la parte superior del fichero
        head -n "$num_lineas_cortar" "$fichero" > "$fichero_salida"
    done

    echo "Ficheros cortados y guardados para el usuario alumno22."
else
    echo "Este script solo es válido para el usuario alumno22."
fi

