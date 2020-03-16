#!/bin/bash

template="halite_7.in"
ecutwfcstr="ecutwfc=66"
ecutrhostr="ecutrho=323"
for val in {16..206..10}
do
  ecutwfc=$val
  ecutrho=$((ecutwfc * 5))
  inp="halite_7_${val}_${ecutrho}.in"
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



