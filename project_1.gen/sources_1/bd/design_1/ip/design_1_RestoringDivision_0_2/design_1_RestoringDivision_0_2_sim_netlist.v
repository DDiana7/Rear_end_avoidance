// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Jan 17 20:57:00 2026
// Host        : Diana running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dolca/Desktop/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_RestoringDivision_0_2/design_1_RestoringDivision_0_2_sim_netlist.v
// Design      : design_1_RestoringDivision_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_RestoringDivision_0_2,RestoringDivision,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "RestoringDivision,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_RestoringDivision_0_2
   (clk,
    rst,
    start,
    dividend,
    divisor,
    quotient,
    remainder,
    gata,
    leds);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input start;
  input [11:0]dividend;
  input [11:0]divisor;
  output [11:0]quotient;
  output [12:0]remainder;
  output gata;
  output [3:0]leds;

  wire clk;
  wire [11:0]dividend;
  wire [11:0]divisor;
  wire gata;
  wire [3:0]leds;
  wire [11:0]quotient;
  wire [12:0]remainder;
  wire rst;
  wire start;

  design_1_RestoringDivision_0_2_RestoringDivision inst
       (.clk(clk),
        .dividend(dividend),
        .divisor(divisor),
        .gata(gata),
        .leds(leds),
        .quotient(quotient),
        .remainder(remainder),
        .rst(rst),
        .start(start));
endmodule

