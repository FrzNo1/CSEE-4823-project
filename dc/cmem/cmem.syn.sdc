###################################################################

# Created by write_sdc on Sun Nov 24 20:10:30 2024

###################################################################
set sdc_version 1.7

set_units -time ns -resistance kOhm -capacitance pF -power mW -voltage V       \
-current mA
set_operating_conditions tt_1p2v_25c -library scx3_cmos8rf_lpvt_tt_1p2v_25c
set_max_fanout 4 [current_design]
set_driving_cell -lib_cell INVX1TS [get_ports {D[19]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[18]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[17]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[16]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[15]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[14]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[13]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[12]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[11]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[10]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[9]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[8]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[7]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[6]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[5]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[4]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[3]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[2]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[1]}]
set_driving_cell -lib_cell INVX1TS [get_ports {D[0]}]
set_driving_cell -lib_cell INVX1TS [get_ports {A0[7]}]
set_driving_cell -lib_cell INVX1TS [get_ports {A0[6]}]
set_driving_cell -lib_cell INVX1TS [get_ports {A0[5]}]
set_driving_cell -lib_cell INVX1TS [get_ports {A0[4]}]
set_driving_cell -lib_cell INVX1TS [get_ports {A0[3]}]
set_driving_cell -lib_cell INVX1TS [get_ports {A0[2]}]
set_driving_cell -lib_cell INVX1TS [get_ports {A0[1]}]
set_driving_cell -lib_cell INVX1TS [get_ports {A0[0]}]
set_driving_cell -lib_cell INVX1TS [get_ports {CADDR[7]}]
set_driving_cell -lib_cell INVX1TS [get_ports {CADDR[6]}]
set_driving_cell -lib_cell INVX1TS [get_ports {CADDR[5]}]
set_driving_cell -lib_cell INVX1TS [get_ports {CADDR[4]}]
set_driving_cell -lib_cell INVX1TS [get_ports {CADDR[3]}]
set_driving_cell -lib_cell INVX1TS [get_ports {CADDR[2]}]
set_driving_cell -lib_cell INVX1TS [get_ports {CADDR[1]}]
set_driving_cell -lib_cell INVX1TS [get_ports {CADDR[0]}]
set_driving_cell -lib_cell INVX1TS [get_ports WEN]
set_driving_cell -lib_cell INVX1TS [get_ports CEN]
set_driving_cell -lib_cell INVX1TS [get_ports clk]
set_load -pin_load 0.005 [get_ports {Q0[19]}]
set_load -pin_load 0.005 [get_ports {Q0[18]}]
set_load -pin_load 0.005 [get_ports {Q0[17]}]
set_load -pin_load 0.005 [get_ports {Q0[16]}]
set_load -pin_load 0.005 [get_ports {Q0[15]}]
set_load -pin_load 0.005 [get_ports {Q0[14]}]
set_load -pin_load 0.005 [get_ports {Q0[13]}]
set_load -pin_load 0.005 [get_ports {Q0[12]}]
set_load -pin_load 0.005 [get_ports {Q0[11]}]
set_load -pin_load 0.005 [get_ports {Q0[10]}]
set_load -pin_load 0.005 [get_ports {Q0[9]}]
set_load -pin_load 0.005 [get_ports {Q0[8]}]
set_load -pin_load 0.005 [get_ports {Q0[7]}]
set_load -pin_load 0.005 [get_ports {Q0[6]}]
set_load -pin_load 0.005 [get_ports {Q0[5]}]
set_load -pin_load 0.005 [get_ports {Q0[4]}]
set_load -pin_load 0.005 [get_ports {Q0[3]}]
set_load -pin_load 0.005 [get_ports {Q0[2]}]
set_load -pin_load 0.005 [get_ports {Q0[1]}]
set_load -pin_load 0.005 [get_ports {Q0[0]}]
set_max_capacitance 0.005 [get_ports {D[19]}]
set_max_capacitance 0.005 [get_ports {D[18]}]
set_max_capacitance 0.005 [get_ports {D[17]}]
set_max_capacitance 0.005 [get_ports {D[16]}]
set_max_capacitance 0.005 [get_ports {D[15]}]
set_max_capacitance 0.005 [get_ports {D[14]}]
set_max_capacitance 0.005 [get_ports {D[13]}]
set_max_capacitance 0.005 [get_ports {D[12]}]
set_max_capacitance 0.005 [get_ports {D[11]}]
set_max_capacitance 0.005 [get_ports {D[10]}]
set_max_capacitance 0.005 [get_ports {D[9]}]
set_max_capacitance 0.005 [get_ports {D[8]}]
set_max_capacitance 0.005 [get_ports {D[7]}]
set_max_capacitance 0.005 [get_ports {D[6]}]
set_max_capacitance 0.005 [get_ports {D[5]}]
set_max_capacitance 0.005 [get_ports {D[4]}]
set_max_capacitance 0.005 [get_ports {D[3]}]
set_max_capacitance 0.005 [get_ports {D[2]}]
set_max_capacitance 0.005 [get_ports {D[1]}]
set_max_capacitance 0.005 [get_ports {D[0]}]
set_max_capacitance 0.005 [get_ports {A0[7]}]
set_max_capacitance 0.005 [get_ports {A0[6]}]
set_max_capacitance 0.005 [get_ports {A0[5]}]
set_max_capacitance 0.005 [get_ports {A0[4]}]
set_max_capacitance 0.005 [get_ports {A0[3]}]
set_max_capacitance 0.005 [get_ports {A0[2]}]
set_max_capacitance 0.005 [get_ports {A0[1]}]
set_max_capacitance 0.005 [get_ports {A0[0]}]
set_max_capacitance 0.005 [get_ports {CADDR[7]}]
set_max_capacitance 0.005 [get_ports {CADDR[6]}]
set_max_capacitance 0.005 [get_ports {CADDR[5]}]
set_max_capacitance 0.005 [get_ports {CADDR[4]}]
set_max_capacitance 0.005 [get_ports {CADDR[3]}]
set_max_capacitance 0.005 [get_ports {CADDR[2]}]
set_max_capacitance 0.005 [get_ports {CADDR[1]}]
set_max_capacitance 0.005 [get_ports {CADDR[0]}]
set_max_capacitance 0.005 [get_ports WEN]
set_max_capacitance 0.005 [get_ports CEN]
set_max_capacitance 0.005 [get_ports clk]
set_max_fanout 4 [get_ports {D[19]}]
set_max_fanout 4 [get_ports {D[18]}]
set_max_fanout 4 [get_ports {D[17]}]
set_max_fanout 4 [get_ports {D[16]}]
set_max_fanout 4 [get_ports {D[15]}]
set_max_fanout 4 [get_ports {D[14]}]
set_max_fanout 4 [get_ports {D[13]}]
set_max_fanout 4 [get_ports {D[12]}]
set_max_fanout 4 [get_ports {D[11]}]
set_max_fanout 4 [get_ports {D[10]}]
set_max_fanout 4 [get_ports {D[9]}]
set_max_fanout 4 [get_ports {D[8]}]
set_max_fanout 4 [get_ports {D[7]}]
set_max_fanout 4 [get_ports {D[6]}]
set_max_fanout 4 [get_ports {D[5]}]
set_max_fanout 4 [get_ports {D[4]}]
set_max_fanout 4 [get_ports {D[3]}]
set_max_fanout 4 [get_ports {D[2]}]
set_max_fanout 4 [get_ports {D[1]}]
set_max_fanout 4 [get_ports {D[0]}]
set_max_fanout 4 [get_ports {A0[7]}]
set_max_fanout 4 [get_ports {A0[6]}]
set_max_fanout 4 [get_ports {A0[5]}]
set_max_fanout 4 [get_ports {A0[4]}]
set_max_fanout 4 [get_ports {A0[3]}]
set_max_fanout 4 [get_ports {A0[2]}]
set_max_fanout 4 [get_ports {A0[1]}]
set_max_fanout 4 [get_ports {A0[0]}]
set_max_fanout 4 [get_ports {CADDR[7]}]
set_max_fanout 4 [get_ports {CADDR[6]}]
set_max_fanout 4 [get_ports {CADDR[5]}]
set_max_fanout 4 [get_ports {CADDR[4]}]
set_max_fanout 4 [get_ports {CADDR[3]}]
set_max_fanout 4 [get_ports {CADDR[2]}]
set_max_fanout 4 [get_ports {CADDR[1]}]
set_max_fanout 4 [get_ports {CADDR[0]}]
set_max_fanout 4 [get_ports WEN]
set_max_fanout 4 [get_ports CEN]
set_max_fanout 4 [get_ports clk]
create_clock [get_ports clk]  -period 20  -waveform {0 10}
set_clock_uncertainty 0.01  [get_clocks clk]
set_clock_transition -max -rise 0.01 [get_clocks clk]
set_clock_transition -max -fall 0.01 [get_clocks clk]
set_clock_transition -min -rise 0.01 [get_clocks clk]
set_clock_transition -min -fall 0.01 [get_clocks clk]
set_input_delay -clock clk  0.1  [get_ports {D[19]}]
set_input_delay -clock clk  0.1  [get_ports {D[18]}]
set_input_delay -clock clk  0.1  [get_ports {D[17]}]
set_input_delay -clock clk  0.1  [get_ports {D[16]}]
set_input_delay -clock clk  0.1  [get_ports {D[15]}]
set_input_delay -clock clk  0.1  [get_ports {D[14]}]
set_input_delay -clock clk  0.1  [get_ports {D[13]}]
set_input_delay -clock clk  0.1  [get_ports {D[12]}]
set_input_delay -clock clk  0.1  [get_ports {D[11]}]
set_input_delay -clock clk  0.1  [get_ports {D[10]}]
set_input_delay -clock clk  0.1  [get_ports {D[9]}]
set_input_delay -clock clk  0.1  [get_ports {D[8]}]
set_input_delay -clock clk  0.1  [get_ports {D[7]}]
set_input_delay -clock clk  0.1  [get_ports {D[6]}]
set_input_delay -clock clk  0.1  [get_ports {D[5]}]
set_input_delay -clock clk  0.1  [get_ports {D[4]}]
set_input_delay -clock clk  0.1  [get_ports {D[3]}]
set_input_delay -clock clk  0.1  [get_ports {D[2]}]
set_input_delay -clock clk  0.1  [get_ports {D[1]}]
set_input_delay -clock clk  0.1  [get_ports {D[0]}]
set_input_delay -clock clk  0.1  [get_ports {A0[7]}]
set_input_delay -clock clk  0.1  [get_ports {A0[6]}]
set_input_delay -clock clk  0.1  [get_ports {A0[5]}]
set_input_delay -clock clk  0.1  [get_ports {A0[4]}]
set_input_delay -clock clk  0.1  [get_ports {A0[3]}]
set_input_delay -clock clk  0.1  [get_ports {A0[2]}]
set_input_delay -clock clk  0.1  [get_ports {A0[1]}]
set_input_delay -clock clk  0.1  [get_ports {A0[0]}]
set_input_delay -clock clk  0.1  [get_ports {CADDR[7]}]
set_input_delay -clock clk  0.1  [get_ports {CADDR[6]}]
set_input_delay -clock clk  0.1  [get_ports {CADDR[5]}]
set_input_delay -clock clk  0.1  [get_ports {CADDR[4]}]
set_input_delay -clock clk  0.1  [get_ports {CADDR[3]}]
set_input_delay -clock clk  0.1  [get_ports {CADDR[2]}]
set_input_delay -clock clk  0.1  [get_ports {CADDR[1]}]
set_input_delay -clock clk  0.1  [get_ports {CADDR[0]}]
set_input_delay -clock clk  0.1  [get_ports WEN]
set_input_delay -clock clk  0.1  [get_ports CEN]
set_output_delay -clock clk  0.1  [get_ports {Q0[19]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[18]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[17]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[16]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[15]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[14]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[13]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[12]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[11]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[10]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[9]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[8]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[7]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[6]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[5]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[4]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[3]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[2]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[1]}]
set_output_delay -clock clk  0.1  [get_ports {Q0[0]}]