#!/bin/bash

declare -A arr=( [0,0]="apple,orange" [0,1]="banana,pear" [1,0]="grapefruit,pineapple" [1,1]="peach,plum" )

for (( i=0; i<=1; i++ ))
do
	for (( j=0; j<=1; j++ ))
	do
		IFS=',' read -ra words <<< "${arr[$i,$j]}"
		for word in "${words[@]}"
		do
			if [[ $word == *p* ]]
			then
				echo " match found at position [$i,$j]: $word"
			fi
		done
	done
done