(* ORIG_REF_NAME = "RestoringDivision" *) 
module design_1_RestoringDivision_0_2_RestoringDivision
   (quotient,
    remainder,
    leds,
    gata,
    start,
    clk,
    rst,
    divisor,
    dividend);
  output [11:0]quotient;
  output [12:0]remainder;
  output [3:0]leds;
  output gata;
  input start;
  input clk;
  input rst;
  input [11:0]divisor;
  input [11:0]dividend;

  wire \A[0]_i_1_n_0 ;
  wire \A[10]_i_1_n_0 ;
  wire \A[11]_i_1_n_0 ;
  wire \A[12]_i_1_n_0 ;
  wire \A[1]_i_1_n_0 ;
  wire \A[2]_i_1_n_0 ;
  wire \A[3]_i_1_n_0 ;
  wire \A[4]_i_1_n_0 ;
  wire \A[5]_i_1_n_0 ;
  wire \A[6]_i_1_n_0 ;
  wire \A[7]_i_1_n_0 ;
  wire \A[8]_i_1_n_0 ;
  wire \A[9]_i_1_n_0 ;
  wire \A_reg_n_0_[12] ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [12:0]L;
  wire [11:0]M;
  wire \Q[0]_i_1_n_0 ;
  wire \Q[10]_i_1_n_0 ;
  wire \Q[11]_i_1_n_0 ;
  wire \Q[11]_i_2_n_0 ;
  wire \Q[1]_i_1_n_0 ;
  wire \Q[2]_i_1_n_0 ;
  wire \Q[3]_i_1_n_0 ;
  wire \Q[4]_i_1_n_0 ;
  wire \Q[5]_i_1_n_0 ;
  wire \Q[6]_i_1_n_0 ;
  wire \Q[7]_i_1_n_0 ;
  wire \Q[8]_i_1_n_0 ;
  wire \Q[9]_i_1_n_0 ;
  wire \Q_reg_n_0_[0] ;
  wire \Q_reg_n_0_[10] ;
  wire \Q_reg_n_0_[1] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire \Q_reg_n_0_[8] ;
  wire \Q_reg_n_0_[9] ;
  wire clk;
  wire [3:0]contor;
  wire \contor_reg_n_0_[0] ;
  wire \contor_reg_n_0_[1] ;
  wire \contor_reg_n_0_[2] ;
  wire \contor_reg_n_0_[3] ;
  wire [11:0]dividend;
  wire [11:0]divisor;
  wire gata;
  wire gata_i_1_n_0;
  wire [3:0]leds;
  wire leds_reg;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__0_n_4;
  wire minusOp_carry__0_n_5;
  wire minusOp_carry__0_n_6;
  wire minusOp_carry__0_n_7;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__1_n_4;
  wire minusOp_carry__1_n_5;
  wire minusOp_carry__1_n_6;
  wire minusOp_carry__1_n_7;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_4;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire p_0_in;
  wire [11:0]quotient;
  wire quotient0;
  wire [12:0]remainder;
  wire rst;
  wire start;
  wire [3:0]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_minusOp_carry__2_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hA808)) 
    \A[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(minusOp_carry_n_7),
        .I2(p_0_in),
        .I3(L[0]),
        .O(\A[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \A[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(minusOp_carry__1_n_5),
        .I2(p_0_in),
        .I3(L[10]),
        .O(\A[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \A[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(minusOp_carry__1_n_4),
        .I2(p_0_in),
        .I3(L[11]),
        .O(\A[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \A[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(L[12]),
        .I2(p_0_in),
        .O(\A[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \A[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(minusOp_carry_n_6),
        .I2(p_0_in),
        .I3(L[1]),
        .O(\A[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \A[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(minusOp_carry_n_5),
        .I2(p_0_in),
        .I3(L[2]),
        .O(\A[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \A[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(minusOp_carry_n_4),
        .I2(p_0_in),
        .I3(L[3]),
        .O(\A[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \A[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(minusOp_carry__0_n_7),
        .I2(p_0_in),
        .I3(L[4]),
        .O(\A[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \A[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(minusOp_carry__0_n_6),
        .I2(p_0_in),
        .I3(L[5]),
        .O(\A[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \A[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(minusOp_carry__0_n_5),
        .I2(p_0_in),
        .I3(L[6]),
        .O(\A[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \A[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(minusOp_carry__0_n_4),
        .I2(p_0_in),
        .I3(L[7]),
        .O(\A[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \A[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(minusOp_carry__1_n_7),
        .I2(p_0_in),
        .I3(L[8]),
        .O(\A[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \A[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(minusOp_carry__1_n_6),
        .I2(p_0_in),
        .I3(L[9]),
        .O(\A[9]_i_1_n_0 ));
  FDCE \A_reg[0] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\A[0]_i_1_n_0 ),
        .Q(L[1]));
  FDCE \A_reg[10] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\A[10]_i_1_n_0 ),
        .Q(L[11]));
  FDCE \A_reg[11] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\A[11]_i_1_n_0 ),
        .Q(L[12]));
  FDCE \A_reg[12] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\A[12]_i_1_n_0 ),
        .Q(\A_reg_n_0_[12] ));
  FDCE \A_reg[1] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\A[1]_i_1_n_0 ),
        .Q(L[2]));
  FDCE \A_reg[2] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\A[2]_i_1_n_0 ),
        .Q(L[3]));
  FDCE \A_reg[3] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\A[3]_i_1_n_0 ),
        .Q(L[4]));
  FDCE \A_reg[4] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\A[4]_i_1_n_0 ),
        .Q(L[5]));
  FDCE \A_reg[5] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\A[5]_i_1_n_0 ),
        .Q(L[6]));
  FDCE \A_reg[6] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\A[6]_i_1_n_0 ),
        .Q(L[7]));
  FDCE \A_reg[7] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\A[7]_i_1_n_0 ),
        .Q(L[8]));
  FDCE \A_reg[8] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\A[8]_i_1_n_0 ),
        .Q(L[9]));
  FDCE \A_reg[9] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\A[9]_i_1_n_0 ),
        .Q(L[10]));
  LUT5 #(
    .INIT(32'hAAAEAEAE)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(start),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCC8DDC8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(start),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF00EA00)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(start),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\contor_reg_n_0_[2] ),
        .I1(\contor_reg_n_0_[3] ),
        .I2(\contor_reg_n_0_[0] ),
        .I3(\contor_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "s_asteptare:001,s_calcul:010,s_final:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(rst),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "s_asteptare:001,s_calcul:010,s_final:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "s_asteptare:001,s_calcul:010,s_final:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  FDCE \M_reg[0] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(divisor[0]),
        .Q(M[0]));
  FDCE \M_reg[10] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(divisor[10]),
        .Q(M[10]));
  FDCE \M_reg[11] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(divisor[11]),
        .Q(M[11]));
  FDCE \M_reg[1] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(divisor[1]),
        .Q(M[1]));
  FDCE \M_reg[2] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(divisor[2]),
        .Q(M[2]));
  FDCE \M_reg[3] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(divisor[3]),
        .Q(M[3]));
  FDCE \M_reg[4] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(divisor[4]),
        .Q(M[4]));
  FDCE \M_reg[5] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(divisor[5]),
        .Q(M[5]));
  FDCE \M_reg[6] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(divisor[6]),
        .Q(M[6]));
  FDCE \M_reg[7] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(divisor[7]),
        .Q(M[7]));
  FDCE \M_reg[8] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(divisor[8]),
        .Q(M[8]));
  FDCE \M_reg[9] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(divisor[9]),
        .Q(M[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \Q[0]_i_1 
       (.I0(dividend[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(p_0_in),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[10]_i_1 
       (.I0(dividend[10]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[9] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \Q[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(start),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\Q[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[11]_i_2 
       (.I0(dividend[11]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[10] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[1]_i_1 
       (.I0(dividend[1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[2]_i_1 
       (.I0(dividend[2]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[3]_i_1 
       (.I0(dividend[3]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[4]_i_1 
       (.I0(dividend[4]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[5]_i_1 
       (.I0(dividend[5]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[6]_i_1 
       (.I0(dividend[6]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[7]_i_1 
       (.I0(dividend[7]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[8]_i_1 
       (.I0(dividend[8]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[9]_i_1 
       (.I0(dividend[9]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[9]_i_1_n_0 ));
  FDCE \Q_reg[0] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\Q[0]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[0] ));
  FDCE \Q_reg[10] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\Q[10]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[10] ));
  FDCE \Q_reg[11] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\Q[11]_i_2_n_0 ),
        .Q(L[0]));
  FDCE \Q_reg[1] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\Q[1]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[1] ));
  FDCE \Q_reg[2] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\Q[2]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[2] ));
  FDCE \Q_reg[3] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\Q[3]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[3] ));
  FDCE \Q_reg[4] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\Q[4]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[4] ));
  FDCE \Q_reg[5] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\Q[5]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[5] ));
  FDCE \Q_reg[6] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\Q[6]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[6] ));
  FDCE \Q_reg[7] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\Q[7]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[7] ));
  FDCE \Q_reg[8] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\Q[8]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[8] ));
  FDCE \Q_reg[9] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(\Q[9]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contor[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[0] ),
        .O(contor[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \contor[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[0] ),
        .I2(\contor_reg_n_0_[1] ),
        .O(contor[1]));
  LUT5 #(
    .INIT(32'hFEABAAAA)) 
    \contor[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[0] ),
        .I3(\contor_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(contor[2]));
  LUT6 #(
    .INIT(64'hFFAAFEABAAAAAAAA)) 
    \contor[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[0] ),
        .I3(\contor_reg_n_0_[3] ),
        .I4(\contor_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(contor[3]));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[0] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(contor[0]),
        .Q(\contor_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[1] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(rst),
        .D(contor[1]),
        .Q(\contor_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b0)) 
    \contor_reg[2] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .D(contor[2]),
        .PRE(rst),
        .Q(\contor_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b0)) 
    \contor_reg[3] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .D(contor[3]),
        .PRE(rst),
        .Q(\contor_reg_n_0_[3] ));
  LUT3 #(
    .INIT(8'hDC)) 
    gata_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(gata),
        .O(gata_i_1_n_0));
  FDCE gata_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(gata_i_1_n_0),
        .Q(gata));
  LUT2 #(
    .INIT(4'h8)) 
    \leds_reg[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start),
        .O(leds_reg));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg_reg[0] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(dividend[0]),
        .Q(leds[0]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg_reg[1] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(dividend[1]),
        .Q(leds[1]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg_reg[2] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(dividend[2]),
        .Q(leds[2]));
  FDCE #(
    .INIT(1'b0)) 
    \leds_reg_reg[3] 
       (.C(clk),
        .CE(leds_reg),
        .CLR(rst),
        .D(dividend[3]),
        .Q(leds[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI(L[3:0]),
        .O({minusOp_carry_n_4,minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(L[7:4]),
        .O({minusOp_carry__0_n_4,minusOp_carry__0_n_5,minusOp_carry__0_n_6,minusOp_carry__0_n_7}),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_1
       (.I0(L[7]),
        .I1(M[7]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_2
       (.I0(L[6]),
        .I1(M[6]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_3
       (.I0(L[5]),
        .I1(M[5]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_4
       (.I0(L[4]),
        .I1(M[4]),
        .O(minusOp_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(L[11:8]),
        .O({minusOp_carry__1_n_4,minusOp_carry__1_n_5,minusOp_carry__1_n_6,minusOp_carry__1_n_7}),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_1
       (.I0(L[11]),
        .I1(M[11]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_2
       (.I0(L[10]),
        .I1(M[10]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_3
       (.I0(L[9]),
        .I1(M[9]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_4
       (.I0(L[8]),
        .I1(M[8]),
        .O(minusOp_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO(NLW_minusOp_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3:1],p_0_in}),
        .S({1'b0,1'b0,1'b0,minusOp_carry__2_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(L[12]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1
       (.I0(L[3]),
        .I1(M[3]),
        .O(minusOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2
       (.I0(L[2]),
        .I1(M[2]),
        .O(minusOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3
       (.I0(L[1]),
        .I1(M[1]),
        .O(minusOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4
       (.I0(L[0]),
        .I1(M[0]),
        .O(minusOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \quotient[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(rst),
        .O(quotient0));
  FDRE \quotient_reg[0] 
       (.C(clk),
        .CE(quotient0),
        .D(\Q_reg_n_0_[0] ),
        .Q(quotient[0]),
        .R(1'b0));
  FDRE \quotient_reg[10] 
       (.C(clk),
        .CE(quotient0),
        .D(\Q_reg_n_0_[10] ),
        .Q(quotient[10]),
        .R(1'b0));
  FDRE \quotient_reg[11] 
       (.C(clk),
        .CE(quotient0),
        .D(L[0]),
        .Q(quotient[11]),
        .R(1'b0));
  FDRE \quotient_reg[1] 
       (.C(clk),
        .CE(quotient0),
        .D(\Q_reg_n_0_[1] ),
        .Q(quotient[1]),
        .R(1'b0));
  FDRE \quotient_reg[2] 
       (.C(clk),
        .CE(quotient0),
        .D(\Q_reg_n_0_[2] ),
        .Q(quotient[2]),
        .R(1'b0));
  FDRE \quotient_reg[3] 
       (.C(clk),
        .CE(quotient0),
        .D(\Q_reg_n_0_[3] ),
        .Q(quotient[3]),
        .R(1'b0));
  FDRE \quotient_reg[4] 
       (.C(clk),
        .CE(quotient0),
        .D(\Q_reg_n_0_[4] ),
        .Q(quotient[4]),
        .R(1'b0));
  FDRE \quotient_reg[5] 
       (.C(clk),
        .CE(quotient0),
        .D(\Q_reg_n_0_[5] ),
        .Q(quotient[5]),
        .R(1'b0));
  FDRE \quotient_reg[6] 
       (.C(clk),
        .CE(quotient0),
        .D(\Q_reg_n_0_[6] ),
        .Q(quotient[6]),
        .R(1'b0));
  FDRE \quotient_reg[7] 
       (.C(clk),
        .CE(quotient0),
        .D(\Q_reg_n_0_[7] ),
        .Q(quotient[7]),
        .R(1'b0));
  FDRE \quotient_reg[8] 
       (.C(clk),
        .CE(quotient0),
        .D(\Q_reg_n_0_[8] ),
        .Q(quotient[8]),
        .R(1'b0));
  FDRE \quotient_reg[9] 
       (.C(clk),
        .CE(quotient0),
        .D(\Q_reg_n_0_[9] ),
        .Q(quotient[9]),
        .R(1'b0));
  FDRE \remainder_reg[0] 
       (.C(clk),
        .CE(quotient0),
        .D(L[1]),
        .Q(remainder[0]),
        .R(1'b0));
  FDRE \remainder_reg[10] 
       (.C(clk),
        .CE(quotient0),
        .D(L[11]),
        .Q(remainder[10]),
        .R(1'b0));
  FDRE \remainder_reg[11] 
       (.C(clk),
        .CE(quotient0),
        .D(L[12]),
        .Q(remainder[11]),
        .R(1'b0));
  FDRE \remainder_reg[12] 
       (.C(clk),
        .CE(quotient0),
        .D(\A_reg_n_0_[12] ),
        .Q(remainder[12]),
        .R(1'b0));
  FDRE \remainder_reg[1] 
       (.C(clk),
        .CE(quotient0),
        .D(L[2]),
        .Q(remainder[1]),
        .R(1'b0));
  FDRE \remainder_reg[2] 
       (.C(clk),
        .CE(quotient0),
        .D(L[3]),
        .Q(remainder[2]),
        .R(1'b0));
  FDRE \remainder_reg[3] 
       (.C(clk),
        .CE(quotient0),
        .D(L[4]),
        .Q(remainder[3]),
        .R(1'b0));
  FDRE \remainder_reg[4] 
       (.C(clk),
        .CE(quotient0),
        .D(L[5]),
        .Q(remainder[4]),
        .R(1'b0));
  FDRE \remainder_reg[5] 
       (.C(clk),
        .CE(quotient0),
        .D(L[6]),
        .Q(remainder[5]),
        .R(1'b0));
  FDRE \remainder_reg[6] 
       (.C(clk),
        .CE(quotient0),
        .D(L[7]),
        .Q(remainder[6]),
        .R(1'b0));
  FDRE \remainder_reg[7] 
       (.C(clk),
        .CE(quotient0),
        .D(L[8]),
        .Q(remainder[7]),
        .R(1'b0));
  FDRE \remainder_reg[8] 
       (.C(clk),
        .CE(quotient0),
        .D(L[9]),
        .Q(remainder[8]),
        .R(1'b0));
  FDRE \remainder_reg[9] 
       (.C(clk),
        .CE(quotient0),
        .D(L[10]),
        .Q(remainder[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
