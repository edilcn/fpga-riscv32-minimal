transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {fpga-riscv32-minimal.vho}

vcom -93 -work work {F:/QuartusProjects/fpga-riscv32-minimal/simulation/modelsim/tb.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L cyclonev -L gate_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
