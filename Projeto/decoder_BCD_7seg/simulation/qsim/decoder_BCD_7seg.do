onerror {quit -f}
vlib work
vlog -work work decoder_BCD_7seg.vo
vlog -work work decoder_BCD_7seg.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.decoder_BCD_7seg_vlg_vec_tst
vcd file -direction decoder_BCD_7seg.msim.vcd
vcd add -internal decoder_BCD_7seg_vlg_vec_tst/*
vcd add -internal decoder_BCD_7seg_vlg_vec_tst/i1/*
add wave /*
run -all
