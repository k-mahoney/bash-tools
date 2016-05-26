#!/bin/bash

for i in *.zip; do
  unzip "$i";
  cd "Shape"
  sub="${i%.*}"
  for j in Elev_Contour.*; do
    mv "$j" "$sub.${j##*.}";
  done
  mv "BPFeatureToMetadata.dbf" "BPF_$sub.dbf";
  mv "Meta_DatasetDetail.dbf" "MetaData_$sub.dbf";
  mv "Meta_ProcessDetail.dbf" "MetaProcess_$sub.dbf";
  cd ".."
done
