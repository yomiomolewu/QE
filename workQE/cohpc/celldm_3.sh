#!/bin/bash
template="cohpc.in"
celldm1str="celldm(1) = 4.58"
celldm3str="celldm(3) = 1.632993162"
for vala in {448..468..2}
 do
  for valc_a in {150..174..2}
   do
    inp="cohpc_${vala}_${valc_a}.in"
    repcellpara="celldm(1)=${vala}"
    repcellparc_a="celldm(3)=${valc_a}"
    echo $inp
    echo $repcellpara
    echo $repcellparc_a
    rep1="celldm(1)=4"
    rep2="celldm(1)=4."
    rep3="celldm(3)=1"
    rep4="celldm(3)=1."
    sed "s/$celldm1str/$repcellpara/; s/$rep1/$rep2/; s/$celldm3str/$repcellparc_a/; s/$rep3/$rep4/" $template>$inp
    pw.x -input < $inp &>${inp%.*}.out
  done
 done

