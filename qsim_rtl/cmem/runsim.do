
vlib work 
vmap work work

vlog +acc -incr ../../rtl/cmem/cmem.v
vlog +acc -incr ../../mem_comp/RF1SHD.v
vlog +acc -incr ./tb_cmem.v

vsim -c -t ps -lib work testbench
do waveformat.do  
run -all

