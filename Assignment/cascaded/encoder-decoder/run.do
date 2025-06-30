vlog testbench.v +acc
vsim testbench
vsim -debugdb testbench
add wave -r *
run -all

