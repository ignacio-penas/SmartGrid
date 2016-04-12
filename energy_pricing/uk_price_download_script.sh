#!/bin/bash

# uk_price_download_script.sh

###################################################################
#Downloads the energy pricing within a range from omie webpage
#Updated at 17/02/2016
###################################################################

counter=6
plusone=5

while [[ 1 -lt counter ]]; do

	if [[ 5 -lt counter ]]
	then
		$(wget -r https://hourlypricing.comed.com/api?type=5minutefeed\&datestart=201501010100\&dateend=201603012300 -P /home/nacho/tfg/data_warehouse/uk_energy)
	else
		echo "hola"
		$(wget -r https://hourlypricing.comed.com/api?type=5minutefeed\&datestart=201${plusone}01010100\&dateend=201${counter}01010100 -P /home/nacho/tfg/data_warehouse/uk_energy)
	fi

	let counter=counter-1
	let plusone=plusone-1
done




