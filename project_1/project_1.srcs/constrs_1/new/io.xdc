
# pcie ref clock  100 Mhz
create_clock -period 10.000 -name reflk -waveform {0.000 5.000} [get_ports pcie_clk_clk_p]

#
#set_property PACKAGE_PIN L13 [get_ports led_red_0]
#set_property IOSTANDARD LVCMOS33 [get_ports led_red_0]

# connection to PCIE connector REFCLK_P pin
set_property PACKAGE_PIN F6 [get_ports {pcie_clk_clk_p[0]}]

# PCIE reset is not connected on laser board
# H13 is trig4 connection
# H13 is tied to PCIE reset by manual board rework
set_property PACKAGE_PIN H13 [get_ports pcie_reset_n]
set_property IOSTANDARD LVCMOS33 [get_ports pcie_reset_n]
set_property PULLTYPE PULLUP [get_ports pcie_reset_n]
set_false_path -from [get_ports pcie_reset_n]

# Serial flash

# Set configuration voltage and voltage-related pins
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

# Enable QSPI x4 width and maximize clock speed
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]

# Compress bitstream to minimize flash footprint (Optional)
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property PACKAGE_PIN B8 [get_ports {pcie_mgt_0_rxp[0]}]
set_property PACKAGE_PIN D11 [get_ports {pcie_mgt_0_rxp[1]}]
#set_property PACKAGE_PIN B10 [get_ports {pcie_mgt_0_rxp[2]}]
#set_property PACKAGE_PIN D9 [get_ports {pcie_mgt_0_rxp[3]}]
