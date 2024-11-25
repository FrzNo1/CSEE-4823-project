onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/i
add wave -noupdate /testbench/clk
add wave -noupdate /testbench/CEN
add wave -noupdate /testbench/WEN
add wave -noupdate -radix unsigned /testbench/CADDR
add wave -noupdate -radix decimal /testbench/D
add wave -noupdate -radix unsigned /testbench/Q0
add wave -noupdate -radix unsigned /testbench/A0
add wave -noupdate -radix decimal /testbench/Q

add wave -noupdate -radix decimal /testbench/DUT.Q
add wave -noupdate -radix unsigned /testbench/DUT.CADDRI
add wave -noupdate -radix unsigned /testbench/DUT.AI
add wave -noupdate -radix decimal /testbench/DUT.DI
add wave -noupdate /testbench/DUT.WENI
add wave -noupdate /testbench/DUT.CENI
add wave -noupdate /testbench/DUT.WENIB
add wave -noupdate /testbench/DUT.AIB
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 223
configure wave -valuecolwidth 89
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {60 ns}


