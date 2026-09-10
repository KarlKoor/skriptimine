#!/bin/bash
#skript vastab sulle vastavalt sinu sisestatud kellaajale
echo -n "Ütle mingi kellaaeg: "
read aeg
#kui aeg on 6-12 vahel siis soovib sulle hommikust
if [ "$aeg" -ge 6 ] && [ "$aeg" -lt 12 ]; then
	echo "Hommik!"
#kui on 12-18 vahel siis soovib Tere päevast
elif [ "$aeg" -ge 12 ] && [ "$aeg" -lt 18 ]; then
	echo "Tere päevast"
#kui 18-22 vahele siis õhtust
elif [ "$aeg" -ge 18 ] && [ "$aeg" -lt 22 ]; then
	echo "Õhtust"
#kui 22-24 vahele siis headööd
elif ([ "$aeg" -ge 22 ] && [ "$aeg" -lt 24 ]) || ([ "$aeg" -ge 0 ] && [ "$aeg" -lt 6 ]); then
	echo "Head ööd"
#kui kirjutab midagi muud siis vastab nii:
else
	echo "Nii ei saa kirjutada"
fi
