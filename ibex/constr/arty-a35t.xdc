## Based on https://github.com/Digilent/digilent-xdc/blob/master/Arty-A7-100-Master.xdc
## This file is a general .xdc for the Arty A7-100 Rev. D
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property PACKAGE_PIN E3 [get_ports IO_CLK]
set_property IOSTANDARD LVCMOS33 [get_ports IO_CLK]
create_clock -period 10.00 [get_ports IO_CLK];

## LEDs
set_property PACKAGE_PIN H5 [get_ports LED[0]]
set_property PACKAGE_PIN J5 [get_ports LED[1]]
set_property PACKAGE_PIN T9 [get_ports LED[2]]
set_property PACKAGE_PIN T10 [get_ports LED[3]]
set_property IOSTANDARD LVCMOS33 [get_ports LED[0]]
set_property IOSTANDARD LVCMOS33 [get_ports LED[1]]
set_property IOSTANDARD LVCMOS33 [get_ports LED[2]]
set_property IOSTANDARD LVCMOS33 [get_ports LED[3]]

## Reset signal
set_property PACKAGE_PIN C2 [get_ports IO_RST_N]
set_property IOSTANDARD LVCMOS33 [get_ports IO_RST_N]

