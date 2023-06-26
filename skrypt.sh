#!/bin/bash
if [ "$1" == "--date" ] || [  "$1" == "-d" ]
then
	echo $(date)
fi

if [ $1 == "--help" ] || [  "$1" == "-h" ]
then
	echo "--date -podaje aktualną date"
	echo "--logs -tworzy 100 plikow z plikami tekstowymi z danymi wewnątrz"
	echo "--logs 'value' -tworzy value ilość plikow z dokumentami tekstowymi z danymi wewnątrz"
	echo "--help -wyświetla dostępne flagi"
	echo "-d -podaje aktualną date"
	echo "-l -tworzy 100 dokumentów tekstowych z danymi wewnątrz"
	echo "l 'value' -tworzy value ilość dokumentów tekstowych z danymi wewnątrz"
	echo "-h -wyświetla dostępne flagi"
	echo "--init -klonuje cale repozytorium i dodaje pwd do PATH"
	echo "--error 30” tworzy errorx/errorx.txt, bez liczby ma domyślne tworzyć 100 plików"
fi

if [ "$1" == "--logs" ] || [  "$1" == "-l" ]
then
	i=1
	while [ $i -le 100 ]
	do
		mkdir log$i
		touch log$i/log$i.txt
		echo log$i.txt $0 $(date) >> log$i.txt
		i=$(($i+1))
	done
fi

if [ $2 ]
then
	if [ $1 == "--logs" ] || [  "$1" == "-l" ]
	then
	i=1
	while [ $i -le $2 ]
	do
		mkdir log$i
		touch log$i/log$i.txt
		echo log$i.txt $0 $(date) >> log$i.txt
		i=$(($i+1))
	done
	fi

	if [ $1 == "--error" ] && [  "$2" == "30" ]
	then
	i=1
	while [ $i -le $2 ]
	do
		mkdir error$i
		touch error$i/error$i.txt
		echo error$i.txt $0 $(date) >> error$i.txt
		i=$(($i+1))
	done
	fi

	if [ $1 == "-e" ] && [  "$2" == "30" ]
	then
	i=1
	while [ $i -le $2 ]
	do
		mkdir error$i
		touch error$i/error$i.txt
		echo error$i.txt $0 $(date) >> error$i.txt
		i=$(($i+1))
	done
	fi
fi

if [ "$1" == "--init" ]
then
	git init 
	git clone https://github.com/AlmostGoodUser/Lab4
	export PATH="$PATH:$(pwd)"
fi