-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Jan 17 20:57:00 2026
-- Host        : Diana running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/dolca/Desktop/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_RestoringDivision_0_2/design_1_RestoringDivision_0_2_sim_netlist.vhdl
-- Design      : design_1_RestoringDivision_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_RestoringDivision_0_2_RestoringDivision is
  port (
    quotient : out STD_LOGIC_VECTOR ( 11 downto 0 );
    remainder : out STD_LOGIC_VECTOR ( 12 downto 0 );
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gata : out STD_LOGIC;
    start : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    divisor : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dividend : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_RestoringDivision_0_2_RestoringDivision : entity is "RestoringDivision";
end design_1_RestoringDivision_0_2_RestoringDivision;

architecture STRUCTURE of design_1_RestoringDivision_0_2_RestoringDivision is
  signal \A[0]_i_1_n_0\ : STD_LOGIC;
  signal \A[10]_i_1_n_0\ : STD_LOGIC;
  signal \A[11]_i_1_n_0\ : STD_LOGIC;
  signal \A[12]_i_1_n_0\ : STD_LOGIC;
  signal \A[1]_i_1_n_0\ : STD_LOGIC;
  signal \A[2]_i_1_n_0\ : STD_LOGIC;
  signal \A[3]_i_1_n_0\ : STD_LOGIC;
  signal \A[4]_i_1_n_0\ : STD_LOGIC;
  signal \A[5]_i_1_n_0\ : STD_LOGIC;
  signal \A[6]_i_1_n_0\ : STD_LOGIC;
  signal \A[7]_i_1_n_0\ : STD_LOGIC;
  signal \A[8]_i_1_n_0\ : STD_LOGIC;
  signal \A[9]_i_1_n_0\ : STD_LOGIC;
  signal \A_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal M : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \Q[0]_i_1_n_0\ : STD_LOGIC;
  signal \Q[10]_i_1_n_0\ : STD_LOGIC;
  signal \Q[11]_i_1_n_0\ : STD_LOGIC;
  signal \Q[11]_i_2_n_0\ : STD_LOGIC;
  signal \Q[1]_i_1_n_0\ : STD_LOGIC;
  signal \Q[2]_i_1_n_0\ : STD_LOGIC;
  signal \Q[3]_i_1_n_0\ : STD_LOGIC;
  signal \Q[4]_i_1_n_0\ : STD_LOGIC;
  signal \Q[5]_i_1_n_0\ : STD_LOGIC;
  signal \Q[6]_i_1_n_0\ : STD_LOGIC;
  signal \Q[7]_i_1_n_0\ : STD_LOGIC;
  signal \Q[8]_i_1_n_0\ : STD_LOGIC;
  signal \Q[9]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \Q_reg_n_0_[10]\ : STD_LOGIC;
  signal \Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \Q_reg_n_0_[2]\ : STD_LOGIC;
  signal \Q_reg_n_0_[3]\ : STD_LOGIC;
  signal \Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \Q_reg_n_0_[5]\ : STD_LOGIC;
  signal \Q_reg_n_0_[6]\ : STD_LOGIC;
  signal \Q_reg_n_0_[7]\ : STD_LOGIC;
  signal \Q_reg_n_0_[8]\ : STD_LOGIC;
  signal \Q_reg_n_0_[9]\ : STD_LOGIC;
  signal contor : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \contor_reg_n_0_[0]\ : STD_LOGIC;
  signal \contor_reg_n_0_[1]\ : STD_LOGIC;
  signal \contor_reg_n_0_[2]\ : STD_LOGIC;
  signal \contor_reg_n_0_[3]\ : STD_LOGIC;
  signal \^gata\ : STD_LOGIC;
  signal gata_i_1_n_0 : STD_LOGIC;
  signal leds_reg : STD_LOGIC;
  signal \minusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_i_2_n_0 : STD_LOGIC;
  signal minusOp_carry_i_3_n_0 : STD_LOGIC;
  signal minusOp_carry_i_4_n_0 : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_4 : STD_LOGIC;
  signal minusOp_carry_n_5 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal quotient0 : STD_LOGIC;
  signal \NLW_minusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A[12]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "s_asteptare:001,s_calcul:010,s_final:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "s_asteptare:001,s_calcul:010,s_final:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "s_asteptare:001,s_calcul:010,s_final:100,";
  attribute SOFT_HLUTNM of \Q[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Q[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \contor[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \contor[1]_i_1\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of minusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_carry__2\ : label is 35;
begin
  gata <= \^gata\;
\A[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => minusOp_carry_n_7,
      I2 => p_0_in,
      I3 => L(0),
      O => \A[0]_i_1_n_0\
    );
\A[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \minusOp_carry__1_n_5\,
      I2 => p_0_in,
      I3 => L(10),
      O => \A[10]_i_1_n_0\
    );
\A[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \minusOp_carry__1_n_4\,
      I2 => p_0_in,
      I3 => L(11),
      O => \A[11]_i_1_n_0\
    );
\A[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => L(12),
      I2 => p_0_in,
      O => \A[12]_i_1_n_0\
    );
\A[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => minusOp_carry_n_6,
      I2 => p_0_in,
      I3 => L(1),
      O => \A[1]_i_1_n_0\
    );
\A[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => minusOp_carry_n_5,
      I2 => p_0_in,
      I3 => L(2),
      O => \A[2]_i_1_n_0\
    );
\A[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => minusOp_carry_n_4,
      I2 => p_0_in,
      I3 => L(3),
      O => \A[3]_i_1_n_0\
    );
\A[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \minusOp_carry__0_n_7\,
      I2 => p_0_in,
      I3 => L(4),
      O => \A[4]_i_1_n_0\
    );
\A[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \minusOp_carry__0_n_6\,
      I2 => p_0_in,
      I3 => L(5),
      O => \A[5]_i_1_n_0\
    );
\A[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \minusOp_carry__0_n_5\,
      I2 => p_0_in,
      I3 => L(6),
      O => \A[6]_i_1_n_0\
    );
\A[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \minusOp_carry__0_n_4\,
      I2 => p_0_in,
      I3 => L(7),
      O => \A[7]_i_1_n_0\
    );
\A[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \minusOp_carry__1_n_7\,
      I2 => p_0_in,
      I3 => L(8),
      O => \A[8]_i_1_n_0\
    );
\A[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \minusOp_carry__1_n_6\,
      I2 => p_0_in,
      I3 => L(9),
      O => \A[9]_i_1_n_0\
    );
\A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \A[0]_i_1_n_0\,
      Q => L(1)
    );
\A_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \A[10]_i_1_n_0\,
      Q => L(11)
    );
\A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \A[11]_i_1_n_0\,
      Q => L(12)
    );
\A_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \A[12]_i_1_n_0\,
      Q => \A_reg_n_0_[12]\
    );
