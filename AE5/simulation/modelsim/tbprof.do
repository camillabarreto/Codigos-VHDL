vcom -93 -work work {../../vende_balas_FSM.vhd}
vsim work.vende_balas_FSM
 
add wave -position end -color gold sim:/vende_balas_FSM/rst
add wave -position end -color gold sim:/vende_balas_FSM/clk
add wave -position end -color blue sim:/vende_balas_FSM/e5c
add wave -position end -color blue sim:/vende_balas_FSM/e10c
add wave -position end -color blue sim:/vende_balas_FSM/e25c
add wave -position end  sim:/vende_balas_FSM/nx_state
add wave -position end  sim:/vende_balas_FSM/pr_state
add wave -position end -color red sim:/vende_balas_FSM/bala
add wave -position end -color red sim:/vende_balas_FSM/d5c
add wave -position end -color red sim:/vende_balas_FSM/d10c
configure wave -timelineunits sec
WaveRestoreZoom {0 ps} {25sec}
 
force -freeze sim:/vende_balas_FSM/rst 1 0, 0 0.1 sec
force -freeze sim:/vende_balas_FSM/clk 0 0, 1 {0.5 sec} -r 1sec
force -freeze sim:/vende_balas_FSM/e5c 0 0, 1 13sec, 0 14sec
force -freeze sim:/vende_balas_FSM/e10c 0 0, 1 16sec, 0 17sec, 1 23sec, 0 24sec
force -freeze sim:/vende_balas_FSM/e25c 0 0, 1 4sec, 0 5sec, 1 9sec, 0 10sec, 1 20sec, 0 21sec
run 25 sec