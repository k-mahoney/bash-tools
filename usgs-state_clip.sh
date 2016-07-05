#!/bin/bash

for i in *.shp; do
  name="${i%.shp}"
  if [[ $name == *"County_"* ]]; then
    county="County_"
    state="State_"
    string=${name#$county}

    echo $state$string.shp
    echo $county$string.shp

    ogr2ogr -progress -clipsrc "$state$string.shp" "clip_$county$string.shp" "$county$string.shp"
  fi
done
