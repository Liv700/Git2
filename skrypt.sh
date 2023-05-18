#!/bin/bash

if [ $1 == "--date" ] || [ $1 == "-d" ]; then
	echo "Dzisiejsza data to:" $(date +%F)
elif [ $1 == "--logs" ] || [ $1 == "-l" ]; then
	if [ $# == 1 ]; then
		for i in {1..100}
		do
			touch log$i.txt
			echo "Nazwa pliku to:" log$i.txt>log$i.txt
			echo "Plik utworzony przez skrypt 'skrypt.sh'">>log$i.txt
			echo "Data utworzenia:" $(date +%F)>>log$i.txt
		done
	elif [ $# == 2 ]; then
		var=$2
		for i in {1..$var}
		do
			touch log$i.txt
			echo "Nazwa pliku to:" log$i.txt>log$i.txt
                        echo "Plik utworzony przez skrypt 'skrypt.sh'">>log$i.txt
                        echo "Data utworzenia:" $(date +%F)>>log$i.txt
		done
	fi
elif [ $1 == "--help" ] || [ $1 == "-h" ]; then
	echo "Dostępne opcje:"
	echo "--date lub -d - wyświetla bieżącą datę"
	echo "--logs lub -l - tworzy 100 plików tekstowych logx.txt w bieżącej lokalizacji"
	echo "--logs <liczba> lub -l <liczba> - tworzy podaną liczbę plików tekstowych logx.txt w bieżącej lokalizacji"
elif [ $1 == "init" ]; then
	git clone https://github.com/Liv700/Git2
	sciezka=$pwd
	export PATH=$sciezka:$PATH

fi
