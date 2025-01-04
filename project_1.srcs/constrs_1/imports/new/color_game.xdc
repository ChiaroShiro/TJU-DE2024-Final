set_property IOSTANDARD LVCMOS33 [get_ports {oOutBlue[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oOutBlue[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oOutGreen[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oOutGreen[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oOutGreen[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oOutRed[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oOutRed[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oOutRed[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports iClk]
set_property IOSTANDARD LVCMOS33 [get_ports oHSync]
set_property IOSTANDARD LVCMOS33 [get_ports iPause]
set_property IOSTANDARD LVCMOS33 [get_ports oVSync]
set_property IOSTANDARD LVCMOS33 [get_ports to_left]
set_property IOSTANDARD LVCMOS33 [get_ports to_right]


set_property IOSTANDARD LVCMOS33 [get_ports {oDisplay[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oDisplay[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oDisplay[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oDisplay[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oDisplay[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oDisplay[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {oDisplay[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {dataled}]

set_property PACKAGE_PIN E3 [get_ports iClk]
set_property PACKAGE_PIN N17 [get_ports iPause]
set_property PACKAGE_PIN P17 [get_ports to_left]
set_property PACKAGE_PIN M17 [get_ports to_right]
set_property PACKAGE_PIN B11 [get_ports oHSync]
set_property PACKAGE_PIN B12 [get_ports oVSync]
set_property PACKAGE_PIN A4 [get_ports {oOutRed[2]}]
set_property PACKAGE_PIN C5 [get_ports {oOutRed[1]}]
set_property PACKAGE_PIN B4 [get_ports {oOutRed[0]}]
set_property PACKAGE_PIN A6 [get_ports {oOutGreen[2]}]
set_property PACKAGE_PIN B6 [get_ports {oOutGreen[1]}]
set_property PACKAGE_PIN A5 [get_ports {oOutGreen[0]}]
set_property PACKAGE_PIN D8 [get_ports {oOutBlue[2]}]
set_property PACKAGE_PIN D7 [get_ports {oOutBlue[1]}]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets iPause_IBUF]
set_property SEVERITY {Warning} [get_drc_checks LUTLP-1]


set_property PACKAGE_PIN L18 [get_ports {oDisplay[6]}]
set_property PACKAGE_PIN T11 [get_ports {oDisplay[5]}]
set_property PACKAGE_PIN P15 [get_ports {oDisplay[4]}]
set_property PACKAGE_PIN K13 [get_ports {oDisplay[3]}]
set_property PACKAGE_PIN K16 [get_ports {oDisplay[2]}]
set_property PACKAGE_PIN R10 [get_ports {oDisplay[1]}]
set_property PACKAGE_PIN T10 [get_ports {oDisplay[0]}]

set_property PACKAGE_PIN H17 [get_ports {dataled}]


set_property PACKAGE_PIN G6 [get_ports {rxd}]				
set_property IOSTANDARD LVCMOS33 [get_ports {rxd}]


set_property PACKAGE_PIN E18 [get_ports port_vs1003b_dreq]
set_property PACKAGE_PIN E17 [get_ports port_vs1003b_sclk]
set_property PACKAGE_PIN F18 [get_ports port_vs1003b_si]
set_property PACKAGE_PIN D17 [get_ports port_vs1003b_xcs]
set_property PACKAGE_PIN C17 [get_ports port_vs1003b_xdcs]
set_property PACKAGE_PIN D18 [get_ports port_vs1003b_xreset]

set_property IOSTANDARD LVCMOS33 [get_ports port_vs1003b_dreq]
set_property IOSTANDARD LVCMOS33 [get_ports port_vs1003b_sclk]
set_property IOSTANDARD LVCMOS33 [get_ports port_vs1003b_si]
set_property IOSTANDARD LVCMOS33 [get_ports port_vs1003b_xcs]
set_property IOSTANDARD LVCMOS33 [get_ports port_vs1003b_xdcs]
set_property IOSTANDARD LVCMOS33 [get_ports port_vs1003b_xreset]


set_property PACKAGE_PIN M18 [get_ports speed_up]
set_property PACKAGE_PIN P18 [get_ports speed_down]
set_property IOSTANDARD LVCMOS33 [get_ports speed_up]
set_property IOSTANDARD LVCMOS33 [get_ports speed_down]