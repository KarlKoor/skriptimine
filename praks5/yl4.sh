#!/bin/bash
#jällegi vastavalt teie sisestatud ajale vastab teile

#siin võtab süsteemist praeguse aja andmed ja sisselogitud kasutaja andmed
aeg=$(date +%H)
inimene=$USER
#siin loogika suht sama nagu eelnevas yl
if [ "$aeg" -ge 6 ] && [ "$aeg" -lt 12 ]; then
	echo "Hommik, $inimene"
elif [ "$aeg" -ge 12 ] && [ "$aeg" -lt 18 ]; then
	echo "Tere päevast, $inimene"
elif [ "$aeg" -ge 18 ] && [ "$aeg" -lt 22 ]; then
	echo "õhtust, $inimene"
else
	echo "Head ööd, $inimene"
fi
