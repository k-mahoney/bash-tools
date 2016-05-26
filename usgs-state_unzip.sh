#!/bin/bash

for i in *.zip; do
  unzip "$i";
  cd "Shape"
  sub="${i%.*}"
  for j in GU_CountyOrEquivalent.*; do
    mv "$j" "County_$sub.${j##*.}";
  done
  for j in GU_IncorporatedPlace.*; do
    mv "$j" "Incorp_$sub.${j##*.}";
  done
  for j in GU_Jurisdictional.*; do
    mv "$j" "Jurisdiction_$sub.${j##*.}";
  done
  for j in GU_MinorCivilDivision.*; do
    mv "$j" "MinorCivil_$sub.${j##*.}";
  done
  for j in GU_NativeAmericanArea.*; do
    mv "$j" "Native_$sub.${j##*.}";
  done
  for j in GU_PLSSFirstDivision.*; do
    mv "$j" "PLSS_First_$sub.${j##*.}";
  done
  for j in GU_PLSSSpecialSurvey.*; do
    mv "$j" "PLSS_Spec_$sub.${j##*.}";
  done
  for j in GU_Reserve.*; do
    mv "$j" "Reserve_$sub.${j##*.}";
  done
  for j in GU_StateOrTerritory.*; do
    mv "$j" "State_$sub.${j##*.}";
  done
  for j in GU_PLSSTownship.*; do
    mv "$j" "Township_$sub.${j##*.}";
  done
  for j in GU_UnincorporatedPlace.*; do
    mv "$j" "Unincorp_$sub.${j##*.}";
  done
  mv "BPFeatureToMetadata.dbf" "BPF_$sub.dbf";
  mv "Meta_DatasetDetail.dbf" "MetaData_$sub.dbf";
  mv "Meta_ProcessDetail.dbf" "MetaProcess_$sub.dbf";
  cd ".."
done
