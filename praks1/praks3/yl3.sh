#! /bin/bash

echo -n "Sisesta reisijate arv grupis: "
read reisijad

echo -n "Sisesta kohtade arv bussis: "
read kohad

# arvutab täis busside arvu
bussid=$(expr $reisijad / $kohad)

#otsib jäägi kui mitu kohta jäi vaba v nö jäid maha
jaak=$(expr $reisijad % $kohad)

echo -n
echo "Täidetud busse: $bussid"
echo "Kohti jäi vabaks: $jaak"
