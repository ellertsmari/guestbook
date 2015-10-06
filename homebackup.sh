#!/bin/bash

# Þessi skripta gerir öryggisafrit af heimamöppunni.

# Variables.

FILENAME=/var/backups/Homebackup_$(date +%Y-%m-%d)_$(date +%T).tar.gz

# Athuga arguments.

if [ $# -gt 0 ];
	then
		echo "Notkun: "$0". Reyndu aftur."
	exit 1
fi

# Taka afrit.

clear
echo "Nú skal gera afrit af heimamöppu. Afritinu verður þjappað með gzip. Þetta gæti tekið nokkur augnablik!"

sleep 2s

echo "ATH. ég fann ekki hvernig ætti að gera incremental backup og get því ekki boðið upp á það!"

echo "Smellið á [ENTER] til að halda áfram."

read enter

sudo tar -czvf $FILENAME ~/

sleep 2s

clear
echo "Gert hefur verið öryggisafrit af heimamöppunni í /var/backups/ og því þjappað með gzip."
