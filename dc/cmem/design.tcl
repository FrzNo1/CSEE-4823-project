
set DC_PATH	"../../dc"
set RTL_PATH 	"../../rtl"
set top_level	cmem
source -verbose "./common.tcl"
read_verilog {"../../rtl/cmem/cmem.v"}
list_designs
if { [check_error -v] == 1 } { exit 1 }
current_design cmem
link

