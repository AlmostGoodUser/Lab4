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