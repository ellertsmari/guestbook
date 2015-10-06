#!/bin/bash

# Þessi skripta gefur upplýsingar um skrá.

clear
echo "Hvaða skrá viltu fá upplýsingar um?"
read FILENAME


echo "Eiginleikar fyrir $FILENAME:"

if [ -f $FILENAME ]; then
  echo "Stærð skráar: $(ls -lh $FILENAME | awk '{ print $5 }')"
  echo "Tegund skráar: $(file $FILENAME | cut -d":" -f2 -)"
  echo "Inode nr.: $(ls -i $FILENAME | cut -d" " -f1 -)"
  echo "$(df -h $FILENAME | grep -v Mounted | awk '{ print "Á",$1", \
sem er sett í disksneið",$6,"."}')"
else
  echo "Þessi skrá er ekki til."
fi

