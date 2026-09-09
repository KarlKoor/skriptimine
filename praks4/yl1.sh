#!/bin/bash

echo -n "Kirjuta suvaline täisarv: "
read arv

#see arv mis alles jai jagan 2-ga et teada saada kas arv on paaritu voi mitte
alles=$(( $arv % 2 ))

#kui arv jagatakse 2-ga ja tulemus on 0, siis järelikult on paaris kui mitte siis paaritu
if [ $alles -eq 0 ]
then
	echo "$arv on paaris"
else
	echo "$arv on paaritu"
fi
