transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {d:/users/questa/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {d:/users/questa/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {d:/users/questa/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {d:/users/questa/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {d:/users/questa/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/fiftyfivenm_ver
vmap fiftyfivenm_ver ./verilog_libs/fiftyfivenm_ver
vlog -vlog01compat -work fiftyfivenm_ver {d:/users/questa/quartus/eda/sim_lib/fiftyfivenm_atoms.v}
vlog -vlog01compat -work fiftyfivenm_ver {d:/users/questa/quartus/eda/sim_lib/mentor/fiftyfivenm_atoms_ncrypt.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/top.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/arm.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/controller.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/decoder.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/condlogic.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/datapath.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/regfile.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/alu.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/extend.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/adder.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/mux2.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/flopr.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/flopenr.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/pre_alu.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/imem.sv}
vlog -sv -work work +incdir+F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle {F:/Electronica-Digital-2/1-11-23/ARM-SingleCycle/dmem.sv}

