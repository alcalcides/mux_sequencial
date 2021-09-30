onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /mux_sequencial_tb/clk
add wave -noupdate -radix binary /mux_sequencial_tb/rst
add wave -noupdate -radix binary /mux_sequencial_tb/toggleButton
add wave -noupdate -radix unsigned /mux_sequencial_tb/dataIn1
add wave -noupdate -radix unsigned /mux_sequencial_tb/dataIn2
add wave -noupdate -radix unsigned /mux_sequencial_tb/dataOut
add wave -noupdate -radix unsigned /mux_sequencial_tb/chronus
add wave -noupdate -radix binary /mux_sequencial_tb/dut/current_state
add wave -noupdate -radix binary /mux_sequencial_tb/dut/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {19 ps}
