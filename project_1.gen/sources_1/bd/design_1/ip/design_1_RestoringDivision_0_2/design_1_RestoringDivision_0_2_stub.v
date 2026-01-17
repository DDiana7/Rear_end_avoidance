// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Jan 17 20:57:00 2026
// Host        : Diana running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/dolca/Desktop/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_RestoringDivision_0_2/design_1_RestoringDivision_0_2_stub.v
// Design      : design_1_RestoringDivision_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "RestoringDivision,Vivado 2024.1" *)
module design_1_RestoringDivision_0_2(clk, rst, start, dividend, divisor, quotient, 
  remainder, gata, leds)
/* synthesis syn_black_box black_box_pad_pin="rst,start,dividend[11:0],divisor[11:0],quotient[11:0],remainder[12:0],gata,leds[3:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  input start;
  input [11:0]dividend;
  input [11:0]divisor;
  output [11:0]quotient;
  output [12:0]remainder;
  output gata;
  output [3:0]leds;
endmodule
