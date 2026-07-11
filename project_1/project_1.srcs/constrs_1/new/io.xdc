
# pcie ref clock  100 Mhz
create_clock -period 10.000 -name pcie_clk -waveform {0.000 5.000} [get_ports pcie_clk_clk_p]

# connection to PCIE connector REFCLK_P pin
set_property PACKAGE_PIN F6 [get_ports {pcie_clk_clk_p[0]}]

# Leds
set_property PACKAGE_PIN A21 [get_ports {led_green_0[0]}]
set_property PACKAGE_PIN A20 [get_ports {led_red_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_green_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_red_0[0]}]

# Unused pin
set_property PACKAGE_PIN B15 [get_ports {unused_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {unused_0[0]}]


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

set_property LOC GTPE2_CHANNEL_X0Y4 [get_cells {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property PACKAGE_PIN B8 [get_ports {pcie_mgt_0_rxp[0]}]
set_property LOC GTPE2_CHANNEL_X0Y5 [get_cells {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property PACKAGE_PIN D11 [get_ports {pcie_mgt_0_rxp[1]}]
#set_property PACKAGE_PIN B10 [get_ports {pcie_mgt_0_rxp[2]}]
#set_property PACKAGE_PIN D9 [get_ports {pcie_mgt_0_rxp[3]}]

# SSTL15 with VCCO = 1.5 V  ->  VREF = 0.75 V since no pin in bank34, bank35 is connected to VTT reference voltage
set_property INTERNAL_VREF 0.75 [get_iobanks 34]
set_property INTERNAL_VREF 0.75 [get_iobanks 35]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/CLK]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 6 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pcie_top_i/pl_ltssm_state[0]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pcie_top_i/pl_ltssm_state[1]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pcie_top_i/pl_ltssm_state[2]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pcie_top_i/pl_ltssm_state[3]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pcie_top_i/pl_ltssm_state[4]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pcie_top_i/pl_ltssm_state[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 6 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pl_ltssm_state_q[0]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pl_ltssm_state_q[1]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pl_ltssm_state_q[2]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pl_ltssm_state_q[3]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pl_ltssm_state_q[4]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pl_ltssm_state_q[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 6 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pl_ltssm_state[0]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pl_ltssm_state[1]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pl_ltssm_state[2]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pl_ltssm_state[3]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pl_ltssm_state[4]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pl_ltssm_state[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 6 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pcie_top_i/pcie_7x_i/pl_ltssm_state[0]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pcie_top_i/pcie_7x_i/pl_ltssm_state[1]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pcie_top_i/pcie_7x_i/pl_ltssm_state[2]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pcie_top_i/pcie_7x_i/pl_ltssm_state[3]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pcie_top_i/pcie_7x_i/pl_ltssm_state[4]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pcie_top_i/pcie_7x_i/pl_ltssm_state[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 6 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/g2ip_pl_ltssm_state[0]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/g2ip_pl_ltssm_state[1]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/g2ip_pl_ltssm_state[2]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/g2ip_pl_ltssm_state[3]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/g2ip_pl_ltssm_state[4]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/g2ip_pl_ltssm_state[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 6 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/pl_ltssm_state[0]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/pl_ltssm_state[1]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/pl_ltssm_state[2]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/pl_ltssm_state[3]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/pl_ltssm_state[4]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/pl_ltssm_state[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 6 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pl_ltssm_state[0]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pl_ltssm_state[1]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pl_ltssm_state[2]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pl_ltssm_state[3]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pl_ltssm_state[4]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/pl_ltssm_state[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 6 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/pl_ltssm_state[0]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/pl_ltssm_state[1]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/pl_ltssm_state[2]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/pl_ltssm_state[3]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/pl_ltssm_state[4]} {design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/pl_ltssm_state[5]}]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list design_1_i/xdma_0/inst/design_1_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/user_clk2]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 1 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list design_1_i/pcie_reset_n]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 1 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list design_1_i/xdma_0_user_lnk_up]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
