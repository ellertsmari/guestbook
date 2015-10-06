#!/bin/bash

# Þessi skripta bætir við notanda.
clear
if [ $# -gt 1 ];
	then
		echo "Notkun: $0 notandanafn"
		exit
	elif [ $# -lt 1 ];
		then
		echo "Veljið notandanafn: "
		read notandanafn
	else
		notandanafn=$1
fi

echo "Veljið password: "

read pass

echo "Hvert er fullt nafn þitt?"

read nafn

# Búa til notanda
sudo useradd $notandanafn -U -p "$pass" -c "$nafn"

clear
echo "Notandinn $notandanafn hefur verið búinn til fyrir $nafn."
sleep 2s
