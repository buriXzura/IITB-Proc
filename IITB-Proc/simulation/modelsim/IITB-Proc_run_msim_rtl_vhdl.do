transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/burixzura/acads/CS 254/Project/GitHub/IITB-Proc/IITB-Proc/Memory.vhd}
vcom -93 -work work {/home/burixzura/acads/CS 254/Project/GitHub/IITB-Proc/IITB-Proc/ALU.vhd}
vcom -93 -work work {/home/burixzura/acads/CS 254/Project/GitHub/IITB-Proc/IITB-Proc/utilities.vhd}
vcom -93 -work work {/home/burixzura/acads/CS 254/Project/GitHub/IITB-Proc/IITB-Proc/RegisterFile.vhd}
vcom -93 -work work {/home/burixzura/acads/CS 254/Project/GitHub/IITB-Proc/IITB-Proc/IITBProc.vhd}

vcom -93 -work work {/home/burixzura/acads/CS 254/Project/GitHub/IITB-Proc/IITB-Proc/TESTBENCH.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  TESTBENCH

add wave *
view structure
view signals
run -all
