###################################################################

# Created by write_sdc on Mon Dec  2 21:27:45 2024

###################################################################
set sdc_version 1.7

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_fanout 4 [current_design]
set_max_area 0
set_driving_cell -lib_cell INVX1TS [get_ports {w[15]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[14]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[13]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[12]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[11]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[10]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[9]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[8]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[7]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[6]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[5]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[4]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[3]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[2]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[1]}]
set_driving_cell -lib_cell INVX1TS [get_ports {w[0]}]
set_driving_cell -lib_cell INVX1TS [get_ports enable]
set_driving_cell -lib_cell INVX1TS [get_ports enable_single]
set_driving_cell -lib_cell INVX1TS [get_ports clk]
set_driving_cell -lib_cell INVX1TS [get_ports clk2]
set_driving_cell -lib_cell INVX1TS [get_ports resetn]
set_load -pin_load 0.05 [get_ports {A[63]}]
set_load -pin_load 0.05 [get_ports {A[62]}]
set_load -pin_load 0.05 [get_ports {A[61]}]
set_load -pin_load 0.05 [get_ports {A[60]}]
set_load -pin_load 0.05 [get_ports {A[59]}]
set_load -pin_load 0.05 [get_ports {A[58]}]
set_load -pin_load 0.05 [get_ports {A[57]}]
set_load -pin_load 0.05 [get_ports {A[56]}]
set_load -pin_load 0.05 [get_ports {A[55]}]
set_load -pin_load 0.05 [get_ports {A[54]}]
set_load -pin_load 0.05 [get_ports {A[53]}]
set_load -pin_load 0.05 [get_ports {A[52]}]
set_load -pin_load 0.05 [get_ports {A[51]}]
set_load -pin_load 0.05 [get_ports {A[50]}]
set_load -pin_load 0.05 [get_ports {A[49]}]
set_load -pin_load 0.05 [get_ports {A[48]}]
set_load -pin_load 0.05 [get_ports {A[47]}]
set_load -pin_load 0.05 [get_ports {A[46]}]
set_load -pin_load 0.05 [get_ports {A[45]}]
set_load -pin_load 0.05 [get_ports {A[44]}]
set_load -pin_load 0.05 [get_ports {A[43]}]
set_load -pin_load 0.05 [get_ports {A[42]}]
set_load -pin_load 0.05 [get_ports {A[41]}]
set_load -pin_load 0.05 [get_ports {A[40]}]
set_load -pin_load 0.05 [get_ports {A[39]}]
set_load -pin_load 0.05 [get_ports {A[38]}]
set_load -pin_load 0.05 [get_ports {A[37]}]
set_load -pin_load 0.05 [get_ports {A[36]}]
set_load -pin_load 0.05 [get_ports {A[35]}]
set_load -pin_load 0.05 [get_ports {A[34]}]
set_load -pin_load 0.05 [get_ports {A[33]}]
set_load -pin_load 0.05 [get_ports {A[32]}]
set_load -pin_load 0.05 [get_ports {A[31]}]
set_load -pin_load 0.05 [get_ports {A[30]}]
set_load -pin_load 0.05 [get_ports {A[29]}]
set_load -pin_load 0.05 [get_ports {A[28]}]
set_load -pin_load 0.05 [get_ports {A[27]}]
set_load -pin_load 0.05 [get_ports {A[26]}]
set_load -pin_load 0.05 [get_ports {A[25]}]
set_load -pin_load 0.05 [get_ports {A[24]}]
set_load -pin_load 0.05 [get_ports {A[23]}]
set_load -pin_load 0.05 [get_ports {A[22]}]
set_load -pin_load 0.05 [get_ports {A[21]}]
set_load -pin_load 0.05 [get_ports {A[20]}]
set_load -pin_load 0.05 [get_ports {A[19]}]
set_load -pin_load 0.05 [get_ports {A[18]}]
set_load -pin_load 0.05 [get_ports {A[17]}]
set_load -pin_load 0.05 [get_ports {A[16]}]
set_load -pin_load 0.05 [get_ports {A[15]}]
set_load -pin_load 0.05 [get_ports {A[14]}]
set_load -pin_load 0.05 [get_ports {A[13]}]
set_load -pin_load 0.05 [get_ports {A[12]}]
set_load -pin_load 0.05 [get_ports {A[11]}]
set_load -pin_load 0.05 [get_ports {A[10]}]
set_load -pin_load 0.05 [get_ports {A[9]}]
set_load -pin_load 0.05 [get_ports {A[8]}]
set_load -pin_load 0.05 [get_ports {A[7]}]
set_load -pin_load 0.05 [get_ports {A[6]}]
set_load -pin_load 0.05 [get_ports {A[5]}]
set_load -pin_load 0.05 [get_ports {A[4]}]
set_load -pin_load 0.05 [get_ports {A[3]}]
set_load -pin_load 0.05 [get_ports {A[2]}]
set_load -pin_load 0.05 [get_ports {A[1]}]
set_load -pin_load 0.05 [get_ports {A[0]}]
set_load -pin_load 0.05 [get_ports load_ext]
set_load -pin_load 0.05 [get_ports start_ext]
set_max_capacitance 0.005 [get_ports {w[15]}]
set_max_capacitance 0.005 [get_ports {w[14]}]
set_max_capacitance 0.005 [get_ports {w[13]}]
set_max_capacitance 0.005 [get_ports {w[12]}]
set_max_capacitance 0.005 [get_ports {w[11]}]
set_max_capacitance 0.005 [get_ports {w[10]}]
set_max_capacitance 0.005 [get_ports {w[9]}]
set_max_capacitance 0.005 [get_ports {w[8]}]
set_max_capacitance 0.005 [get_ports {w[7]}]
set_max_capacitance 0.005 [get_ports {w[6]}]
set_max_capacitance 0.005 [get_ports {w[5]}]
set_max_capacitance 0.005 [get_ports {w[4]}]
set_max_capacitance 0.005 [get_ports {w[3]}]
set_max_capacitance 0.005 [get_ports {w[2]}]
set_max_capacitance 0.005 [get_ports {w[1]}]
set_max_capacitance 0.005 [get_ports {w[0]}]
set_max_capacitance 0.005 [get_ports enable]
set_max_capacitance 0.005 [get_ports enable_single]
set_max_capacitance 0.005 [get_ports clk]
set_max_capacitance 0.005 [get_ports clk2]
set_max_capacitance 0.005 [get_ports resetn]
set_max_fanout 4 [get_ports {w[15]}]
set_max_fanout 4 [get_ports {w[14]}]
set_max_fanout 4 [get_ports {w[13]}]
set_max_fanout 4 [get_ports {w[12]}]
set_max_fanout 4 [get_ports {w[11]}]
set_max_fanout 4 [get_ports {w[10]}]
set_max_fanout 4 [get_ports {w[9]}]
set_max_fanout 4 [get_ports {w[8]}]
set_max_fanout 4 [get_ports {w[7]}]
set_max_fanout 4 [get_ports {w[6]}]
set_max_fanout 4 [get_ports {w[5]}]
set_max_fanout 4 [get_ports {w[4]}]
set_max_fanout 4 [get_ports {w[3]}]
set_max_fanout 4 [get_ports {w[2]}]
set_max_fanout 4 [get_ports {w[1]}]
set_max_fanout 4 [get_ports {w[0]}]
set_max_fanout 4 [get_ports enable]
set_max_fanout 4 [get_ports enable_single]
set_max_fanout 4 [get_ports clk]
set_max_fanout 4 [get_ports clk2]
set_max_fanout 4 [get_ports resetn]
set_ideal_network [get_ports clk]
set_ideal_network [get_ports clk2]
create_clock [get_ports clk]  -period 99840  -waveform {0 49920}
set_clock_uncertainty 0.01  [get_clocks clk]
set_clock_transition -max -rise 0.01 [get_clocks clk]
set_clock_transition -max -fall 0.01 [get_clocks clk]
set_clock_transition -min -rise 0.01 [get_clocks clk]
set_clock_transition -min -fall 0.01 [get_clocks clk]
create_clock [get_ports clk2]  -period 520  -waveform {0 260}
set_clock_uncertainty 0.01  [get_clocks clk2]
set_clock_transition -max -rise 0.01 [get_clocks clk2]
set_clock_transition -max -fall 0.01 [get_clocks clk2]
set_clock_transition -min -rise 0.01 [get_clocks clk2]
set_clock_transition -min -fall 0.01 [get_clocks clk2]
set_input_delay -clock clk  0.05  [get_ports clk]
set_input_delay -clock clk  0.05  [get_ports {w[15]}]
set_input_delay -clock clk  0.05  [get_ports {w[14]}]
set_input_delay -clock clk  0.05  [get_ports {w[13]}]
set_input_delay -clock clk  0.05  [get_ports {w[12]}]
set_input_delay -clock clk  0.05  [get_ports {w[11]}]
set_input_delay -clock clk  0.05  [get_ports {w[10]}]
set_input_delay -clock clk  0.05  [get_ports {w[9]}]
set_input_delay -clock clk  0.05  [get_ports {w[8]}]
set_input_delay -clock clk  0.05  [get_ports {w[7]}]
set_input_delay -clock clk  0.05  [get_ports {w[6]}]
set_input_delay -clock clk  0.05  [get_ports {w[5]}]
set_input_delay -clock clk  0.05  [get_ports {w[4]}]
set_input_delay -clock clk  0.05  [get_ports {w[3]}]
set_input_delay -clock clk  0.05  [get_ports {w[2]}]
set_input_delay -clock clk  0.05  [get_ports {w[1]}]
set_input_delay -clock clk  0.05  [get_ports {w[0]}]
set_input_delay -clock clk  0.05  [get_ports enable]
set_input_delay -clock clk  0.05  [get_ports enable_single]
set_input_delay -clock clk  0.05  [get_ports resetn]
set_output_delay -clock clk  0.05  [get_ports {A[63]}]
set_output_delay -clock clk  0.05  [get_ports {A[62]}]
set_output_delay -clock clk  0.05  [get_ports {A[61]}]
set_output_delay -clock clk  0.05  [get_ports {A[60]}]
set_output_delay -clock clk  0.05  [get_ports {A[59]}]
set_output_delay -clock clk  0.05  [get_ports {A[58]}]
set_output_delay -clock clk  0.05  [get_ports {A[57]}]
set_output_delay -clock clk  0.05  [get_ports {A[56]}]
set_output_delay -clock clk  0.05  [get_ports {A[55]}]
set_output_delay -clock clk  0.05  [get_ports {A[54]}]
set_output_delay -clock clk  0.05  [get_ports {A[53]}]
set_output_delay -clock clk  0.05  [get_ports {A[52]}]
set_output_delay -clock clk  0.05  [get_ports {A[51]}]
set_output_delay -clock clk  0.05  [get_ports {A[50]}]
set_output_delay -clock clk  0.05  [get_ports {A[49]}]
set_output_delay -clock clk  0.05  [get_ports {A[48]}]
set_output_delay -clock clk  0.05  [get_ports {A[47]}]
set_output_delay -clock clk  0.05  [get_ports {A[46]}]
set_output_delay -clock clk  0.05  [get_ports {A[45]}]
set_output_delay -clock clk  0.05  [get_ports {A[44]}]
set_output_delay -clock clk  0.05  [get_ports {A[43]}]
set_output_delay -clock clk  0.05  [get_ports {A[42]}]
set_output_delay -clock clk  0.05  [get_ports {A[41]}]
set_output_delay -clock clk  0.05  [get_ports {A[40]}]
set_output_delay -clock clk  0.05  [get_ports {A[39]}]
set_output_delay -clock clk  0.05  [get_ports {A[38]}]
set_output_delay -clock clk  0.05  [get_ports {A[37]}]
set_output_delay -clock clk  0.05  [get_ports {A[36]}]
set_output_delay -clock clk  0.05  [get_ports {A[35]}]
set_output_delay -clock clk  0.05  [get_ports {A[34]}]
set_output_delay -clock clk  0.05  [get_ports {A[33]}]
set_output_delay -clock clk  0.05  [get_ports {A[32]}]
set_output_delay -clock clk  0.05  [get_ports {A[31]}]
set_output_delay -clock clk  0.05  [get_ports {A[30]}]
set_output_delay -clock clk  0.05  [get_ports {A[29]}]
set_output_delay -clock clk  0.05  [get_ports {A[28]}]
set_output_delay -clock clk  0.05  [get_ports {A[27]}]
set_output_delay -clock clk  0.05  [get_ports {A[26]}]
set_output_delay -clock clk  0.05  [get_ports {A[25]}]
set_output_delay -clock clk  0.05  [get_ports {A[24]}]
set_output_delay -clock clk  0.05  [get_ports {A[23]}]
set_output_delay -clock clk  0.05  [get_ports {A[22]}]
set_output_delay -clock clk  0.05  [get_ports {A[21]}]
set_output_delay -clock clk  0.05  [get_ports {A[20]}]
set_output_delay -clock clk  0.05  [get_ports {A[19]}]
set_output_delay -clock clk  0.05  [get_ports {A[18]}]
set_output_delay -clock clk  0.05  [get_ports {A[17]}]
set_output_delay -clock clk  0.05  [get_ports {A[16]}]
set_output_delay -clock clk  0.05  [get_ports {A[15]}]
set_output_delay -clock clk  0.05  [get_ports {A[14]}]
set_output_delay -clock clk  0.05  [get_ports {A[13]}]
set_output_delay -clock clk  0.05  [get_ports {A[12]}]
set_output_delay -clock clk  0.05  [get_ports {A[11]}]
set_output_delay -clock clk  0.05  [get_ports {A[10]}]
set_output_delay -clock clk  0.05  [get_ports {A[9]}]
set_output_delay -clock clk  0.05  [get_ports {A[8]}]
set_output_delay -clock clk  0.05  [get_ports {A[7]}]
set_output_delay -clock clk  0.05  [get_ports {A[6]}]
set_output_delay -clock clk  0.05  [get_ports {A[5]}]
set_output_delay -clock clk  0.05  [get_ports {A[4]}]
set_output_delay -clock clk  0.05  [get_ports {A[3]}]
set_output_delay -clock clk  0.05  [get_ports {A[2]}]
set_output_delay -clock clk  0.05  [get_ports {A[1]}]
set_output_delay -clock clk  0.05  [get_ports {A[0]}]
set_output_delay -clock clk  0.05  [get_ports load_ext]
set_output_delay -clock clk  0.05  [get_ports start_ext]