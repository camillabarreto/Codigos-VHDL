onerror {quit -f}
vlib work
vlog -work work bin2bcdMCDU.vo
vlog -work work bin2bcdMCDU.vt
vsim -novopt -c -t 1ps -L cyclone_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bin2bcdMCDU_vlg_vec_tst
vcd file -direction bin2bcdMCDU.msim.vcd
vcd add -internal bin2bcdMCDU_vlg_vec_tst/*
vcd add -internal bin2bcdMCDU_vlg_vec_tst/i1/*
add wave /*
run -all
