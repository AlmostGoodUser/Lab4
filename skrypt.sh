#!/bin/bash
if [ "$1" == "--date" ]
then
	echo $(date)
fi

if [ $1 == "--help" ]
then
	echo "--date -podaje aktualną date"
	echo "--logs -tworzy 100 dokumentów tekstowych z danymi wewnątrz"
	echo "--logs 'value' -tworzy value ilość dokumentów tekstowych z danymi wewnątrz"
	echo "--help -wyświetla dostępne flagi"
fi

if [ "$1" == "--logs" ]
then
	i=1
	while [ $i -le 100 ]
	do
		touch log$i.txt
		echo log$i.txt $0 $(date) >> log$i.txt
		i=$(($i+1))
	done
fi