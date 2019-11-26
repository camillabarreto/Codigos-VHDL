vcom -93 -work work {../../candy_machine.vhd}
#vcom -93 -work work {/home/aluno/DLP/candy_machine.vhd}
vsim work.candy_machine

add wave -position insertpoint sim:/candy_machine/*

####################################################

force -freeze sim:/candy_machine/e5c 0 0, 1 8sec, 0 9sec
force -freeze sim:/candy_machine/e10c 0 0, 1 15sec, 0 18sec
force -freeze sim:/candy_machine/e25c 0 0, 1 2sec, 0 3sec, 1 9sec, 0 10sec
force -freeze sim:/candy_machine/rst 1 0, 0 1sec
force -freeze sim:/candy_machine/clk 1 0, 0 {0.5 sec} -r 1sec

run 20 sec

#force -freeze sim:/candy_machine/e5c 0 0
#force -freeze sim:/candy_machine/e10c 0 0
#force -freeze sim:/candy_machine/e25c 0 0
#force -freeze sim:/candy_machine/rst 1 0
#force -freeze sim:/candy_machine/clk 1 0, 0 {0.5 sec} -r 1sec
#run 1 sec
#
#force -freeze sim:/candy_machine/rst 0 0
#run 1 sec
#
#force -freeze sim:/candy_machine/e25c 1 0
#run 1 sec
#
#force -freeze sim:/candy_machine/e25c 0 0
#run 5 sec
#
#force -freeze sim:/candy_machine/e5c 1 0
#run 1 sec
#
#force -freeze sim:/candy_machine/e5c 0 0
#force -freeze sim:/candy_machine/e25c 1 0
#run 1 sec
#
#force -freeze sim:/candy_machine/e25c 0 0
#run 5 sec
#
#force -freeze sim:/candy_machine/e10c 1 0
#run 3 sec
#
#force -freeze sim:/candy_machine/e10c 0 0
#run 3 sec
#
#
