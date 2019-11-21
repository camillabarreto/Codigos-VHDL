onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Yellow /simple_car_alarm/rst
add wave -noupdate -color Yellow /simple_car_alarm/clk
add wave -noupdate -divider Entradas
add wave -noupdate /simple_car_alarm/remote
add wave -noupdate /simple_car_alarm/sensors
add wave -noupdate -divider Estados
add wave -noupdate -color Blue /simple_car_alarm/pr_state
add wave -noupdate -color Blue /simple_car_alarm/nx_state
add wave -noupdate -divider Saida
add wave -noupdate -color Red /simple_car_alarm/siren
add wave -noupdate /simple_car_alarm/sensors
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {40954156456173 ps} 0} {{Cursor 2} {442599666145 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits sec
update
WaveRestoreZoom {0 ps} {35401197604790 ps}
