transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/adder.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/register32b_falling.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/register32b.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/register5b.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/register4b.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/register3b.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/register2b.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/register1b.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/mux32_1.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/mux5_1.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/mux3_1.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/mux2.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/instmem.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/datamem.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/alu.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/fpga_riscv32_minimal.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/pc.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/register_bank.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/hazard_control_unit.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/jump_target_unit.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/ifid_register.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/idex_register.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/forwarding_unit.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/exmem_pipeline.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/datamem_interface.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/controller.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/datapath.vhd}
vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/components/memwb_pipeline.vhd}

vcom -2008 -work work {F:/QuartusProjects/fpga-riscv32-minimal/simulation/modelsim/tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
