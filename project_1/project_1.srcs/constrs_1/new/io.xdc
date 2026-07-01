
# pcie ref clock  100 Mhz
create_clock -period 10.000 -name pcie_clk -waveform {0.000 5.000} [get_ports pcie_clk_clk_p]

# connection to PCIE connector REFCLK_P pin
set_property PACKAGE_PIN F6 [get_ports {pcie_clk_clk_p[0]}]

# Leds
set_property PACKAGE_PIN A21 [get_ports led_green_0]
set_property PACKAGE_PIN A20 [get_ports led_red_0]
set_property IOSTANDARD LVCMOS33 [get_ports led_green_0]
set_property IOSTANDARD LVCMOS33 [get_ports led_red_0]

# PCIE reset is not connected on laser board
# H13 is trig4 connection
# H13 is tied to PCIE reset by manual board rework
set_property PACKAGE_PIN H13 [get_ports pcie_reset_n]
set_property IOSTANDARD LVCMOS33 [get_ports pcie_reset_n]
set_property PULLTYPE PULLUP [get_ports pcie_reset_n]
set_false_path -from [get_ports pcie_reset_n]


# 200 MHz
#create_clock -period 5.000 -name sys_clk -waveform {0.000 2.500} [get_ports sys_clk_clk_p]
# 200 Mhz oscillator connection
# LVDS coupling onboard oscillator
set_property PACKAGE_PIN C18 [get_ports sys_clk_clk_p]
set_property PACKAGE_PIN C19 [get_ports sys_clk_clk_n]
set_property IOSTANDARD LVDS_25 [get_ports sys_clk_clk_p]

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

# SSTL15 with VCCO = 1.5 V  ->  VREF = 0.75 V since no pin in bank34, bank35 is connected to VTT reference voltage   
set_property INTERNAL_VREF 0.75 [get_iobanks 34]
set_property INTERNAL_VREF 0.75 [get_iobanks 35]
