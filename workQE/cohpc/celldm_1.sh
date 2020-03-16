#!/bin/bash
template="cohpc.in"
celldm1str="celldm(1) = 4.58"
for val in {300..398..2}
do
  inp="cohpc_${val}.in"
  repcellpar="celldm(1)=${val}"
  echo $inp
  echo $repcellpar
  rep1="celldm(1)=3"
  rep2="celldm(1)=3."
  sed "s/$celldm1str/$repcellpar/; s/$rep1/$rep2/" $template>$inp
  pw.x -input < $inp &>${inp%.*}.out
done

for val in {400..498..2}
do
  inp="cohpc_${val}.in"
  repcellpar="celldm(1)=${val}"
  echo $inp
  echo $repcellpar
  rep1="celldm(1)=4"
  rep2="celldm(1)=4."
  sed "s/$celldm1str/$repcellpar/; s/$rep1/$rep2/" $template>$inp
  pw.x -input < $inp &>${inp%.*}.out
done

for val in {500..598..2}
do
  inp="cohpc_${val}.in"
  repcellpar="celldm(1)=${val}"
  echo $inp
  echo $repcellpar
  rep1="celldm(1)=5"
  rep2="celldm(1)=5."
  sed "s/$celldm1str/$repcellpar/; s/$rep1/$rep2/" $template>$inp
  pw.x -input < $inp &>${inp%.*}.out
done



