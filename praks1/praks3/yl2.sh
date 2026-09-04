#! /bin/bash

echo -n "Sisesta aluskandiku pikkus (cm): "
read kandiku_pikkus

echo -n "Sisesta aluskandiku laius (cm): "
read kandiku_laius

echo -n "Sisesta küpsise pikkus (cm): "
read kypsise_pikkus

echo -n "Sisesta küpsise laius (cm): "
read kypsise_laius

echo -n "Sisesta kihtide arv: "
read kihid

echo -n "Sisesta küpsiste arv ühes pakis: "
read kypsisedpakis

#arvutan, mitu küpsist mahub yhte kihti nii pikkuse kui laiuse mõttes
pikkus_tk=$(expr $kandiku_pikkus / $kypsise_pikkus)
laius_tk=$(expr $kandiku_laius / $kypsise_laius)

#kõik küpsised kokku kõikide kihtide peale

kypsised_kihis=$(expr $pikkus_tk \* $laius_tk)
kokku_kypsiseid=$(expr $kypsised_kihis \* $kihid)

# nyyd arvutan pakke aga ymardan yles poole et poleks kypsiste puudust
pakkide_arv=$(expr \( $kokku_kypsiseid + $kypsisedpakis - 1 \) / $kypsisedpakis)

echo "------------------------------------------"
echo "Tordi jaoks on vaja kokku $kokku_kypsiseid küpsist."
echo "Poest tuleb osta $pakkide_arv pakki küpsiseid."
