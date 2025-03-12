create_clock -period 6.667 -name clk -waveform {0.000 3.334} [get_ports clk]
# set_false_path -from [get_pins rst_n_reg/C] -to *
# set_property -dict {PACKAGE_PIN H19 IOSTANDARD LVCMOS18} [get_ports F1_GCLK_40M]
