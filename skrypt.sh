#!/bin/bash

if [ $1 == "--date" ]; then
	echo "Dzisiejsza data to:" $(date +%F)
elif [ $1 == "--logs" ]; then
	for i in {1..100}
	do
		touch log$i.txt
		echo "Nazwa pliku to:" log$i.txt>log$i.txt
		echo "Plik utworzony przez skrypt 'skrypt.sh'">>log$i.txt
		echo "Data utworzenia:" $(date +%F)>>log$i.txt
	done
fi
