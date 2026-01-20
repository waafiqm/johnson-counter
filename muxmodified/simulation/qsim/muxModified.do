onerror {quit -f}
vlib work
vlog -work work muxModified.vo
vlog -work work muxModified.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.muxModified_vlg_vec_tst
vcd file -direction muxModified.msim.vcd
vcd add -internal muxModified_vlg_vec_tst/*
vcd add -internal muxModified_vlg_vec_tst/i1/*
add wave /*
run -all
