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
		for i in `seq 1 $var`
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
	echo "--init - klonuje całe repozytorium do bieżącego katalogu i ustawia ścieżkę w zmiennej środowiskowej PATH"
	echo "--error <liczba> lub -e <liczba> - tworzy podaną liczbę plików errorx.txt w katalogu o tej samej nazwie , bez podania liczby tworzy 100 plików errorx.txt z katalogami"
elif [ $1 == "--init" ]; then
	git clone https://github.com/Liv700/Git2
	sciezka=$pwd
	export PATH=$sciezka:$PATH
elif [ $1 == "--error" ] || [ $1 == "-e" ]; then
	if [ $# == 1 ]; then
		for i in {1..100}
		do
			mkdir error$i
			touch error$i/error$i.txt
		done
	elif [ $# == 2 ]; then
		for i in `seq 1 $2`
		do
			mkdir error$i
			touch error$i/error$i.txt
		done
	fi
fi

