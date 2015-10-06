#!/bin/bash

# Þessi skripta bíður notandanum nokkra valmöguleika til að þjappa skrá

clear
echo -n "Hvaða skrá skal þjappa? ATH. skrifið fulla slóð! "

read skra

clear
echo "Þessar aðferðir eru í boði til að þjappa skrám: "

# Start here document
cat << zips

gzip
bzip2

zips
# End here document

echo -n "Hvaða aðferð viltu nota til að þjappa "$skra"?  "

read zips

echo

$zips $skra

clear

echo

echo ""$skra" hefur verið þjappað með "$zips"! "

echo
