#!/bin/bash
rm resultados errores 2> /dev/null
touch resultados
touch errores
echo "Se han creado 2 archivos: resultados y errores"
for i in ejemplos/Casos\ 3/*.rtn 
do 
	echo "$i" | cat >> resultados >> errores
	echo | cat >> resultados >> errores
	echo | cat >> resultados >> errores
	cat "$i" >> resultados >> errores
	echo | cat >> resultados >> errores
	echo | cat >> resultados >> errores
	echo 'INICIO DE ANALISIS (Si esta vacio, esta en el otro archivo)' | cat >> resultados >> errores
	echo | cat >> resultados >> errores
	echo | cat >> resultados >> errores
	./retina "$i" >> resultados 2>> errores
	echo | cat >> resultados >> errores
	echo | cat >> resultados >> errores
	echo '###############################################################' | cat >> resultados >> errores
	echo | cat >> resultados >> errores
	echo | cat >> resultados >> errores
done

