onerror {quit -f}
vlib work
vlog -work work bcd_behavioral.vo
vlog -work work bcd_behavioral.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bcd_behavioral_vlg_vec_tst
vcd file -direction bcd_behavioral.msim.vcd
vcd add -internal bcd_behavioral_vlg_vec_tst/*
vcd add -internal bcd_behavioral_vlg_vec_tst/i1/*
add wave /*
run -all
