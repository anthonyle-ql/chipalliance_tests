# R
set_property LOC G6 [get_ports led[0]]
set_property LOC G3 [get_ports led[1]]
set_property LOC J3 [get_ports led[2]]
set_property LOC K1 [get_ports led[3]]
# G
set_property LOC F6 [get_ports led[4]]
set_property LOC J4 [get_ports led[5]]
set_property LOC J2 [get_ports led[6]]
set_property LOC H6 [get_ports led[7]]
# B
set_property LOC E1 [get_ports led[8]]
set_property LOC G4 [get_ports led[9]]
set_property LOC H4 [get_ports led[10]]
set_property LOC K2 [get_ports led[11]]

set_property IOSTANDARD LVCMOS33 [get_ports led[0]]
set_property IOSTANDARD LVCMOS33 [get_ports led[1]]
set_property IOSTANDARD LVCMOS33 [get_ports led[2]]
set_property IOSTANDARD LVCMOS33 [get_ports led[3]]
set_property IOSTANDARD LVCMOS33 [get_ports led[4]]
set_property IOSTANDARD LVCMOS33 [get_ports led[5]]
set_property IOSTANDARD LVCMOS33 [get_ports led[6]]
set_property IOSTANDARD LVCMOS33 [get_ports led[7]]
set_property IOSTANDARD LVCMOS33 [get_ports led[8]]
set_property IOSTANDARD LVCMOS33 [get_ports led[9]]
set_property IOSTANDARD LVCMOS33 [get_ports led[10]]
set_property IOSTANDARD LVCMOS33 [get_ports led[11]]

set_property LOC A8 [get_ports sw[0]]
set_property LOC C11 [get_ports sw[1]]
set_property LOC C10 [get_ports sw[2]]
set_property LOC A10 [get_ports sw[3]]

set_property IOSTANDARD LVCMOS33 [get_ports sw[0]]
set_property IOSTANDARD LVCMOS33 [get_ports sw[1]]
set_property IOSTANDARD LVCMOS33 [get_ports sw[2]]
set_property IOSTANDARD LVCMOS33 [get_ports sw[3]]

set_property LOC E3 [get_ports clk_i]
set_property IOSTANDARD LVCMOS33 [get_ports clk_i]

create_clock -period 10.0 -name clk_i [get_ports clk_i]
