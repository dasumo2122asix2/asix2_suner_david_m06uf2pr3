#!/bin/bash
#Script num 6
#David Suner

echo "Directori origen: "
read do 

echo "Directori desti: "
read dd

cd $dd

DATA=$(date +20%y%m%d%H%M)

for ar in $do
do
		if [[ -x $ar ]] && [[ -s $ar ]] 
		then
			tar -cvzf compresion.$DATA.tar.gz $do
		fi
		
done
clear
echo "Total d'arxius: "
ls $do | wc -l

exit 1
