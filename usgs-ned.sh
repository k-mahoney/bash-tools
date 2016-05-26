#!/bin/bash

iter=0
for f in *.img ; do
  if [[ "$f" =~ [n][0-9]*[w][0-9]* ]]; then
    name=${BASH_REMATCH}
    if [[ $iter == 0 ]]; then
      echo "First iteration, skipping..."
      iter=1
      merge_name=$name
      prev=$f
    elif [[ $iter == 1 ]]; then
      echo "merging $f with $prev"
      gdal_merge.py -o "$merge_name-$name.tif" $f $prev
      merge_name="$merge_name-$name"
      iter=2
    else
      echo "merging $f with $merge_name.tif"
      gdal_merge.py -o "$merge_name-$name.tif" $f "$merge_name.tif"
      #rm "$merge_name.tif"
      merge_name="$merge_name-$name"
      prev=$f
    fi
  else
    echo "naming schema issue, USGS pls"
  fi
done
