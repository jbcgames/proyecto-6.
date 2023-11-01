transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/fiftyfivenm_ver
vmap fiftyfivenm_ver ./verilog_libs/fiftyfivenm_ver
vlog -vlog01compat -work fiftyfivenm_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/fiftyfivenm_atoms.v}
vlog -vlog01compat -work fiftyfivenm_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/fiftyfivenm_atoms_ncrypt.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/top.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/arm.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/controller.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/decoder.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/condlogic.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/datapath.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/regfile.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/alu.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/extend.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/adder.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/mux2.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/flopr.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/flopenr.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/pre_alu.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/imem.sv}
vlog -sv -work work +incdir+E:/proyecto-6.-master {E:/proyecto-6.-master/dmem.sv}

