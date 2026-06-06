onerror {quit -f}
vlib work
vlog -work work decode416.vo
vlog -work work decode416.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.416decodemodified_vlg_vec_tst
vcd file -direction decode416.msim.vcd
vcd add -internal 416decodemodified_vlg_vec_tst/*
vcd add -internal 416decodemodified_vlg_vec_tst/i1/*
add wave /*
run -all
