#!/bin/bash

# price_download_script.sh

###################################################################
#Downloads the energy pricing within a range from omie webpage
#Updated at 17/02/2016
###################################################################

counter=19

while [[ counter -lt 780 ]]; do
	tempday=$(date -d "-$counter day" '+%Y %d %m')
	array=($tempday)
	#echo $counter
	#echo ${array[0]}${array[1]}${array[2]}

	if [[ "${array[0]}${array[2]}${array[1]}" == "20150915" || "${array[0]}${array[2]}${array[1]}" == "20141018" || "${array[0]}${array[2]}${array[1]}" == "20140701" || "${array[0]}${array[2]}${array[1]}" == "20140606" ]]
	then
		$(wget -r http://www.omie.es/datosPub/marginalpdbc/marginalpdbc_${array[0]}${array[2]}${array[1]}.2 -P ~/tfg/data_warehouse/energy_pricing)
	else
		echo "hola"
		$(wget -r http://www.omie.es/datosPub/marginalpdbc/marginalpdbc_${array[0]}${array[2]}${array[1]}.1 -P ~/tfg/data_warehouse/energy_pricing)
	fi
	let counter=counter+1
done




