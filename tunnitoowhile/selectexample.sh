#!/bin/bash

names='Kyle Carman Stan Quit'
PS3='Select character: '
select name in $names
do
	if [ $name == 'Quit' ]
	then
		break
	fi
	echo Hello $name
done

echo Bye
