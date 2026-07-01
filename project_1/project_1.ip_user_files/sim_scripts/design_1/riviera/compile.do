transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/proc_sys_reset_v5_0_17
vlib riviera/blk_mem_gen_v8_4_12
vlib riviera/fifo_generator_v13_2_14
vlib riviera/xdma_v4_2_2
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_data_fifo_v2_1_36
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_36
vlib riviera/axi_protocol_converter_v2_1_37
vlib riviera/axi_clock_converter_v2_1_35
vlib riviera/axi_dwidth_converter_v2_1_37

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17
vmap blk_mem_gen_v8_4_12 riviera/blk_mem_gen_v8_4_12
vmap fifo_generator_v13_2_14 riviera/fifo_generator_v13_2_14
vmap xdma_v4_2_2 riviera/xdma_v4_2_2
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_data_fifo_v2_1_36 riviera/axi_data_fifo_v2_1_36
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_36 riviera/axi_register_slice_v2_1_36
vmap axi_protocol_converter_v2_1_37 riviera/axi_protocol_converter_v2_1_37
vmap axi_clock_converter_v2_1_35 riviera/axi_clock_converter_v2_1_35
vmap axi_dwidth_converter_v2_1_37 riviera/axi_dwidth_converter_v2_1_37

vlog -work xilinx_vip  -incr "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/2025.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/opt/Xilinx/2025.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_util_ds_buf_0_0/util_ds_buf.vhd" \
"../../../bd/design_1/ip/design_1_util_ds_buf_0_0/sim/design_1_util_ds_buf_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_clock.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_eq.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_drp.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_rate.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_reset.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_sync.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gtp_pipe_rate.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gtp_pipe_drp.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gtp_pipe_reset.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_user.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pipe_wrapper.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_qpll_drp.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_qpll_reset.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_qpll_wrapper.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_rxeq_scan.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_top.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_core_top.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_rx_null_gen.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_rx_pipeline.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_rx.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_top.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_tx_pipeline.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_tx_thrtl_ctl.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_axi_basic_tx.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_7x.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_bram_7x.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_bram_top_7x.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_brams_7x.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_pipe_lane.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_pipe_misc.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie_pipe_pipeline.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gt_top.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gt_common.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gtp_cpllpd_ovrd.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gtx_cpllpd_ovrd.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gt_rx_valid_filter_7x.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_gt_wrapper.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie2_ip_pcie2_top.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/sim/design_1_xdma_0_0_pcie2_ip.v" \

vlog -work blk_mem_gen_v8_4_12  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/42f3/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_1/sim/xdma_v4_2_2_blk_mem_64_reg_be.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_2/sim/xdma_v4_2_2_blk_mem_64_noreg_be.v" \

vlog -work fifo_generator_v13_2_14  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/d654/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_14 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/d654/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_14  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/d654/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_3/sim/pcie2_fifo_generator_dma_cpl.v" \
"../../../bd/design_1/ip/design_1_xdma_0_0/ip_4/sim/pcie2_fifo_generator_tgt_brdg.v" \

vlog -work xdma_v4_2_2  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/xdma_v4_2_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_dma_cpl.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_dma_req.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_rx_destraddler.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_rx_demux.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_tgt_cpl.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_tgt_req.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_tx_mux.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_axi_stream_intf.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_cfg_sideband.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_pcie2_to_pcie3_wrapper.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_dma_bram_wrap.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_dma_bram_wrap_1024.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_dma_bram_wrap_2048.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_2/hdl/verilog/design_1_xdma_0_0_core_top.sv" \
"../../../bd/design_1/ip/design_1_xdma_0_0/sim/design_1_xdma_0_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/design_1_mig_7series_0_0_mig_sim.v" \
"../../../bd/design_1/ip/design_1_mig_7series_0_0/design_1_mig_7series_0_0/user_design/rtl/design_1_mig_7series_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_mig_7series_0_100M_0/sim/design_1_rst_mig_7series_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_36  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/fb46/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_37  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/d98a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_35  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/e059/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_37  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/21f8/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/d6c9/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../../../../../../../opt/Xilinx/2025.2/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l proc_sys_reset_v5_0_17 -l blk_mem_gen_v8_4_12 -l fifo_generator_v13_2_14 -l xdma_v4_2_2 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_36 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 -l axi_clock_converter_v2_1_35 -l axi_dwidth_converter_v2_1_37 \
"../../../bd/design_1/ip/design_1_axi_interconnect_0_imp_auto_us_0/sim/design_1_axi_interconnect_0_imp_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_axi_interconnect_0_imp_auto_cc_0/sim/design_1_axi_interconnect_0_imp_auto_cc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

