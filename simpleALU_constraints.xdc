## Using artix-7 master from github
## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]


set_property PACKAGE_PIN L16 [get_ports {sel[1]}]
set_property PACKAGE_PIN J15 [get_ports {sel[0]}]
set_property PACKAGE_PIN V10 [get_ports a]
set_property PACKAGE_PIN U11 [get_ports b]

set_property PACKAGE_PIN V11 [get_ports out]
set_property PACKAGE_PIN H6 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports {sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sel[1]}]
