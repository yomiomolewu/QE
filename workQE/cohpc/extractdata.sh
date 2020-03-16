#! /bin/bash
awk '/lattice parameter/{alatpara=$5} /^!.*total/{print alatpara, $5}'  *out >> hpclatpar_v_etot2.dat
