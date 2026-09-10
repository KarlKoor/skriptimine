#!/bin/bash
#küsime kuu numbri ja vastavalt numbrile ytleme aastaaja
echo -n "Ütle mingi kuu number: "
read kuu



case $kuu in
#kui kuu on jaanuar, veebruar voi detsember siis on talv
	1|2|12) echo "Praegu on talv" ;;
#kui marts, aprill voi mai siis kevad
	3|4|5) echo "Praegu on kevad" ;;
#juuni juuli ja august suvi
	6|7|8) echo "Praegu on suvi" ;;
#sept okt ja november sügis
	9|10|11) echo "Praegu on sügis" ;;
#kui keegi ei tea mis kuu on mis number voi mitu kuud on olemas siis vastab järgnevalt:
	*)	echo "Sellise numbriga kuud kahjuks ei eksisteeri meie maailmas." ;;
esac
