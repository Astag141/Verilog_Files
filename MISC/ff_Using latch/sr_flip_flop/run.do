vlog sr_flip_flop.v
vlog tb_sr_flip_flop.v
vsim tb_sr_flip_flop

add wave *
run -all
wave zoom full
