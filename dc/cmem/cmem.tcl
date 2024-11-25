
set top_level cmem
source "./design.tcl"
source "./constraints.tcl"

##################################################
# Define design optimization constraints
##################################################

# Set timing environment through another .tcl file
source -verbose "./timing.tcl"
set_fix_multiple_port_nets -all -buffer_constants
check_design
current_design cmem
link



compile_ultra
source -verbose "./mmcm.tcl"
write -hierarchy -format verilog -output "./cmem.nl.v"
write -hierarchy -format ddc -output "./cmem.ddc"
quit

