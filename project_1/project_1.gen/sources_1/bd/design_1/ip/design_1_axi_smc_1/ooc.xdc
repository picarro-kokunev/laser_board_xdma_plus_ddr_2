# aclk {FREQ_HZ 125000000 CLK_DOMAIN design_1_xdma_0_0_axi_aclk PHASE 0.0} aclk1 {FREQ_HZ 100000000 CLK_DOMAIN design_1_mig_7series_0_0_ui_clk PHASE 0}
# Clock Domain: design_1_xdma_0_0_axi_aclk
create_clock -name aclk -period 8.000 [get_ports aclk]
# Clock Domain: design_1_mig_7series_0_0_ui_clk
create_clock -name aclk1 -period 10.000 [get_ports aclk1]
# Generated clocks
