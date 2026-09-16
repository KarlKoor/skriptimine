#!/bin/bash
for i in {0..40}; do
	if [[ $i -eq 0 ]]; then
		echo "Jätan sammu $i vahele"
		continue
	fi
	echo "i = $i"
done
