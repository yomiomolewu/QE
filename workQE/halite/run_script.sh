#!/bin/bash

template="halite.in"
str2change="3 3 3 0 0 0"

for val in {1..12..2}
do
  inp="halite_${val}.in"
  rep="${val} ${val} ${val} 0 0 0"
  #echo $rep
  sed "s/$str2change/$rep/" $template>$inp
  pw.x -input < $inp &>${inp%.*}.out
done
