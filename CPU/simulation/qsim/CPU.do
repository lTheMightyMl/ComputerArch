onerror {quit -f}
vlib work
vlog -work work ALU.vo
vlog -work work CPU.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.HW7_vlg_vec_tst
vcd file -direction CPU.msim.vcd
vcd add -internal HW7_vlg_vec_tst/*
vcd add -internal HW7_vlg_vec_tst/i1/*
add wave /*
run -all
