#!/bin/bash

text="koer,kass,hiir"
IFS=','
for word in $text; do
	echo "Loom: $word"
done
