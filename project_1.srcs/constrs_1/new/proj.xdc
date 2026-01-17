##Pmod Header JA (XADC) 
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { vaux14p }];  
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { vaux7p }];  
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { vaux15p }];  
set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { vaux6p }];  
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { vaux14n }];  
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { vaux7n }];  
set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { vaux15n }];  
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { vaux6n }];

## LEDs (LD0-LD3)
#set_property -dict { PACKAGE_PIN M14 IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o_0[0] }];
#set_property -dict { PACKAGE_PIN M15 IOSTANDARD LVCMOS33 } [get_ports { gpio_io_o_0[1] }];
#set_property -dict { PACKAGE_PIN G14 IOSTANDARD LVCMOS33 } [get_ports {gpio_io_o_0[2] }];
#set_property -dict { PACKAGE_PIN D18 IOSTANDARD LVCMOS33 } [get_ports {gpio_io_o_0[3] }];
#gpio_io_o_0[3] gpio_io_o_0[2] gpio_io_o_0[1] gpio_io_o_0[0]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { leds_0[0] }];
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { leds_0[1] }];
set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { leds_0[2] }];
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { leds_0[3] }];