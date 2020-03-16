#!/bin/bash

template="halite_7.in"
ecutwfcstr="ecutwfc=66"
ecutrhostr="ecutrho=323"
for val in {2..10..1}
do
  ecutwfc=90
  ecutrho=$((ecutwfc * val))
  inp="halite_7_${ecutwfc}_${ecutrho}.in"
  repecutwfc="ecutwfc=${ecutwfc}"
  repecutrho="ecutrho=${ecutrho}"
 # echo $ecutwfc
 # echo $ecutrho
 # echo $inp
 # echo $repecutwfc
 # echo $repecutrho
  sed "s/$ecutwfcstr/$repecutwfc/; s/$ecutrhostr/$repecutrho/;" $template>$inp
  pw.x -input < $inp &>${inp%.*}.out
done