\A_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \A[1]_i_1_n_0\,
      Q => L(2)
    );
\A_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \A[2]_i_1_n_0\,
      Q => L(3)
    );
\A_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \A[3]_i_1_n_0\,
      Q => L(4)
    );
\A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \A[4]_i_1_n_0\,
      Q => L(5)
    );
\A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \A[5]_i_1_n_0\,
      Q => L(6)
    );
\A_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \A[6]_i_1_n_0\,
      Q => L(7)
    );
\A_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \A[7]_i_1_n_0\,
      Q => L(8)
    );
\A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \A[8]_i_1_n_0\,
      Q => L(9)
    );
\A_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \A[9]_i_1_n_0\,
      Q => L(10)
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAEAEAE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => start,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_state[2]_i_2_n_0\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC8DDC8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => start,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_state[2]_i_2_n_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00EA00"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => start,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_state[2]_i_2_n_0\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \contor_reg_n_0_[2]\,
      I1 => \contor_reg_n_0_[3]\,
      I2 => \contor_reg_n_0_[0]\,
      I3 => \contor_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => rst,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\M_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => divisor(0),
      Q => M(0)
    );
\M_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => divisor(10),
      Q => M(10)
    );
\M_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => divisor(11),
      Q => M(11)
    );
\M_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => divisor(1),
      Q => M(1)
    );
\M_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => divisor(2),
      Q => M(2)
    );
\M_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => divisor(3),
      Q => M(3)
    );
\M_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => divisor(4),
      Q => M(4)
    );
\M_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => divisor(5),
      Q => M(5)
    );
\M_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => divisor(6),
      Q => M(6)
    );
\M_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => divisor(7),
      Q => M(7)
    );
\M_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => divisor(8),
      Q => M(8)
    );
\M_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => divisor(9),
      Q => M(9)
    );
\Q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => dividend(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => p_0_in,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[0]_i_1_n_0\
    );
\Q[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(10),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[9]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[10]_i_1_n_0\
    );
\Q[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => start,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \Q[11]_i_1_n_0\
    );
\Q[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(11),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[10]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[11]_i_2_n_0\
    );
\Q[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[1]_i_1_n_0\
    );
\Q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(2),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[2]_i_1_n_0\
    );
\Q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(3),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[3]_i_1_n_0\
    );
