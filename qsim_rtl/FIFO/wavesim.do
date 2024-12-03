
vlib work 
vmap work work

# Include Netlist and Testbench
vlog +acc -incr ../../rtl/FIFO/FIFO.v 
vlog +acc -incr tb_FIFO.v 

# Run Simulator 
vsim +acc -t ps -lib work testbench 
do waveformat.do   
run -all

