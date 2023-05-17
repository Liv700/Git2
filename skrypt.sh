#!/bin/bash

if [ $1 == "--date" ]; then
	echo "Dzisiejsza data to:" $(date +%F)
elif [ $1 == "--logs" ]; then
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
elif [ $1 == "--help" ]; then
	echo "Dostępne opcje:"
	echo "--date - wyświetla bieżącą datę"
	echo "--logs - tworzy 100 plików tekstowych logx.txt w bieżącej lokalizacji"
	echo "--logs <liczba> - tworzy podaną liczbę plików tekstowych logx.txt w bieżącej lokalizacji"
fi

#stworzenie tagu v1.0 do aktualnej wersji

git checkout main
git tag v1.0 
