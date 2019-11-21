vcom -93 -work work {../../simple_car_alarm.vhd}
vsim work.simple_car_alarm(fsm_v2)
add wave  -color Yellow sim:/simple_car_alarm/rst
add wave  -color Yellow sim:/simple_car_alarm/clk
add wave  sim:/simple_car_alarm/remote
add wave  sim:/simple_car_alarm/flag
add wave  sim:/simple_car_alarm/sensors
add wave  -color Blue sim:/simple_car_alarm/pr_state
add wave  -color Blue sim:/simple_car_alarm/nx_state
add wave  -color Red sim:/simple_car_alarm/siren
configure wave -timelineunits sec
#update
force -freeze sim:/simple_car_alarm/rst 1 0, 0 10ps
force -freeze sim:/simple_car_alarm/clk 1 0, 0 0.5sec -r 1sec
run 0.1sec
force -freeze sim:/simple_car_alarm/remote 0 0, 1 3sec, 0 6sec, 1 10sec, 0 13sec, 1 18sec, 0 20sec, 1 30sec, 0 33sec
force -freeze sim:/simple_car_alarm/sensors 0 0, 1 24sec, 0 30sec 
run 40sec
WaveRestoreZoom {0 ps} {40sec}
