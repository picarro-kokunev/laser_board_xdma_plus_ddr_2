//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Fri Jun 26 13:48:33 2026
//Host        : emerald running 64-bit Ubuntu 26.04 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (pcie_clk_clk_n,
    pcie_clk_clk_p,
    pcie_mgt_0_rxn,
    pcie_mgt_0_rxp,
    pcie_mgt_0_txn,
    pcie_mgt_0_txp,
    pcie_reset_n);
  input [0:0]pcie_clk_clk_n;
  input [0:0]pcie_clk_clk_p;
  input [1:0]pcie_mgt_0_rxn;
  input [1:0]pcie_mgt_0_rxp;
  output [1:0]pcie_mgt_0_txn;
  output [1:0]pcie_mgt_0_txp;
  input pcie_reset_n;

  wire [0:0]pcie_clk_clk_n;
  wire [0:0]pcie_clk_clk_p;
  wire [1:0]pcie_mgt_0_rxn;
  wire [1:0]pcie_mgt_0_rxp;
  wire [1:0]pcie_mgt_0_txn;
  wire [1:0]pcie_mgt_0_txp;
  wire pcie_reset_n;

  design_1 design_1_i
       (.pcie_clk_clk_n(pcie_clk_clk_n),
        .pcie_clk_clk_p(pcie_clk_clk_p),
        .pcie_mgt_0_rxn(pcie_mgt_0_rxn),
        .pcie_mgt_0_rxp(pcie_mgt_0_rxp),
        .pcie_mgt_0_txn(pcie_mgt_0_txn),
        .pcie_mgt_0_txp(pcie_mgt_0_txp),
        .pcie_reset_n(pcie_reset_n));
endmodule
