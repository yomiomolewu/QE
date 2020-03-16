#!/bin/bash
template="cofcc.in"
celldm1str="celldm(1) = 6.48"
for val in {500..598..2}
do
  inp="cofcc_${val}.in"
  repcellpar="celldm(1)=${val}"
  echo $inp
  echo $repcellpar
  rep1="celldm(1)=5"
  rep2="celldm(1)=5."
  sed "s/$celldm1str/$repcellpar/; s/$rep1/$rep2/" $template>$inp
  pw.x -input < $inp &>${inp%.*}.out
done

for val in {700..798..2}
do
  inp="cofcc_${val}.in"
  repcellpar="celldm(1)=${val}"
  echo $inp
  echo $repcellpar
  rep1="celldm(1)=7"
  rep2="celldm(1)=7."
  sed "s/$celldm1str/$repcellpar/; s/$rep1/$rep2/" $template>$inp
  pw.x -input < $inp &>${inp%.*}.out
done

