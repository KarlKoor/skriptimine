#!/bin/bash

#Vanuse kontroll! skript annab sulle vastuse vastavalt sinu vanusele
echo -n "Ütle oma vanus: "
read vanus
#kui vanus on 0 ja 11 vahel oled latseke
if test $vanus -ge 0 -a $vanus -lt 11
then
	echo "oled latseke"
#kui 11-18 vahel oled nats suurem kui latseke
elif test $vanus -ge 11 -a $vanus -lt 18
then
	echo "oled nats suurem kui latseke"
#kui vanus 18-63 vahel oled täiskasvanud
elif test $vanus -ge 18 -a $vanus -lt 63
then
	echo "oled täiskasvanud"
#kui yle 63 oled vanur
elif test $vanus -ge 63
then
	echo "oled vanur"
else
	echo "vigane sisend"
#kui pannakse midagi muud kui vanus siis on vigane sisend
fi
