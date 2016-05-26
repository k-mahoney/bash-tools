#!/bin/bash

for i in *.shp; do
	sub="${i%.*}"
	clip="State_GOVTUNIT_STATENUM_STATENAME_GU_STATEORTERRITORY"
	if [ "$sub" != "$clip" ]; then
	  ogr2ogr -progress -clipsrc "$clip.shp" "STATENAME_$sub.shp" "$sub.shp"
	fi
done