\Q[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(4),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[4]_i_1_n_0\
    );
\Q[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(5),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[4]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[5]_i_1_n_0\
    );
\Q[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(6),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[5]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[6]_i_1_n_0\
    );
\Q[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(7),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[6]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[7]_i_1_n_0\
    );
\Q[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(8),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[7]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[8]_i_1_n_0\
    );
\Q[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(9),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[8]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[9]_i_1_n_0\
    );
\Q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \Q[0]_i_1_n_0\,
      Q => \Q_reg_n_0_[0]\
    );
\Q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \Q[10]_i_1_n_0\,
      Q => \Q_reg_n_0_[10]\
    );
\Q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \Q[11]_i_2_n_0\,
      Q => L(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \Q[1]_i_1_n_0\,
      Q => \Q_reg_n_0_[1]\
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \Q[2]_i_1_n_0\,
      Q => \Q_reg_n_0_[2]\
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \Q[3]_i_1_n_0\,
      Q => \Q_reg_n_0_[3]\
    );
\Q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \Q[4]_i_1_n_0\,
      Q => \Q_reg_n_0_[4]\
    );
\Q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \Q[5]_i_1_n_0\,
      Q => \Q_reg_n_0_[5]\
    );
\Q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \Q[6]_i_1_n_0\,
      Q => \Q_reg_n_0_[6]\
    );
\Q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \Q[7]_i_1_n_0\,
      Q => \Q_reg_n_0_[7]\
    );
\Q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \Q[8]_i_1_n_0\,
      Q => \Q_reg_n_0_[8]\
    );
\Q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => \Q[9]_i_1_n_0\,
      Q => \Q_reg_n_0_[9]\
    );
\contor[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[0]\,
      O => contor(0)
    );
\contor[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[0]\,
      I2 => \contor_reg_n_0_[1]\,
      O => contor(1)
    );
\contor[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEABAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[0]\,
      I3 => \contor_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => contor(2)
    );
\contor[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFEABAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[0]\,
      I3 => \contor_reg_n_0_[3]\,
      I4 => \contor_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => contor(3)
    );
\contor_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => contor(0),
      Q => \contor_reg_n_0_[0]\
    );
\contor_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => rst,
      D => contor(1),
      Q => \contor_reg_n_0_[1]\
    );
\contor_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      D => contor(2),
      PRE => rst,
      Q => \contor_reg_n_0_[2]\
    );
\contor_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      D => contor(3),
      PRE => rst,
      Q => \contor_reg_n_0_[3]\
    );
gata_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^gata\,
      O => gata_i_1_n_0
    );
gata_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => gata_i_1_n_0,
      Q => \^gata\
    );
\leds_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => start,
      O => leds_reg
    );
\leds_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => dividend(0),
      Q => leds(0)
    );
\leds_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => dividend(1),
      Q => leds(1)
    );
\leds_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => dividend(2),
      Q => leds(2)
    );
\leds_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => leds_reg,
      CLR => rst,
      D => dividend(3),
      Q => leds(3)
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => L(3 downto 0),
      O(3) => minusOp_carry_n_4,
      O(2) => minusOp_carry_n_5,
      O(1) => minusOp_carry_n_6,
      O(0) => minusOp_carry_n_7,
      S(3) => minusOp_carry_i_1_n_0,
      S(2) => minusOp_carry_i_2_n_0,
      S(1) => minusOp_carry_i_3_n_0,
      S(0) => minusOp_carry_i_4_n_0
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(7 downto 4),
      O(3) => \minusOp_carry__0_n_4\,
      O(2) => \minusOp_carry__0_n_5\,
      O(1) => \minusOp_carry__0_n_6\,
      O(0) => \minusOp_carry__0_n_7\,
      S(3) => \minusOp_carry__0_i_1_n_0\,
      S(2) => \minusOp_carry__0_i_2_n_0\,
      S(1) => \minusOp_carry__0_i_3_n_0\,
      S(0) => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(7),
      I1 => M(7),
      O => \minusOp_carry__0_i_1_n_0\
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(6),
      I1 => M(6),
      O => \minusOp_carry__0_i_2_n_0\
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(5),
      I1 => M(5),
      O => \minusOp_carry__0_i_3_n_0\
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(4),
      I1 => M(4),
      O => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(11 downto 8),
      O(3) => \minusOp_carry__1_n_4\,
      O(2) => \minusOp_carry__1_n_5\,
      O(1) => \minusOp_carry__1_n_6\,
      O(0) => \minusOp_carry__1_n_7\,
      S(3) => \minusOp_carry__1_i_1_n_0\,
      S(2) => \minusOp_carry__1_i_2_n_0\,
      S(1) => \minusOp_carry__1_i_3_n_0\,
      S(0) => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(11),
      I1 => M(11),
      O => \minusOp_carry__1_i_1_n_0\
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(10),
      I1 => M(10),
      O => \minusOp_carry__1_i_2_n_0\
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(9),
      I1 => M(9),
      O => \minusOp_carry__1_i_3_n_0\
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(8),
      I1 => M(8),
      O => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3 downto 0) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_minusOp_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => p_0_in,
      S(3 downto 1) => B"000",
      S(0) => \minusOp_carry__2_i_1_n_0\
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => L(12),
      O => \minusOp_carry__2_i_1_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(3),
      I1 => M(3),
      O => minusOp_carry_i_1_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(2),
      I1 => M(2),
      O => minusOp_carry_i_2_n_0
    );
minusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(1),
      I1 => M(1),
      O => minusOp_carry_i_3_n_0
    );
minusOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => L(0),
      I1 => M(0),
      O => minusOp_carry_i_4_n_0
    );
\quotient[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => rst,
      O => quotient0
    );
\quotient_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => \Q_reg_n_0_[0]\,
      Q => quotient(0),
      R => '0'
    );
\quotient_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => \Q_reg_n_0_[10]\,
      Q => quotient(10),
      R => '0'
    );
\quotient_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => L(0),
      Q => quotient(11),
      R => '0'
    );
\quotient_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => \Q_reg_n_0_[1]\,
      Q => quotient(1),
      R => '0'
    );
\quotient_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => \Q_reg_n_0_[2]\,
      Q => quotient(2),
      R => '0'
    );
\quotient_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => \Q_reg_n_0_[3]\,
      Q => quotient(3),
      R => '0'
    );
\quotient_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => \Q_reg_n_0_[4]\,
      Q => quotient(4),
      R => '0'
    );
\quotient_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => \Q_reg_n_0_[5]\,
      Q => quotient(5),
      R => '0'
    );
\quotient_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => \Q_reg_n_0_[6]\,
      Q => quotient(6),
      R => '0'
    );
\quotient_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => \Q_reg_n_0_[7]\,
      Q => quotient(7),
      R => '0'
    );
\quotient_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => \Q_reg_n_0_[8]\,
      Q => quotient(8),
      R => '0'
    );
\quotient_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => \Q_reg_n_0_[9]\,
      Q => quotient(9),
      R => '0'
    );
\remainder_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => L(1),
      Q => remainder(0),
      R => '0'
    );
\remainder_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => L(11),
      Q => remainder(10),
      R => '0'
    );
\remainder_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => L(12),
      Q => remainder(11),
      R => '0'
    );
\remainder_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => \A_reg_n_0_[12]\,
      Q => remainder(12),
      R => '0'
    );
\remainder_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => L(2),
      Q => remainder(1),
      R => '0'
    );
\remainder_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => L(3),
      Q => remainder(2),
      R => '0'
    );
\remainder_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => L(4),
      Q => remainder(3),
      R => '0'
    );
\remainder_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => L(5),
      Q => remainder(4),
      R => '0'
    );
\remainder_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => L(6),
      Q => remainder(5),
      R => '0'
    );
\remainder_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => L(7),
      Q => remainder(6),
      R => '0'
    );
\remainder_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => L(8),
      Q => remainder(7),
      R => '0'
    );
\remainder_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => L(9),
      Q => remainder(8),
      R => '0'
    );
\remainder_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => quotient0,
      D => L(10),
      Q => remainder(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_RestoringDivision_0_2 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_RestoringDivision_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_RestoringDivision_0_2 : entity is "design_1_RestoringDivision_0_2,RestoringDivision,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_RestoringDivision_0_2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_RestoringDivision_0_2 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_RestoringDivision_0_2 : entity is "RestoringDivision,Vivado 2024.1";
end design_1_RestoringDivision_0_2;

architecture STRUCTURE of design_1_RestoringDivision_0_2 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_RestoringDivision_0_2_RestoringDivision
     port map (
      clk => clk,
      dividend(11 downto 0) => dividend(11 downto 0),
      divisor(11 downto 0) => divisor(11 downto 0),
      gata => gata,
      leds(3 downto 0) => leds(3 downto 0),
      quotient(11 downto 0) => quotient(11 downto 0),
      remainder(12 downto 0) => remainder(12 downto 0),
      rst => rst,
      start => start
    );
end STRUCTURE;
