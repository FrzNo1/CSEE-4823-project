
vlib work 
vmap work work

vlog +acc -incr /courses/ee6321/share/ibm13rflpvt/verilog/ibm13rflpvt_neg.v
vlog +acc -incr ../../dc/cmem/cmem.nl.v
vlog +acc -incr ../../mem_comp/RF1SHD.v
vlog +acc -incr ./tb_cmem.v

vsim -c -t ps -lib work testbench
do waveformat.do  
run -all
