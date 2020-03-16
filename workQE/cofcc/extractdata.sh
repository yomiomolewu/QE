#! /bin/bash
awk '/lattice parameter/{alatpara=$5} /^!.*total/{print alatpara, $5}'  *c_[0-9][0-9][0-9].out > latpara_v_etot.dat
