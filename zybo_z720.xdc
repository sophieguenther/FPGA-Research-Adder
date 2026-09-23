## Switches (Bank 35 - LVCMOS25)
set_property -dict { PACKAGE_PIN F22 IOSTANDARD LVCMOS25 } [get_ports { sw0_0[0] }]; # SW0
set_property -dict { PACKAGE_PIN G22 IOSTANDARD LVCMOS25 } [get_ports { sw1_0[0] }]; # SW1

## LEDs (Bank 33 - LVCMOS33)
set_property -dict { PACKAGE_PIN T22 IOSTANDARD LVCMOS33 } [get_ports { led_0[0] }]; # LD0 (SW0)
set_property -dict { PACKAGE_PIN T21 IOSTANDARD LVCMOS33 } [get_ports { led_0[1] }]; # LD1 (SW1)
set_property -dict { PACKAGE_PIN U22 IOSTANDARD LVCMOS33 } [get_ports { led_0[2] }]; # LD2 (Sum / SW0 & SW1)

## Active-High Reset (BTNC Button)
set_property -dict { PACKAGE_PIN P16 IOSTANDARD LVCMOS25 } [get_ports { ap_rst_0 }]; # BTNC