onerror {quit -f}
vlib work
vlog -work work conv_sete_seg.vo
vlog -work work conv_sete_seg.vt
vsim -novopt -c -t 1ps -L cyclone_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.conv_sete_seg_vlg_vec_tst
vcd file -direction conv_sete_seg.msim.vcd
vcd add -internal conv_sete_seg_vlg_vec_tst/*
vcd add -internal conv_sete_seg_vlg_vec_tst/i1/*
add wave /*
run -all
