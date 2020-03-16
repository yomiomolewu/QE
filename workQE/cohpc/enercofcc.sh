#!/bin/bash

template="cofcc.in"
ecutwfcstr="ecutwfc=30"
ecutrhostr="ecutrho=250"
for val in {10..100..10}
do
  ecutwfc=$val
  ecutrho=$((ecutwfc * 5))
  inp="cofcc_${val}_${ecutrho}.in"
  repecutwfc="ecutwfc=${val}"
  repecutrho="ecutrho=${ecutrho}"
  #echo $ecutwfc
  #echo $ecutrho
  #echo $inp
  #echo $repecutwfc
  #echo $repecutrho
  sed "s/$ecutwfcstr/$repecutwfc/; s/$ecutrhostr/$repecutrho/;" $template>$inp
  pw.x -input < $inp &>${inp%.*}.out
done


