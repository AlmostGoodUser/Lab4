#!/bin/bash
if [ "$1" == "--date" ] || [  "$1" == "-d" ]
then
	echo $(date)
fi

if [ $1 == "--help" ] || [  "$1" == "-h" ]
then
	echo "--date -podaje aktualną date"
	echo "--logs -tworzy 100 dokumentów tekstowych z danymi wewnątrz"
	echo "--logs 'value' -tworzy value ilość dokumentów tekstowych z danymi wewnątrz"
	echo "--help -wyświetla dostępne flagi"
fi

if [ "$1" == "--logs" ] || [  "$1" == "-l" ]
then
	i=1
	while [ $i -le 100 ]
	do
		touch log$i.txt
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
	touch log$i.txt
		echo log$i.txt $0 $(date) >> log$i.txt
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