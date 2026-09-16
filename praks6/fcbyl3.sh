#!/bin/bash

for i in {1..3}; do
	echo "Väline tsükkel: i=$i"
	
	for j in {1..10}; do
		if [[ $j -eq 5 ]]; then
			echo " Sisemine tsükkel jõudis 5-ni, katkestan siis mõlemad tsüklid"
			break 2
		fi
		echo " Sisemine tsükkel: j = $j"
	done
done

echo "Tsüklid on lõppenud ja skript jätkab"
