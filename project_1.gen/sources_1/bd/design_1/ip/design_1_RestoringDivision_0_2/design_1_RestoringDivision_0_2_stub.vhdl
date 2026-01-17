-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Jan 17 20:57:00 2026
-- Host        : Diana running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/dolca/Desktop/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_RestoringDivision_0_2/design_1_RestoringDivision_0_2_stub.vhdl
-- Design      : design_1_RestoringDivision_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_RestoringDivision_0_2 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    dividend : in STD_LOGIC_VECTOR ( 11 downto 0 );
    divisor : in STD_LOGIC_VECTOR ( 11 downto 0 );
    quotient : out STD_LOGIC_VECTOR ( 11 downto 0 );
    remainder : out STD_LOGIC_VECTOR ( 12 downto 0 );
    gata : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end design_1_RestoringDivision_0_2;

architecture stub of design_1_RestoringDivision_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,start,dividend[11:0],divisor[11:0],quotient[11:0],remainder[12:0],gata,leds[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "RestoringDivision,Vivado 2024.1";
begin
end;
