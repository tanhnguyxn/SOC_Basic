-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Sep  2 00:25:28 2026
-- Host        : LAPTOP-RKRVUI82 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SoC_H_Acceleration_IP_0_1_sim_netlist.vhdl
-- Design      : SoC_H_Acceleration_IP_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Arbiter is
  port (
    r_addr_r : out STD_LOGIC;
    r_addr_valid_r : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 30 downto 0 );
    r_addr_i_w : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \r_addr_r_reg[0]_0\ : in STD_LOGIC;
    r_addr_valid_i_w : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Arbiter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Arbiter is
  signal \^r_addr_r\ : STD_LOGIC;
  signal \^r_addr_valid_r\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s00_axi_rdata[10]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s00_axi_rdata[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s00_axi_rdata[12]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s00_axi_rdata[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s00_axi_rdata[14]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s00_axi_rdata[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s00_axi_rdata[16]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s00_axi_rdata[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s00_axi_rdata[18]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s00_axi_rdata[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s00_axi_rdata[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s00_axi_rdata[20]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s00_axi_rdata[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s00_axi_rdata[22]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s00_axi_rdata[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s00_axi_rdata[24]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s00_axi_rdata[25]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[26]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[27]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[28]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s00_axi_rdata[30]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s00_axi_rdata[4]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s00_axi_rdata[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s00_axi_rdata[6]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s00_axi_rdata[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s00_axi_rdata[8]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s00_axi_rdata[9]_INST_0\ : label is "soft_lutpair4";
begin
  r_addr_r <= \^r_addr_r\;
  r_addr_valid_r <= \^r_addr_valid_r\;
\r_addr_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \r_addr_r_reg[0]_0\,
      D => r_addr_i_w,
      Q => \^r_addr_r\
    );
r_addr_valid_r_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \r_addr_r_reg[0]_0\,
      D => r_addr_valid_i_w,
      Q => \^r_addr_valid_r\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(9),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(9)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(10),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(11),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(12),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(13),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(14),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(15),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(16),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(17),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(18),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(0),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(19),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(20),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(21),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(22),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(23),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(24),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(25),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(26),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(27),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(28),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(1),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(29),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(30),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(2),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(3),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(4),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(5),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(6),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(7),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(8),
      I1 => \^r_addr_valid_r\,
      I2 => \^r_addr_r\,
      O => s00_axi_rdata(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Datapath is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn_0 : out STD_LOGIC;
    \h_r_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \e_r_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \f_r_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \d_r_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \b_r_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \c_r_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \a_r_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \e_r_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Datapath;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Datapath is
  signal \FSM_sequential_state_r[2]_i_1_n_0\ : STD_LOGIC;
  signal a_r : STD_LOGIC;
  signal \a_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[23]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[24]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[25]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[26]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[27]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[28]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[29]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[30]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[31]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \a_r_reg_n_0_[9]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[23]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[24]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[25]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[26]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[27]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[28]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[29]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[30]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[31]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \b_r_reg_n_0_[9]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[23]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[24]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[25]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[26]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[27]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[28]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[29]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[30]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[31]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \c_r_reg_n_0_[9]\ : STD_LOGIC;
  signal d_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \e_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[23]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[24]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[25]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[26]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[27]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[28]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[29]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[30]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[31]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \e_r_reg_n_0_[9]\ : STD_LOGIC;
  signal f_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal h_r : STD_LOGIC;
  signal \h_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[10]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[11]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[12]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[13]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[14]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[15]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[16]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[17]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[18]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[19]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[20]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[21]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[22]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[23]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[24]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[25]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[26]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[27]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[28]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[29]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[30]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[31]_i_2_n_0\ : STD_LOGIC;
  signal \h_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[5]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[6]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[7]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[8]_i_1_n_0\ : STD_LOGIC;
  signal \h_r[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal state_r : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state_r__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sub_r : STD_LOGIC;
  signal sub_r00_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sub_r0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__0_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__0_n_1\ : STD_LOGIC;
  signal \sub_r0_carry__0_n_2\ : STD_LOGIC;
  signal \sub_r0_carry__0_n_3\ : STD_LOGIC;
  signal \sub_r0_carry__0_n_4\ : STD_LOGIC;
  signal \sub_r0_carry__0_n_5\ : STD_LOGIC;
  signal \sub_r0_carry__0_n_6\ : STD_LOGIC;
  signal \sub_r0_carry__0_n_7\ : STD_LOGIC;
  signal \sub_r0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__1_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__1_n_1\ : STD_LOGIC;
  signal \sub_r0_carry__1_n_2\ : STD_LOGIC;
  signal \sub_r0_carry__1_n_3\ : STD_LOGIC;
  signal \sub_r0_carry__1_n_4\ : STD_LOGIC;
  signal \sub_r0_carry__1_n_5\ : STD_LOGIC;
  signal \sub_r0_carry__1_n_6\ : STD_LOGIC;
  signal \sub_r0_carry__1_n_7\ : STD_LOGIC;
  signal \sub_r0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \sub_r0_carry__2_n_1\ : STD_LOGIC;
  signal \sub_r0_carry__2_n_2\ : STD_LOGIC;
  signal \sub_r0_carry__2_n_3\ : STD_LOGIC;
  signal \sub_r0_carry__2_n_4\ : STD_LOGIC;
  signal \sub_r0_carry__2_n_5\ : STD_LOGIC;
  signal \sub_r0_carry__2_n_6\ : STD_LOGIC;
  signal \sub_r0_carry__2_n_7\ : STD_LOGIC;
  signal sub_r0_carry_i_1_n_0 : STD_LOGIC;
  signal sub_r0_carry_i_2_n_0 : STD_LOGIC;
  signal sub_r0_carry_i_3_n_0 : STD_LOGIC;
  signal sub_r0_carry_i_4_n_0 : STD_LOGIC;
  signal sub_r0_carry_i_5_n_0 : STD_LOGIC;
  signal sub_r0_carry_i_6_n_0 : STD_LOGIC;
  signal sub_r0_carry_i_7_n_0 : STD_LOGIC;
  signal sub_r0_carry_i_8_n_0 : STD_LOGIC;
  signal sub_r0_carry_n_0 : STD_LOGIC;
  signal sub_r0_carry_n_1 : STD_LOGIC;
  signal sub_r0_carry_n_2 : STD_LOGIC;
  signal sub_r0_carry_n_3 : STD_LOGIC;
  signal sub_r0_carry_n_4 : STD_LOGIC;
  signal sub_r0_carry_n_5 : STD_LOGIC;
  signal sub_r0_carry_n_6 : STD_LOGIC;
  signal sub_r0_carry_n_7 : STD_LOGIC;
  signal \sub_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[23]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[24]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[25]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[26]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[27]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[28]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[29]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[30]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[31]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \sub_r_reg_n_0_[9]\ : STD_LOGIC;
  signal sum_r : STD_LOGIC;
  signal sum_r0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sum_r[15]_i_10_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_11_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_12_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_13_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_14_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_15_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_16_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_17_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_2_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_3_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_4_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_5_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_6_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_7_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_8_n_0\ : STD_LOGIC;
  signal \sum_r[15]_i_9_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_10_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_11_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_12_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_13_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_14_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_15_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_16_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_17_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_2_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_3_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_4_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_5_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_6_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_7_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_8_n_0\ : STD_LOGIC;
  signal \sum_r[23]_i_9_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_10_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_11_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_12_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_13_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_14_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_15_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_16_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_17_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_3_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_4_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_5_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_6_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_7_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_8_n_0\ : STD_LOGIC;
  signal \sum_r[31]_i_9_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_10_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_11_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_12_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_13_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_14_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_15_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_16_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_2_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_3_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_4_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_5_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_6_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_7_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_8_n_0\ : STD_LOGIC;
  signal \sum_r[7]_i_9_n_0\ : STD_LOGIC;
  signal \sum_r_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \sum_r_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \sum_r_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \sum_r_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \sum_r_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \sum_r_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \sum_r_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \sum_r_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \sum_r_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \sum_r_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \sum_r_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \sum_r_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \sum_r_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \sum_r_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \sum_r_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \sum_r_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \sum_r_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \sum_r_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \sum_r_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \sum_r_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \sum_r_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \sum_r_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \sum_r_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \sum_r_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \sum_r_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \sum_r_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \sum_r_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \sum_r_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \sum_r_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \sum_r_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \sum_r_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[23]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[24]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[25]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[26]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[27]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[28]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[29]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[30]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[31]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \sum_r_reg_n_0_[9]\ : STD_LOGIC;
  signal xor_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \xor_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[10]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[11]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[12]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[13]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[14]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[15]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[16]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[17]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[18]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[19]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[20]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[21]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[22]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[23]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[24]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[25]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[26]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[27]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[28]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[29]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[30]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[31]_i_2_n_0\ : STD_LOGIC;
  signal \xor_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[5]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[6]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[7]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[8]_i_1_n_0\ : STD_LOGIC;
  signal \xor_r[9]_i_1_n_0\ : STD_LOGIC;
  signal xor_r_0 : STD_LOGIC;
  signal \NLW_sub_r0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_sum_r_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_r[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_state_r[0]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state_r[1]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state_r[1]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_state_r[2]_i_2\ : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[0]\ : label is "DP_IDLE:000,DP_ADD:001,DP_XOR:010,DP_SUB:011,DP_OR:100,DP_DONE:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[1]\ : label is "DP_IDLE:000,DP_ADD:001,DP_XOR:010,DP_SUB:011,DP_OR:100,DP_DONE:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[2]\ : label is "DP_IDLE:000,DP_ADD:001,DP_XOR:010,DP_SUB:011,DP_OR:100,DP_DONE:101,";
  attribute SOFT_HLUTNM of \h_r[31]_i_1\ : label is "soft_lutpair16";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of sub_r0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sub_r0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sub_r0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sub_r0_carry__2\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \sum_r[15]_i_10\ : label is "lutpair15";
  attribute HLUTNM of \sum_r[15]_i_11\ : label is "lutpair14";
  attribute HLUTNM of \sum_r[15]_i_12\ : label is "lutpair13";
  attribute HLUTNM of \sum_r[15]_i_13\ : label is "lutpair12";
  attribute HLUTNM of \sum_r[15]_i_14\ : label is "lutpair11";
  attribute HLUTNM of \sum_r[15]_i_15\ : label is "lutpair10";
  attribute HLUTNM of \sum_r[15]_i_16\ : label is "lutpair9";
  attribute HLUTNM of \sum_r[15]_i_17\ : label is "lutpair8";
  attribute HLUTNM of \sum_r[15]_i_2\ : label is "lutpair14";
  attribute HLUTNM of \sum_r[15]_i_3\ : label is "lutpair13";
  attribute HLUTNM of \sum_r[15]_i_4\ : label is "lutpair12";
  attribute HLUTNM of \sum_r[15]_i_5\ : label is "lutpair11";
  attribute HLUTNM of \sum_r[15]_i_6\ : label is "lutpair10";
  attribute HLUTNM of \sum_r[15]_i_7\ : label is "lutpair9";
  attribute HLUTNM of \sum_r[15]_i_8\ : label is "lutpair8";
  attribute HLUTNM of \sum_r[15]_i_9\ : label is "lutpair7";
  attribute HLUTNM of \sum_r[23]_i_10\ : label is "lutpair23";
  attribute HLUTNM of \sum_r[23]_i_11\ : label is "lutpair22";
  attribute HLUTNM of \sum_r[23]_i_12\ : label is "lutpair21";
  attribute HLUTNM of \sum_r[23]_i_13\ : label is "lutpair20";
  attribute HLUTNM of \sum_r[23]_i_14\ : label is "lutpair19";
  attribute HLUTNM of \sum_r[23]_i_15\ : label is "lutpair18";
  attribute HLUTNM of \sum_r[23]_i_16\ : label is "lutpair17";
  attribute HLUTNM of \sum_r[23]_i_17\ : label is "lutpair16";
  attribute HLUTNM of \sum_r[23]_i_2\ : label is "lutpair22";
  attribute HLUTNM of \sum_r[23]_i_3\ : label is "lutpair21";
  attribute HLUTNM of \sum_r[23]_i_4\ : label is "lutpair20";
  attribute HLUTNM of \sum_r[23]_i_5\ : label is "lutpair19";
  attribute HLUTNM of \sum_r[23]_i_6\ : label is "lutpair18";
  attribute HLUTNM of \sum_r[23]_i_7\ : label is "lutpair17";
  attribute HLUTNM of \sum_r[23]_i_8\ : label is "lutpair16";
  attribute HLUTNM of \sum_r[23]_i_9\ : label is "lutpair15";
  attribute HLUTNM of \sum_r[31]_i_12\ : label is "lutpair29";
  attribute HLUTNM of \sum_r[31]_i_13\ : label is "lutpair28";
  attribute HLUTNM of \sum_r[31]_i_14\ : label is "lutpair27";
  attribute HLUTNM of \sum_r[31]_i_15\ : label is "lutpair26";
  attribute HLUTNM of \sum_r[31]_i_16\ : label is "lutpair25";
  attribute HLUTNM of \sum_r[31]_i_17\ : label is "lutpair24";
  attribute HLUTNM of \sum_r[31]_i_3\ : label is "lutpair29";
  attribute HLUTNM of \sum_r[31]_i_4\ : label is "lutpair28";
  attribute HLUTNM of \sum_r[31]_i_5\ : label is "lutpair27";
  attribute HLUTNM of \sum_r[31]_i_6\ : label is "lutpair26";
  attribute HLUTNM of \sum_r[31]_i_7\ : label is "lutpair25";
  attribute HLUTNM of \sum_r[31]_i_8\ : label is "lutpair24";
  attribute HLUTNM of \sum_r[31]_i_9\ : label is "lutpair23";
  attribute HLUTNM of \sum_r[7]_i_10\ : label is "lutpair6";
  attribute HLUTNM of \sum_r[7]_i_11\ : label is "lutpair5";
  attribute HLUTNM of \sum_r[7]_i_12\ : label is "lutpair4";
  attribute HLUTNM of \sum_r[7]_i_13\ : label is "lutpair3";
  attribute HLUTNM of \sum_r[7]_i_14\ : label is "lutpair2";
  attribute HLUTNM of \sum_r[7]_i_15\ : label is "lutpair1";
  attribute HLUTNM of \sum_r[7]_i_16\ : label is "lutpair0";
  attribute HLUTNM of \sum_r[7]_i_2\ : label is "lutpair6";
  attribute HLUTNM of \sum_r[7]_i_3\ : label is "lutpair5";
  attribute HLUTNM of \sum_r[7]_i_4\ : label is "lutpair4";
  attribute HLUTNM of \sum_r[7]_i_5\ : label is "lutpair3";
  attribute HLUTNM of \sum_r[7]_i_6\ : label is "lutpair2";
  attribute HLUTNM of \sum_r[7]_i_7\ : label is "lutpair1";
  attribute HLUTNM of \sum_r[7]_i_8\ : label is "lutpair0";
  attribute HLUTNM of \sum_r[7]_i_9\ : label is "lutpair7";
  attribute ADDER_THRESHOLD of \sum_r_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_r_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_r_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_r_reg[7]_i_1\ : label is 35;
begin
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
\FSM_sequential_state_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000800FF"
    )
        port map (
      I0 => state_r(2),
      I1 => state_r(0),
      I2 => state_r(1),
      I3 => Q(0),
      I4 => Q(1),
      O => D(0)
    );
\FSM_sequential_state_r[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => state_r(0),
      I1 => state_r(1),
      I2 => state_r(2),
      O => \state_r__0\(0)
    );
\FSM_sequential_state_r[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => state_r(2),
      I1 => state_r(0),
      I2 => state_r(1),
      O => \state_r__0\(1)
    );
\FSM_sequential_state_r[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0040FF00"
    )
        port map (
      I0 => state_r(1),
      I1 => state_r(0),
      I2 => state_r(2),
      I3 => Q(0),
      I4 => Q(1),
      O => D(1)
    );
\FSM_sequential_state_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FFE"
    )
        port map (
      I0 => state_r(0),
      I1 => \e_r_reg[0]_0\,
      I2 => state_r(1),
      I3 => state_r(2),
      O => \FSM_sequential_state_r[2]_i_1_n_0\
    );
\FSM_sequential_state_r[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => state_r(0),
      I1 => state_r(2),
      I2 => state_r(1),
      O => \state_r__0\(2)
    );
\FSM_sequential_state_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state_r[2]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \state_r__0\(0),
      Q => state_r(0)
    );
\FSM_sequential_state_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state_r[2]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \state_r__0\(1),
      Q => state_r(1)
    );
\FSM_sequential_state_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state_r[2]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \state_r__0\(2),
      Q => state_r(2)
    );
\a_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(0),
      Q => \a_r_reg_n_0_[0]\
    );
\a_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(10),
      Q => \a_r_reg_n_0_[10]\
    );
\a_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(11),
      Q => \a_r_reg_n_0_[11]\
    );
\a_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(12),
      Q => \a_r_reg_n_0_[12]\
    );
\a_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(13),
      Q => \a_r_reg_n_0_[13]\
    );
\a_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(14),
      Q => \a_r_reg_n_0_[14]\
    );
\a_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(15),
      Q => \a_r_reg_n_0_[15]\
    );
\a_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(16),
      Q => \a_r_reg_n_0_[16]\
    );
\a_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(17),
      Q => \a_r_reg_n_0_[17]\
    );
\a_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(18),
      Q => \a_r_reg_n_0_[18]\
    );
\a_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(19),
      Q => \a_r_reg_n_0_[19]\
    );
\a_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(1),
      Q => \a_r_reg_n_0_[1]\
    );
\a_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(20),
      Q => \a_r_reg_n_0_[20]\
    );
\a_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(21),
      Q => \a_r_reg_n_0_[21]\
    );
\a_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(22),
      Q => \a_r_reg_n_0_[22]\
    );
\a_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(23),
      Q => \a_r_reg_n_0_[23]\
    );
\a_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(24),
      Q => \a_r_reg_n_0_[24]\
    );
\a_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(25),
      Q => \a_r_reg_n_0_[25]\
    );
\a_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(26),
      Q => \a_r_reg_n_0_[26]\
    );
\a_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(27),
      Q => \a_r_reg_n_0_[27]\
    );
\a_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(28),
      Q => \a_r_reg_n_0_[28]\
    );
\a_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(29),
      Q => \a_r_reg_n_0_[29]\
    );
\a_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(2),
      Q => \a_r_reg_n_0_[2]\
    );
\a_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(30),
      Q => \a_r_reg_n_0_[30]\
    );
\a_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(31),
      Q => \a_r_reg_n_0_[31]\
    );
\a_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(3),
      Q => \a_r_reg_n_0_[3]\
    );
\a_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(4),
      Q => \a_r_reg_n_0_[4]\
    );
\a_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(5),
      Q => \a_r_reg_n_0_[5]\
    );
\a_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(6),
      Q => \a_r_reg_n_0_[6]\
    );
\a_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(7),
      Q => \a_r_reg_n_0_[7]\
    );
\a_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(8),
      Q => \a_r_reg_n_0_[8]\
    );
\a_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \a_r_reg[31]_0\(9),
      Q => \a_r_reg_n_0_[9]\
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^s00_axi_aresetn_0\
    );
\b_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(0),
      Q => \b_r_reg_n_0_[0]\
    );
\b_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(10),
      Q => \b_r_reg_n_0_[10]\
    );
\b_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(11),
      Q => \b_r_reg_n_0_[11]\
    );
\b_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(12),
      Q => \b_r_reg_n_0_[12]\
    );
\b_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(13),
      Q => \b_r_reg_n_0_[13]\
    );
\b_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(14),
      Q => \b_r_reg_n_0_[14]\
    );
\b_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(15),
      Q => \b_r_reg_n_0_[15]\
    );
\b_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(16),
      Q => \b_r_reg_n_0_[16]\
    );
\b_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(17),
      Q => \b_r_reg_n_0_[17]\
    );
\b_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(18),
      Q => \b_r_reg_n_0_[18]\
    );
\b_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(19),
      Q => \b_r_reg_n_0_[19]\
    );
\b_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(1),
      Q => \b_r_reg_n_0_[1]\
    );
\b_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(20),
      Q => \b_r_reg_n_0_[20]\
    );
\b_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(21),
      Q => \b_r_reg_n_0_[21]\
    );
\b_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(22),
      Q => \b_r_reg_n_0_[22]\
    );
\b_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(23),
      Q => \b_r_reg_n_0_[23]\
    );
\b_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(24),
      Q => \b_r_reg_n_0_[24]\
    );
\b_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(25),
      Q => \b_r_reg_n_0_[25]\
    );
\b_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(26),
      Q => \b_r_reg_n_0_[26]\
    );
\b_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(27),
      Q => \b_r_reg_n_0_[27]\
    );
\b_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(28),
      Q => \b_r_reg_n_0_[28]\
    );
\b_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(29),
      Q => \b_r_reg_n_0_[29]\
    );
\b_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(2),
      Q => \b_r_reg_n_0_[2]\
    );
\b_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(30),
      Q => \b_r_reg_n_0_[30]\
    );
\b_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(31),
      Q => \b_r_reg_n_0_[31]\
    );
\b_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(3),
      Q => \b_r_reg_n_0_[3]\
    );
\b_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(4),
      Q => \b_r_reg_n_0_[4]\
    );
\b_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(5),
      Q => \b_r_reg_n_0_[5]\
    );
\b_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(6),
      Q => \b_r_reg_n_0_[6]\
    );
\b_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(7),
      Q => \b_r_reg_n_0_[7]\
    );
\b_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(8),
      Q => \b_r_reg_n_0_[8]\
    );
\b_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \b_r_reg[31]_0\(9),
      Q => \b_r_reg_n_0_[9]\
    );
\c_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(0),
      Q => \c_r_reg_n_0_[0]\
    );
\c_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(10),
      Q => \c_r_reg_n_0_[10]\
    );
\c_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(11),
      Q => \c_r_reg_n_0_[11]\
    );
\c_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(12),
      Q => \c_r_reg_n_0_[12]\
    );
\c_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(13),
      Q => \c_r_reg_n_0_[13]\
    );
\c_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(14),
      Q => \c_r_reg_n_0_[14]\
    );
\c_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(15),
      Q => \c_r_reg_n_0_[15]\
    );
\c_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(16),
      Q => \c_r_reg_n_0_[16]\
    );
\c_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(17),
      Q => \c_r_reg_n_0_[17]\
    );
\c_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(18),
      Q => \c_r_reg_n_0_[18]\
    );
\c_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(19),
      Q => \c_r_reg_n_0_[19]\
    );
\c_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(1),
      Q => \c_r_reg_n_0_[1]\
    );
\c_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(20),
      Q => \c_r_reg_n_0_[20]\
    );
\c_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(21),
      Q => \c_r_reg_n_0_[21]\
    );
\c_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(22),
      Q => \c_r_reg_n_0_[22]\
    );
\c_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(23),
      Q => \c_r_reg_n_0_[23]\
    );
\c_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(24),
      Q => \c_r_reg_n_0_[24]\
    );
\c_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(25),
      Q => \c_r_reg_n_0_[25]\
    );
\c_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(26),
      Q => \c_r_reg_n_0_[26]\
    );
\c_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(27),
      Q => \c_r_reg_n_0_[27]\
    );
\c_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(28),
      Q => \c_r_reg_n_0_[28]\
    );
\c_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(29),
      Q => \c_r_reg_n_0_[29]\
    );
\c_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(2),
      Q => \c_r_reg_n_0_[2]\
    );
\c_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(30),
      Q => \c_r_reg_n_0_[30]\
    );
\c_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(31),
      Q => \c_r_reg_n_0_[31]\
    );
\c_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(3),
      Q => \c_r_reg_n_0_[3]\
    );
\c_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(4),
      Q => \c_r_reg_n_0_[4]\
    );
\c_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(5),
      Q => \c_r_reg_n_0_[5]\
    );
\c_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(6),
      Q => \c_r_reg_n_0_[6]\
    );
\c_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(7),
      Q => \c_r_reg_n_0_[7]\
    );
\c_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(8),
      Q => \c_r_reg_n_0_[8]\
    );
\c_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \c_r_reg[31]_0\(9),
      Q => \c_r_reg_n_0_[9]\
    );
\d_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(0),
      Q => d_r(0)
    );
\d_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(10),
      Q => d_r(10)
    );
\d_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(11),
      Q => d_r(11)
    );
\d_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(12),
      Q => d_r(12)
    );
\d_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(13),
      Q => d_r(13)
    );
\d_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(14),
      Q => d_r(14)
    );
\d_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(15),
      Q => d_r(15)
    );
\d_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(16),
      Q => d_r(16)
    );
\d_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(17),
      Q => d_r(17)
    );
\d_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(18),
      Q => d_r(18)
    );
\d_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(19),
      Q => d_r(19)
    );
\d_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(1),
      Q => d_r(1)
    );
\d_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(20),
      Q => d_r(20)
    );
\d_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(21),
      Q => d_r(21)
    );
\d_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(22),
      Q => d_r(22)
    );
\d_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(23),
      Q => d_r(23)
    );
\d_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(24),
      Q => d_r(24)
    );
\d_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(25),
      Q => d_r(25)
    );
\d_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(26),
      Q => d_r(26)
    );
\d_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(27),
      Q => d_r(27)
    );
\d_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(28),
      Q => d_r(28)
    );
\d_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(29),
      Q => d_r(29)
    );
\d_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(2),
      Q => d_r(2)
    );
\d_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(30),
      Q => d_r(30)
    );
\d_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(31),
      Q => d_r(31)
    );
\d_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(3),
      Q => d_r(3)
    );
\d_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(4),
      Q => d_r(4)
    );
\d_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(5),
      Q => d_r(5)
    );
\d_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(6),
      Q => d_r(6)
    );
\d_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(7),
      Q => d_r(7)
    );
\d_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(8),
      Q => d_r(8)
    );
\d_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \d_r_reg[31]_0\(9),
      Q => d_r(9)
    );
\e_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(0),
      Q => \e_r_reg_n_0_[0]\
    );
\e_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(10),
      Q => \e_r_reg_n_0_[10]\
    );
\e_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(11),
      Q => \e_r_reg_n_0_[11]\
    );
\e_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(12),
      Q => \e_r_reg_n_0_[12]\
    );
\e_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(13),
      Q => \e_r_reg_n_0_[13]\
    );
\e_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(14),
      Q => \e_r_reg_n_0_[14]\
    );
\e_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(15),
      Q => \e_r_reg_n_0_[15]\
    );
\e_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(16),
      Q => \e_r_reg_n_0_[16]\
    );
\e_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(17),
      Q => \e_r_reg_n_0_[17]\
    );
\e_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(18),
      Q => \e_r_reg_n_0_[18]\
    );
\e_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(19),
      Q => \e_r_reg_n_0_[19]\
    );
\e_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(1),
      Q => \e_r_reg_n_0_[1]\
    );
\e_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(20),
      Q => \e_r_reg_n_0_[20]\
    );
\e_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(21),
      Q => \e_r_reg_n_0_[21]\
    );
\e_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(22),
      Q => \e_r_reg_n_0_[22]\
    );
\e_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(23),
      Q => \e_r_reg_n_0_[23]\
    );
\e_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(24),
      Q => \e_r_reg_n_0_[24]\
    );
\e_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(25),
      Q => \e_r_reg_n_0_[25]\
    );
\e_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(26),
      Q => \e_r_reg_n_0_[26]\
    );
\e_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(27),
      Q => \e_r_reg_n_0_[27]\
    );
\e_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(28),
      Q => \e_r_reg_n_0_[28]\
    );
\e_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(29),
      Q => \e_r_reg_n_0_[29]\
    );
\e_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(2),
      Q => \e_r_reg_n_0_[2]\
    );
\e_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(30),
      Q => \e_r_reg_n_0_[30]\
    );
\e_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(31),
      Q => \e_r_reg_n_0_[31]\
    );
\e_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(3),
      Q => \e_r_reg_n_0_[3]\
    );
\e_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(4),
      Q => \e_r_reg_n_0_[4]\
    );
\e_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(5),
      Q => \e_r_reg_n_0_[5]\
    );
\e_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(6),
      Q => \e_r_reg_n_0_[6]\
    );
\e_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(7),
      Q => \e_r_reg_n_0_[7]\
    );
\e_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(8),
      Q => \e_r_reg_n_0_[8]\
    );
\e_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \e_r_reg[31]_0\(9),
      Q => \e_r_reg_n_0_[9]\
    );
\f_r[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \e_r_reg[0]_0\,
      I1 => state_r(2),
      I2 => state_r(0),
      I3 => state_r(1),
      O => a_r
    );
\f_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(0),
      Q => f_r(0)
    );
\f_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(10),
      Q => f_r(10)
    );
\f_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(11),
      Q => f_r(11)
    );
\f_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(12),
      Q => f_r(12)
    );
\f_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(13),
      Q => f_r(13)
    );
\f_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(14),
      Q => f_r(14)
    );
\f_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(15),
      Q => f_r(15)
    );
\f_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(16),
      Q => f_r(16)
    );
\f_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(17),
      Q => f_r(17)
    );
\f_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(18),
      Q => f_r(18)
    );
\f_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(19),
      Q => f_r(19)
    );
\f_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(1),
      Q => f_r(1)
    );
\f_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(20),
      Q => f_r(20)
    );
\f_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(21),
      Q => f_r(21)
    );
\f_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(22),
      Q => f_r(22)
    );
\f_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(23),
      Q => f_r(23)
    );
\f_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(24),
      Q => f_r(24)
    );
\f_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(25),
      Q => f_r(25)
    );
\f_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(26),
      Q => f_r(26)
    );
\f_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(27),
      Q => f_r(27)
    );
\f_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(28),
      Q => f_r(28)
    );
\f_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(29),
      Q => f_r(29)
    );
\f_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(2),
      Q => f_r(2)
    );
\f_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(30),
      Q => f_r(30)
    );
\f_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(31),
      Q => f_r(31)
    );
\f_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(3),
      Q => f_r(3)
    );
\f_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(4),
      Q => f_r(4)
    );
\f_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(5),
      Q => f_r(5)
    );
\f_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(6),
      Q => f_r(6)
    );
\f_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(7),
      Q => f_r(7)
    );
\f_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(8),
      Q => f_r(8)
    );
\f_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => a_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \f_r_reg[31]_0\(9),
      Q => f_r(9)
    );
\h_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[0]\,
      I1 => f_r(0),
      O => \h_r[0]_i_1_n_0\
    );
\h_r[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[10]\,
      I1 => f_r(10),
      O => \h_r[10]_i_1_n_0\
    );
\h_r[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[11]\,
      I1 => f_r(11),
      O => \h_r[11]_i_1_n_0\
    );
\h_r[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[12]\,
      I1 => f_r(12),
      O => \h_r[12]_i_1_n_0\
    );
\h_r[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[13]\,
      I1 => f_r(13),
      O => \h_r[13]_i_1_n_0\
    );
\h_r[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[14]\,
      I1 => f_r(14),
      O => \h_r[14]_i_1_n_0\
    );
\h_r[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[15]\,
      I1 => f_r(15),
      O => \h_r[15]_i_1_n_0\
    );
\h_r[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[16]\,
      I1 => f_r(16),
      O => \h_r[16]_i_1_n_0\
    );
\h_r[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[17]\,
      I1 => f_r(17),
      O => \h_r[17]_i_1_n_0\
    );
\h_r[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[18]\,
      I1 => f_r(18),
      O => \h_r[18]_i_1_n_0\
    );
\h_r[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[19]\,
      I1 => f_r(19),
      O => \h_r[19]_i_1_n_0\
    );
\h_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[1]\,
      I1 => f_r(1),
      O => \h_r[1]_i_1_n_0\
    );
\h_r[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[20]\,
      I1 => f_r(20),
      O => \h_r[20]_i_1_n_0\
    );
\h_r[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[21]\,
      I1 => f_r(21),
      O => \h_r[21]_i_1_n_0\
    );
\h_r[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[22]\,
      I1 => f_r(22),
      O => \h_r[22]_i_1_n_0\
    );
\h_r[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[23]\,
      I1 => f_r(23),
      O => \h_r[23]_i_1_n_0\
    );
\h_r[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[24]\,
      I1 => f_r(24),
      O => \h_r[24]_i_1_n_0\
    );
\h_r[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[25]\,
      I1 => f_r(25),
      O => \h_r[25]_i_1_n_0\
    );
\h_r[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[26]\,
      I1 => f_r(26),
      O => \h_r[26]_i_1_n_0\
    );
\h_r[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[27]\,
      I1 => f_r(27),
      O => \h_r[27]_i_1_n_0\
    );
\h_r[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[28]\,
      I1 => f_r(28),
      O => \h_r[28]_i_1_n_0\
    );
\h_r[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[29]\,
      I1 => f_r(29),
      O => \h_r[29]_i_1_n_0\
    );
\h_r[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[2]\,
      I1 => f_r(2),
      O => \h_r[2]_i_1_n_0\
    );
\h_r[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[30]\,
      I1 => f_r(30),
      O => \h_r[30]_i_1_n_0\
    );
\h_r[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => state_r(2),
      I3 => state_r(0),
      I4 => state_r(1),
      O => E(0)
    );
\h_r[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_r(1),
      I1 => state_r(2),
      I2 => state_r(0),
      O => h_r
    );
\h_r[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[31]\,
      I1 => f_r(31),
      O => \h_r[31]_i_2_n_0\
    );
\h_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[3]\,
      I1 => f_r(3),
      O => \h_r[3]_i_1_n_0\
    );
\h_r[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[4]\,
      I1 => f_r(4),
      O => \h_r[4]_i_1_n_0\
    );
\h_r[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[5]\,
      I1 => f_r(5),
      O => \h_r[5]_i_1_n_0\
    );
\h_r[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[6]\,
      I1 => f_r(6),
      O => \h_r[6]_i_1_n_0\
    );
\h_r[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[7]\,
      I1 => f_r(7),
      O => \h_r[7]_i_1_n_0\
    );
\h_r[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[8]\,
      I1 => f_r(8),
      O => \h_r[8]_i_1_n_0\
    );
\h_r[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sub_r_reg_n_0_[9]\,
      I1 => f_r(9),
      O => \h_r[9]_i_1_n_0\
    );
\h_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[0]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(0)
    );
\h_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[10]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(10)
    );
\h_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[11]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(11)
    );
\h_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[12]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(12)
    );
\h_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[13]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(13)
    );
\h_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[14]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(14)
    );
\h_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[15]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(15)
    );
\h_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[16]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(16)
    );
\h_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[17]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(17)
    );
\h_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[18]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(18)
    );
\h_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[19]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(19)
    );
\h_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[1]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(1)
    );
\h_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[20]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(20)
    );
\h_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[21]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(21)
    );
\h_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[22]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(22)
    );
\h_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[23]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(23)
    );
\h_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[24]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(24)
    );
\h_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[25]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(25)
    );
\h_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[26]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(26)
    );
\h_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[27]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(27)
    );
\h_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[28]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(28)
    );
\h_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[29]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(29)
    );
\h_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[2]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(2)
    );
\h_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[30]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(30)
    );
\h_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[31]_i_2_n_0\,
      Q => \h_r_reg[31]_0\(31)
    );
\h_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[3]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(3)
    );
\h_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[4]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(4)
    );
\h_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[5]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(5)
    );
\h_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[6]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(6)
    );
\h_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[7]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(7)
    );
\h_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[8]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(8)
    );
\h_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => h_r,
      CLR => \^s00_axi_aresetn_0\,
      D => \h_r[9]_i_1_n_0\,
      Q => \h_r_reg[31]_0\(9)
    );
sub_r0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => sub_r0_carry_n_0,
      CO(6) => sub_r0_carry_n_1,
      CO(5) => sub_r0_carry_n_2,
      CO(4) => sub_r0_carry_n_3,
      CO(3) => sub_r0_carry_n_4,
      CO(2) => sub_r0_carry_n_5,
      CO(1) => sub_r0_carry_n_6,
      CO(0) => sub_r0_carry_n_7,
      DI(7 downto 0) => xor_r(7 downto 0),
      O(7 downto 0) => sub_r00_out(7 downto 0),
      S(7) => sub_r0_carry_i_1_n_0,
      S(6) => sub_r0_carry_i_2_n_0,
      S(5) => sub_r0_carry_i_3_n_0,
      S(4) => sub_r0_carry_i_4_n_0,
      S(3) => sub_r0_carry_i_5_n_0,
      S(2) => sub_r0_carry_i_6_n_0,
      S(1) => sub_r0_carry_i_7_n_0,
      S(0) => sub_r0_carry_i_8_n_0
    );
\sub_r0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => sub_r0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \sub_r0_carry__0_n_0\,
      CO(6) => \sub_r0_carry__0_n_1\,
      CO(5) => \sub_r0_carry__0_n_2\,
      CO(4) => \sub_r0_carry__0_n_3\,
      CO(3) => \sub_r0_carry__0_n_4\,
      CO(2) => \sub_r0_carry__0_n_5\,
      CO(1) => \sub_r0_carry__0_n_6\,
      CO(0) => \sub_r0_carry__0_n_7\,
      DI(7 downto 0) => xor_r(15 downto 8),
      O(7 downto 0) => sub_r00_out(15 downto 8),
      S(7) => \sub_r0_carry__0_i_1_n_0\,
      S(6) => \sub_r0_carry__0_i_2_n_0\,
      S(5) => \sub_r0_carry__0_i_3_n_0\,
      S(4) => \sub_r0_carry__0_i_4_n_0\,
      S(3) => \sub_r0_carry__0_i_5_n_0\,
      S(2) => \sub_r0_carry__0_i_6_n_0\,
      S(1) => \sub_r0_carry__0_i_7_n_0\,
      S(0) => \sub_r0_carry__0_i_8_n_0\
    );
\sub_r0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(15),
      I1 => \e_r_reg_n_0_[15]\,
      O => \sub_r0_carry__0_i_1_n_0\
    );
\sub_r0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(14),
      I1 => \e_r_reg_n_0_[14]\,
      O => \sub_r0_carry__0_i_2_n_0\
    );
\sub_r0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(13),
      I1 => \e_r_reg_n_0_[13]\,
      O => \sub_r0_carry__0_i_3_n_0\
    );
\sub_r0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(12),
      I1 => \e_r_reg_n_0_[12]\,
      O => \sub_r0_carry__0_i_4_n_0\
    );
\sub_r0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(11),
      I1 => \e_r_reg_n_0_[11]\,
      O => \sub_r0_carry__0_i_5_n_0\
    );
\sub_r0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(10),
      I1 => \e_r_reg_n_0_[10]\,
      O => \sub_r0_carry__0_i_6_n_0\
    );
\sub_r0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(9),
      I1 => \e_r_reg_n_0_[9]\,
      O => \sub_r0_carry__0_i_7_n_0\
    );
\sub_r0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(8),
      I1 => \e_r_reg_n_0_[8]\,
      O => \sub_r0_carry__0_i_8_n_0\
    );
\sub_r0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sub_r0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \sub_r0_carry__1_n_0\,
      CO(6) => \sub_r0_carry__1_n_1\,
      CO(5) => \sub_r0_carry__1_n_2\,
      CO(4) => \sub_r0_carry__1_n_3\,
      CO(3) => \sub_r0_carry__1_n_4\,
      CO(2) => \sub_r0_carry__1_n_5\,
      CO(1) => \sub_r0_carry__1_n_6\,
      CO(0) => \sub_r0_carry__1_n_7\,
      DI(7 downto 0) => xor_r(23 downto 16),
      O(7 downto 0) => sub_r00_out(23 downto 16),
      S(7) => \sub_r0_carry__1_i_1_n_0\,
      S(6) => \sub_r0_carry__1_i_2_n_0\,
      S(5) => \sub_r0_carry__1_i_3_n_0\,
      S(4) => \sub_r0_carry__1_i_4_n_0\,
      S(3) => \sub_r0_carry__1_i_5_n_0\,
      S(2) => \sub_r0_carry__1_i_6_n_0\,
      S(1) => \sub_r0_carry__1_i_7_n_0\,
      S(0) => \sub_r0_carry__1_i_8_n_0\
    );
\sub_r0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(23),
      I1 => \e_r_reg_n_0_[23]\,
      O => \sub_r0_carry__1_i_1_n_0\
    );
\sub_r0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(22),
      I1 => \e_r_reg_n_0_[22]\,
      O => \sub_r0_carry__1_i_2_n_0\
    );
\sub_r0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(21),
      I1 => \e_r_reg_n_0_[21]\,
      O => \sub_r0_carry__1_i_3_n_0\
    );
\sub_r0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(20),
      I1 => \e_r_reg_n_0_[20]\,
      O => \sub_r0_carry__1_i_4_n_0\
    );
\sub_r0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(19),
      I1 => \e_r_reg_n_0_[19]\,
      O => \sub_r0_carry__1_i_5_n_0\
    );
\sub_r0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(18),
      I1 => \e_r_reg_n_0_[18]\,
      O => \sub_r0_carry__1_i_6_n_0\
    );
\sub_r0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(17),
      I1 => \e_r_reg_n_0_[17]\,
      O => \sub_r0_carry__1_i_7_n_0\
    );
\sub_r0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(16),
      I1 => \e_r_reg_n_0_[16]\,
      O => \sub_r0_carry__1_i_8_n_0\
    );
\sub_r0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \sub_r0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_sub_r0_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \sub_r0_carry__2_n_1\,
      CO(5) => \sub_r0_carry__2_n_2\,
      CO(4) => \sub_r0_carry__2_n_3\,
      CO(3) => \sub_r0_carry__2_n_4\,
      CO(2) => \sub_r0_carry__2_n_5\,
      CO(1) => \sub_r0_carry__2_n_6\,
      CO(0) => \sub_r0_carry__2_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => xor_r(30 downto 24),
      O(7 downto 0) => sub_r00_out(31 downto 24),
      S(7) => \sub_r0_carry__2_i_1_n_0\,
      S(6) => \sub_r0_carry__2_i_2_n_0\,
      S(5) => \sub_r0_carry__2_i_3_n_0\,
      S(4) => \sub_r0_carry__2_i_4_n_0\,
      S(3) => \sub_r0_carry__2_i_5_n_0\,
      S(2) => \sub_r0_carry__2_i_6_n_0\,
      S(1) => \sub_r0_carry__2_i_7_n_0\,
      S(0) => \sub_r0_carry__2_i_8_n_0\
    );
\sub_r0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(31),
      I1 => \e_r_reg_n_0_[31]\,
      O => \sub_r0_carry__2_i_1_n_0\
    );
\sub_r0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(30),
      I1 => \e_r_reg_n_0_[30]\,
      O => \sub_r0_carry__2_i_2_n_0\
    );
\sub_r0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(29),
      I1 => \e_r_reg_n_0_[29]\,
      O => \sub_r0_carry__2_i_3_n_0\
    );
\sub_r0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(28),
      I1 => \e_r_reg_n_0_[28]\,
      O => \sub_r0_carry__2_i_4_n_0\
    );
\sub_r0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(27),
      I1 => \e_r_reg_n_0_[27]\,
      O => \sub_r0_carry__2_i_5_n_0\
    );
\sub_r0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(26),
      I1 => \e_r_reg_n_0_[26]\,
      O => \sub_r0_carry__2_i_6_n_0\
    );
\sub_r0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(25),
      I1 => \e_r_reg_n_0_[25]\,
      O => \sub_r0_carry__2_i_7_n_0\
    );
\sub_r0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(24),
      I1 => \e_r_reg_n_0_[24]\,
      O => \sub_r0_carry__2_i_8_n_0\
    );
sub_r0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(7),
      I1 => \e_r_reg_n_0_[7]\,
      O => sub_r0_carry_i_1_n_0
    );
sub_r0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(6),
      I1 => \e_r_reg_n_0_[6]\,
      O => sub_r0_carry_i_2_n_0
    );
sub_r0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(5),
      I1 => \e_r_reg_n_0_[5]\,
      O => sub_r0_carry_i_3_n_0
    );
sub_r0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(4),
      I1 => \e_r_reg_n_0_[4]\,
      O => sub_r0_carry_i_4_n_0
    );
sub_r0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(3),
      I1 => \e_r_reg_n_0_[3]\,
      O => sub_r0_carry_i_5_n_0
    );
sub_r0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(2),
      I1 => \e_r_reg_n_0_[2]\,
      O => sub_r0_carry_i_6_n_0
    );
sub_r0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(1),
      I1 => \e_r_reg_n_0_[1]\,
      O => sub_r0_carry_i_7_n_0
    );
sub_r0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => xor_r(0),
      I1 => \e_r_reg_n_0_[0]\,
      O => sub_r0_carry_i_8_n_0
    );
\sub_r[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => state_r(1),
      I1 => state_r(0),
      I2 => state_r(2),
      O => sub_r
    );
\sub_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(0),
      Q => \sub_r_reg_n_0_[0]\
    );
\sub_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(10),
      Q => \sub_r_reg_n_0_[10]\
    );
\sub_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(11),
      Q => \sub_r_reg_n_0_[11]\
    );
\sub_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(12),
      Q => \sub_r_reg_n_0_[12]\
    );
\sub_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(13),
      Q => \sub_r_reg_n_0_[13]\
    );
\sub_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(14),
      Q => \sub_r_reg_n_0_[14]\
    );
\sub_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(15),
      Q => \sub_r_reg_n_0_[15]\
    );
\sub_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(16),
      Q => \sub_r_reg_n_0_[16]\
    );
\sub_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(17),
      Q => \sub_r_reg_n_0_[17]\
    );
\sub_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(18),
      Q => \sub_r_reg_n_0_[18]\
    );
\sub_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(19),
      Q => \sub_r_reg_n_0_[19]\
    );
\sub_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(1),
      Q => \sub_r_reg_n_0_[1]\
    );
\sub_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(20),
      Q => \sub_r_reg_n_0_[20]\
    );
\sub_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(21),
      Q => \sub_r_reg_n_0_[21]\
    );
\sub_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(22),
      Q => \sub_r_reg_n_0_[22]\
    );
\sub_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(23),
      Q => \sub_r_reg_n_0_[23]\
    );
\sub_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(24),
      Q => \sub_r_reg_n_0_[24]\
    );
\sub_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(25),
      Q => \sub_r_reg_n_0_[25]\
    );
\sub_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(26),
      Q => \sub_r_reg_n_0_[26]\
    );
\sub_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(27),
      Q => \sub_r_reg_n_0_[27]\
    );
\sub_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(28),
      Q => \sub_r_reg_n_0_[28]\
    );
\sub_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(29),
      Q => \sub_r_reg_n_0_[29]\
    );
\sub_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(2),
      Q => \sub_r_reg_n_0_[2]\
    );
\sub_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(30),
      Q => \sub_r_reg_n_0_[30]\
    );
\sub_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(31),
      Q => \sub_r_reg_n_0_[31]\
    );
\sub_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(3),
      Q => \sub_r_reg_n_0_[3]\
    );
\sub_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(4),
      Q => \sub_r_reg_n_0_[4]\
    );
\sub_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(5),
      Q => \sub_r_reg_n_0_[5]\
    );
\sub_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(6),
      Q => \sub_r_reg_n_0_[6]\
    );
\sub_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(7),
      Q => \sub_r_reg_n_0_[7]\
    );
\sub_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(8),
      Q => \sub_r_reg_n_0_[8]\
    );
\sub_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sub_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sub_r00_out(9),
      Q => \sub_r_reg_n_0_[9]\
    );
\sum_r[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[15]\,
      I1 => \c_r_reg_n_0_[15]\,
      I2 => \a_r_reg_n_0_[15]\,
      I3 => \sum_r[15]_i_2_n_0\,
      O => \sum_r[15]_i_10_n_0\
    );
\sum_r[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[14]\,
      I1 => \c_r_reg_n_0_[14]\,
      I2 => \a_r_reg_n_0_[14]\,
      I3 => \sum_r[15]_i_3_n_0\,
      O => \sum_r[15]_i_11_n_0\
    );
\sum_r[15]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[13]\,
      I1 => \c_r_reg_n_0_[13]\,
      I2 => \a_r_reg_n_0_[13]\,
      I3 => \sum_r[15]_i_4_n_0\,
      O => \sum_r[15]_i_12_n_0\
    );
\sum_r[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[12]\,
      I1 => \c_r_reg_n_0_[12]\,
      I2 => \a_r_reg_n_0_[12]\,
      I3 => \sum_r[15]_i_5_n_0\,
      O => \sum_r[15]_i_13_n_0\
    );
\sum_r[15]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[11]\,
      I1 => \c_r_reg_n_0_[11]\,
      I2 => \a_r_reg_n_0_[11]\,
      I3 => \sum_r[15]_i_6_n_0\,
      O => \sum_r[15]_i_14_n_0\
    );
\sum_r[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[10]\,
      I1 => \c_r_reg_n_0_[10]\,
      I2 => \a_r_reg_n_0_[10]\,
      I3 => \sum_r[15]_i_7_n_0\,
      O => \sum_r[15]_i_15_n_0\
    );
\sum_r[15]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[9]\,
      I1 => \c_r_reg_n_0_[9]\,
      I2 => \a_r_reg_n_0_[9]\,
      I3 => \sum_r[15]_i_8_n_0\,
      O => \sum_r[15]_i_16_n_0\
    );
\sum_r[15]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[8]\,
      I1 => \c_r_reg_n_0_[8]\,
      I2 => \a_r_reg_n_0_[8]\,
      I3 => \sum_r[15]_i_9_n_0\,
      O => \sum_r[15]_i_17_n_0\
    );
\sum_r[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[14]\,
      I1 => \c_r_reg_n_0_[14]\,
      I2 => \a_r_reg_n_0_[14]\,
      O => \sum_r[15]_i_2_n_0\
    );
\sum_r[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[13]\,
      I1 => \c_r_reg_n_0_[13]\,
      I2 => \a_r_reg_n_0_[13]\,
      O => \sum_r[15]_i_3_n_0\
    );
\sum_r[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[12]\,
      I1 => \c_r_reg_n_0_[12]\,
      I2 => \a_r_reg_n_0_[12]\,
      O => \sum_r[15]_i_4_n_0\
    );
\sum_r[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[11]\,
      I1 => \c_r_reg_n_0_[11]\,
      I2 => \a_r_reg_n_0_[11]\,
      O => \sum_r[15]_i_5_n_0\
    );
\sum_r[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[10]\,
      I1 => \c_r_reg_n_0_[10]\,
      I2 => \a_r_reg_n_0_[10]\,
      O => \sum_r[15]_i_6_n_0\
    );
\sum_r[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[9]\,
      I1 => \c_r_reg_n_0_[9]\,
      I2 => \a_r_reg_n_0_[9]\,
      O => \sum_r[15]_i_7_n_0\
    );
\sum_r[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[8]\,
      I1 => \c_r_reg_n_0_[8]\,
      I2 => \a_r_reg_n_0_[8]\,
      O => \sum_r[15]_i_8_n_0\
    );
\sum_r[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[7]\,
      I1 => \c_r_reg_n_0_[7]\,
      I2 => \a_r_reg_n_0_[7]\,
      O => \sum_r[15]_i_9_n_0\
    );
\sum_r[23]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[23]\,
      I1 => \c_r_reg_n_0_[23]\,
      I2 => \a_r_reg_n_0_[23]\,
      I3 => \sum_r[23]_i_2_n_0\,
      O => \sum_r[23]_i_10_n_0\
    );
\sum_r[23]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[22]\,
      I1 => \c_r_reg_n_0_[22]\,
      I2 => \a_r_reg_n_0_[22]\,
      I3 => \sum_r[23]_i_3_n_0\,
      O => \sum_r[23]_i_11_n_0\
    );
\sum_r[23]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[21]\,
      I1 => \c_r_reg_n_0_[21]\,
      I2 => \a_r_reg_n_0_[21]\,
      I3 => \sum_r[23]_i_4_n_0\,
      O => \sum_r[23]_i_12_n_0\
    );
\sum_r[23]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[20]\,
      I1 => \c_r_reg_n_0_[20]\,
      I2 => \a_r_reg_n_0_[20]\,
      I3 => \sum_r[23]_i_5_n_0\,
      O => \sum_r[23]_i_13_n_0\
    );
\sum_r[23]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[19]\,
      I1 => \c_r_reg_n_0_[19]\,
      I2 => \a_r_reg_n_0_[19]\,
      I3 => \sum_r[23]_i_6_n_0\,
      O => \sum_r[23]_i_14_n_0\
    );
\sum_r[23]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[18]\,
      I1 => \c_r_reg_n_0_[18]\,
      I2 => \a_r_reg_n_0_[18]\,
      I3 => \sum_r[23]_i_7_n_0\,
      O => \sum_r[23]_i_15_n_0\
    );
\sum_r[23]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[17]\,
      I1 => \c_r_reg_n_0_[17]\,
      I2 => \a_r_reg_n_0_[17]\,
      I3 => \sum_r[23]_i_8_n_0\,
      O => \sum_r[23]_i_16_n_0\
    );
\sum_r[23]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[16]\,
      I1 => \c_r_reg_n_0_[16]\,
      I2 => \a_r_reg_n_0_[16]\,
      I3 => \sum_r[23]_i_9_n_0\,
      O => \sum_r[23]_i_17_n_0\
    );
\sum_r[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[22]\,
      I1 => \c_r_reg_n_0_[22]\,
      I2 => \a_r_reg_n_0_[22]\,
      O => \sum_r[23]_i_2_n_0\
    );
\sum_r[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[21]\,
      I1 => \c_r_reg_n_0_[21]\,
      I2 => \a_r_reg_n_0_[21]\,
      O => \sum_r[23]_i_3_n_0\
    );
\sum_r[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[20]\,
      I1 => \c_r_reg_n_0_[20]\,
      I2 => \a_r_reg_n_0_[20]\,
      O => \sum_r[23]_i_4_n_0\
    );
\sum_r[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[19]\,
      I1 => \c_r_reg_n_0_[19]\,
      I2 => \a_r_reg_n_0_[19]\,
      O => \sum_r[23]_i_5_n_0\
    );
\sum_r[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[18]\,
      I1 => \c_r_reg_n_0_[18]\,
      I2 => \a_r_reg_n_0_[18]\,
      O => \sum_r[23]_i_6_n_0\
    );
\sum_r[23]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[17]\,
      I1 => \c_r_reg_n_0_[17]\,
      I2 => \a_r_reg_n_0_[17]\,
      O => \sum_r[23]_i_7_n_0\
    );
\sum_r[23]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[16]\,
      I1 => \c_r_reg_n_0_[16]\,
      I2 => \a_r_reg_n_0_[16]\,
      O => \sum_r[23]_i_8_n_0\
    );
\sum_r[23]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[15]\,
      I1 => \c_r_reg_n_0_[15]\,
      I2 => \a_r_reg_n_0_[15]\,
      O => \sum_r[23]_i_9_n_0\
    );
\sum_r[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_r(1),
      I1 => state_r(0),
      I2 => state_r(2),
      O => sum_r
    );
\sum_r[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \a_r_reg_n_0_[30]\,
      I1 => \c_r_reg_n_0_[30]\,
      I2 => \b_r_reg_n_0_[30]\,
      I3 => \c_r_reg_n_0_[31]\,
      I4 => \b_r_reg_n_0_[31]\,
      I5 => \a_r_reg_n_0_[31]\,
      O => \sum_r[31]_i_10_n_0\
    );
\sum_r[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \sum_r[31]_i_3_n_0\,
      I1 => \c_r_reg_n_0_[30]\,
      I2 => \b_r_reg_n_0_[30]\,
      I3 => \a_r_reg_n_0_[30]\,
      O => \sum_r[31]_i_11_n_0\
    );
\sum_r[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[29]\,
      I1 => \c_r_reg_n_0_[29]\,
      I2 => \a_r_reg_n_0_[29]\,
      I3 => \sum_r[31]_i_4_n_0\,
      O => \sum_r[31]_i_12_n_0\
    );
\sum_r[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[28]\,
      I1 => \c_r_reg_n_0_[28]\,
      I2 => \a_r_reg_n_0_[28]\,
      I3 => \sum_r[31]_i_5_n_0\,
      O => \sum_r[31]_i_13_n_0\
    );
\sum_r[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[27]\,
      I1 => \c_r_reg_n_0_[27]\,
      I2 => \a_r_reg_n_0_[27]\,
      I3 => \sum_r[31]_i_6_n_0\,
      O => \sum_r[31]_i_14_n_0\
    );
\sum_r[31]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[26]\,
      I1 => \c_r_reg_n_0_[26]\,
      I2 => \a_r_reg_n_0_[26]\,
      I3 => \sum_r[31]_i_7_n_0\,
      O => \sum_r[31]_i_15_n_0\
    );
\sum_r[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[25]\,
      I1 => \c_r_reg_n_0_[25]\,
      I2 => \a_r_reg_n_0_[25]\,
      I3 => \sum_r[31]_i_8_n_0\,
      O => \sum_r[31]_i_16_n_0\
    );
\sum_r[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[24]\,
      I1 => \c_r_reg_n_0_[24]\,
      I2 => \a_r_reg_n_0_[24]\,
      I3 => \sum_r[31]_i_9_n_0\,
      O => \sum_r[31]_i_17_n_0\
    );
\sum_r[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[29]\,
      I1 => \c_r_reg_n_0_[29]\,
      I2 => \a_r_reg_n_0_[29]\,
      O => \sum_r[31]_i_3_n_0\
    );
\sum_r[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[28]\,
      I1 => \c_r_reg_n_0_[28]\,
      I2 => \a_r_reg_n_0_[28]\,
      O => \sum_r[31]_i_4_n_0\
    );
\sum_r[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[27]\,
      I1 => \c_r_reg_n_0_[27]\,
      I2 => \a_r_reg_n_0_[27]\,
      O => \sum_r[31]_i_5_n_0\
    );
\sum_r[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[26]\,
      I1 => \c_r_reg_n_0_[26]\,
      I2 => \a_r_reg_n_0_[26]\,
      O => \sum_r[31]_i_6_n_0\
    );
\sum_r[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[25]\,
      I1 => \c_r_reg_n_0_[25]\,
      I2 => \a_r_reg_n_0_[25]\,
      O => \sum_r[31]_i_7_n_0\
    );
\sum_r[31]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[24]\,
      I1 => \c_r_reg_n_0_[24]\,
      I2 => \a_r_reg_n_0_[24]\,
      O => \sum_r[31]_i_8_n_0\
    );
\sum_r[31]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[23]\,
      I1 => \c_r_reg_n_0_[23]\,
      I2 => \a_r_reg_n_0_[23]\,
      O => \sum_r[31]_i_9_n_0\
    );
\sum_r[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[6]\,
      I1 => \c_r_reg_n_0_[6]\,
      I2 => \a_r_reg_n_0_[6]\,
      I3 => \sum_r[7]_i_3_n_0\,
      O => \sum_r[7]_i_10_n_0\
    );
\sum_r[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[5]\,
      I1 => \c_r_reg_n_0_[5]\,
      I2 => \a_r_reg_n_0_[5]\,
      I3 => \sum_r[7]_i_4_n_0\,
      O => \sum_r[7]_i_11_n_0\
    );
\sum_r[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[4]\,
      I1 => \c_r_reg_n_0_[4]\,
      I2 => \a_r_reg_n_0_[4]\,
      I3 => \sum_r[7]_i_5_n_0\,
      O => \sum_r[7]_i_12_n_0\
    );
\sum_r[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[3]\,
      I1 => \c_r_reg_n_0_[3]\,
      I2 => \a_r_reg_n_0_[3]\,
      I3 => \sum_r[7]_i_6_n_0\,
      O => \sum_r[7]_i_13_n_0\
    );
\sum_r[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[2]\,
      I1 => \c_r_reg_n_0_[2]\,
      I2 => \a_r_reg_n_0_[2]\,
      I3 => \sum_r[7]_i_7_n_0\,
      O => \sum_r[7]_i_14_n_0\
    );
\sum_r[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[1]\,
      I1 => \c_r_reg_n_0_[1]\,
      I2 => \a_r_reg_n_0_[1]\,
      I3 => \sum_r[7]_i_8_n_0\,
      O => \sum_r[7]_i_15_n_0\
    );
\sum_r[7]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \b_r_reg_n_0_[0]\,
      I1 => \c_r_reg_n_0_[0]\,
      I2 => \a_r_reg_n_0_[0]\,
      O => \sum_r[7]_i_16_n_0\
    );
\sum_r[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[6]\,
      I1 => \c_r_reg_n_0_[6]\,
      I2 => \a_r_reg_n_0_[6]\,
      O => \sum_r[7]_i_2_n_0\
    );
\sum_r[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[5]\,
      I1 => \c_r_reg_n_0_[5]\,
      I2 => \a_r_reg_n_0_[5]\,
      O => \sum_r[7]_i_3_n_0\
    );
\sum_r[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[4]\,
      I1 => \c_r_reg_n_0_[4]\,
      I2 => \a_r_reg_n_0_[4]\,
      O => \sum_r[7]_i_4_n_0\
    );
\sum_r[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[3]\,
      I1 => \c_r_reg_n_0_[3]\,
      I2 => \a_r_reg_n_0_[3]\,
      O => \sum_r[7]_i_5_n_0\
    );
\sum_r[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[2]\,
      I1 => \c_r_reg_n_0_[2]\,
      I2 => \a_r_reg_n_0_[2]\,
      O => \sum_r[7]_i_6_n_0\
    );
\sum_r[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[1]\,
      I1 => \c_r_reg_n_0_[1]\,
      I2 => \a_r_reg_n_0_[1]\,
      O => \sum_r[7]_i_7_n_0\
    );
\sum_r[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \b_r_reg_n_0_[0]\,
      I1 => \c_r_reg_n_0_[0]\,
      I2 => \a_r_reg_n_0_[0]\,
      O => \sum_r[7]_i_8_n_0\
    );
\sum_r[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \b_r_reg_n_0_[7]\,
      I1 => \c_r_reg_n_0_[7]\,
      I2 => \a_r_reg_n_0_[7]\,
      I3 => \sum_r[7]_i_2_n_0\,
      O => \sum_r[7]_i_9_n_0\
    );
\sum_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(0),
      Q => \sum_r_reg_n_0_[0]\
    );
\sum_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(10),
      Q => \sum_r_reg_n_0_[10]\
    );
\sum_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(11),
      Q => \sum_r_reg_n_0_[11]\
    );
\sum_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(12),
      Q => \sum_r_reg_n_0_[12]\
    );
\sum_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(13),
      Q => \sum_r_reg_n_0_[13]\
    );
\sum_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(14),
      Q => \sum_r_reg_n_0_[14]\
    );
\sum_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(15),
      Q => \sum_r_reg_n_0_[15]\
    );
\sum_r_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum_r_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \sum_r_reg[15]_i_1_n_0\,
      CO(6) => \sum_r_reg[15]_i_1_n_1\,
      CO(5) => \sum_r_reg[15]_i_1_n_2\,
      CO(4) => \sum_r_reg[15]_i_1_n_3\,
      CO(3) => \sum_r_reg[15]_i_1_n_4\,
      CO(2) => \sum_r_reg[15]_i_1_n_5\,
      CO(1) => \sum_r_reg[15]_i_1_n_6\,
      CO(0) => \sum_r_reg[15]_i_1_n_7\,
      DI(7) => \sum_r[15]_i_2_n_0\,
      DI(6) => \sum_r[15]_i_3_n_0\,
      DI(5) => \sum_r[15]_i_4_n_0\,
      DI(4) => \sum_r[15]_i_5_n_0\,
      DI(3) => \sum_r[15]_i_6_n_0\,
      DI(2) => \sum_r[15]_i_7_n_0\,
      DI(1) => \sum_r[15]_i_8_n_0\,
      DI(0) => \sum_r[15]_i_9_n_0\,
      O(7 downto 0) => sum_r0(15 downto 8),
      S(7) => \sum_r[15]_i_10_n_0\,
      S(6) => \sum_r[15]_i_11_n_0\,
      S(5) => \sum_r[15]_i_12_n_0\,
      S(4) => \sum_r[15]_i_13_n_0\,
      S(3) => \sum_r[15]_i_14_n_0\,
      S(2) => \sum_r[15]_i_15_n_0\,
      S(1) => \sum_r[15]_i_16_n_0\,
      S(0) => \sum_r[15]_i_17_n_0\
    );
\sum_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(16),
      Q => \sum_r_reg_n_0_[16]\
    );
\sum_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(17),
      Q => \sum_r_reg_n_0_[17]\
    );
\sum_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(18),
      Q => \sum_r_reg_n_0_[18]\
    );
\sum_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(19),
      Q => \sum_r_reg_n_0_[19]\
    );
\sum_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(1),
      Q => \sum_r_reg_n_0_[1]\
    );
\sum_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(20),
      Q => \sum_r_reg_n_0_[20]\
    );
\sum_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(21),
      Q => \sum_r_reg_n_0_[21]\
    );
\sum_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(22),
      Q => \sum_r_reg_n_0_[22]\
    );
\sum_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(23),
      Q => \sum_r_reg_n_0_[23]\
    );
\sum_r_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum_r_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \sum_r_reg[23]_i_1_n_0\,
      CO(6) => \sum_r_reg[23]_i_1_n_1\,
      CO(5) => \sum_r_reg[23]_i_1_n_2\,
      CO(4) => \sum_r_reg[23]_i_1_n_3\,
      CO(3) => \sum_r_reg[23]_i_1_n_4\,
      CO(2) => \sum_r_reg[23]_i_1_n_5\,
      CO(1) => \sum_r_reg[23]_i_1_n_6\,
      CO(0) => \sum_r_reg[23]_i_1_n_7\,
      DI(7) => \sum_r[23]_i_2_n_0\,
      DI(6) => \sum_r[23]_i_3_n_0\,
      DI(5) => \sum_r[23]_i_4_n_0\,
      DI(4) => \sum_r[23]_i_5_n_0\,
      DI(3) => \sum_r[23]_i_6_n_0\,
      DI(2) => \sum_r[23]_i_7_n_0\,
      DI(1) => \sum_r[23]_i_8_n_0\,
      DI(0) => \sum_r[23]_i_9_n_0\,
      O(7 downto 0) => sum_r0(23 downto 16),
      S(7) => \sum_r[23]_i_10_n_0\,
      S(6) => \sum_r[23]_i_11_n_0\,
      S(5) => \sum_r[23]_i_12_n_0\,
      S(4) => \sum_r[23]_i_13_n_0\,
      S(3) => \sum_r[23]_i_14_n_0\,
      S(2) => \sum_r[23]_i_15_n_0\,
      S(1) => \sum_r[23]_i_16_n_0\,
      S(0) => \sum_r[23]_i_17_n_0\
    );
\sum_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(24),
      Q => \sum_r_reg_n_0_[24]\
    );
\sum_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(25),
      Q => \sum_r_reg_n_0_[25]\
    );
\sum_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(26),
      Q => \sum_r_reg_n_0_[26]\
    );
\sum_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(27),
      Q => \sum_r_reg_n_0_[27]\
    );
\sum_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(28),
      Q => \sum_r_reg_n_0_[28]\
    );
\sum_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(29),
      Q => \sum_r_reg_n_0_[29]\
    );
\sum_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(2),
      Q => \sum_r_reg_n_0_[2]\
    );
\sum_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(30),
      Q => \sum_r_reg_n_0_[30]\
    );
\sum_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(31),
      Q => \sum_r_reg_n_0_[31]\
    );
\sum_r_reg[31]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \sum_r_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_sum_r_reg[31]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \sum_r_reg[31]_i_2_n_1\,
      CO(5) => \sum_r_reg[31]_i_2_n_2\,
      CO(4) => \sum_r_reg[31]_i_2_n_3\,
      CO(3) => \sum_r_reg[31]_i_2_n_4\,
      CO(2) => \sum_r_reg[31]_i_2_n_5\,
      CO(1) => \sum_r_reg[31]_i_2_n_6\,
      CO(0) => \sum_r_reg[31]_i_2_n_7\,
      DI(7) => '0',
      DI(6) => \sum_r[31]_i_3_n_0\,
      DI(5) => \sum_r[31]_i_4_n_0\,
      DI(4) => \sum_r[31]_i_5_n_0\,
      DI(3) => \sum_r[31]_i_6_n_0\,
      DI(2) => \sum_r[31]_i_7_n_0\,
      DI(1) => \sum_r[31]_i_8_n_0\,
      DI(0) => \sum_r[31]_i_9_n_0\,
      O(7 downto 0) => sum_r0(31 downto 24),
      S(7) => \sum_r[31]_i_10_n_0\,
      S(6) => \sum_r[31]_i_11_n_0\,
      S(5) => \sum_r[31]_i_12_n_0\,
      S(4) => \sum_r[31]_i_13_n_0\,
      S(3) => \sum_r[31]_i_14_n_0\,
      S(2) => \sum_r[31]_i_15_n_0\,
      S(1) => \sum_r[31]_i_16_n_0\,
      S(0) => \sum_r[31]_i_17_n_0\
    );
\sum_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(3),
      Q => \sum_r_reg_n_0_[3]\
    );
\sum_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(4),
      Q => \sum_r_reg_n_0_[4]\
    );
\sum_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(5),
      Q => \sum_r_reg_n_0_[5]\
    );
\sum_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(6),
      Q => \sum_r_reg_n_0_[6]\
    );
\sum_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(7),
      Q => \sum_r_reg_n_0_[7]\
    );
\sum_r_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \sum_r_reg[7]_i_1_n_0\,
      CO(6) => \sum_r_reg[7]_i_1_n_1\,
      CO(5) => \sum_r_reg[7]_i_1_n_2\,
      CO(4) => \sum_r_reg[7]_i_1_n_3\,
      CO(3) => \sum_r_reg[7]_i_1_n_4\,
      CO(2) => \sum_r_reg[7]_i_1_n_5\,
      CO(1) => \sum_r_reg[7]_i_1_n_6\,
      CO(0) => \sum_r_reg[7]_i_1_n_7\,
      DI(7) => \sum_r[7]_i_2_n_0\,
      DI(6) => \sum_r[7]_i_3_n_0\,
      DI(5) => \sum_r[7]_i_4_n_0\,
      DI(4) => \sum_r[7]_i_5_n_0\,
      DI(3) => \sum_r[7]_i_6_n_0\,
      DI(2) => \sum_r[7]_i_7_n_0\,
      DI(1) => \sum_r[7]_i_8_n_0\,
      DI(0) => '0',
      O(7 downto 0) => sum_r0(7 downto 0),
      S(7) => \sum_r[7]_i_9_n_0\,
      S(6) => \sum_r[7]_i_10_n_0\,
      S(5) => \sum_r[7]_i_11_n_0\,
      S(4) => \sum_r[7]_i_12_n_0\,
      S(3) => \sum_r[7]_i_13_n_0\,
      S(2) => \sum_r[7]_i_14_n_0\,
      S(1) => \sum_r[7]_i_15_n_0\,
      S(0) => \sum_r[7]_i_16_n_0\
    );
\sum_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(8),
      Q => \sum_r_reg_n_0_[8]\
    );
\sum_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => sum_r,
      CLR => \^s00_axi_aresetn_0\,
      D => sum_r0(9),
      Q => \sum_r_reg_n_0_[9]\
    );
\xor_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(0),
      I1 => \sum_r_reg_n_0_[0]\,
      O => \xor_r[0]_i_1_n_0\
    );
\xor_r[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(10),
      I1 => \sum_r_reg_n_0_[10]\,
      O => \xor_r[10]_i_1_n_0\
    );
\xor_r[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(11),
      I1 => \sum_r_reg_n_0_[11]\,
      O => \xor_r[11]_i_1_n_0\
    );
\xor_r[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(12),
      I1 => \sum_r_reg_n_0_[12]\,
      O => \xor_r[12]_i_1_n_0\
    );
\xor_r[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(13),
      I1 => \sum_r_reg_n_0_[13]\,
      O => \xor_r[13]_i_1_n_0\
    );
\xor_r[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(14),
      I1 => \sum_r_reg_n_0_[14]\,
      O => \xor_r[14]_i_1_n_0\
    );
\xor_r[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(15),
      I1 => \sum_r_reg_n_0_[15]\,
      O => \xor_r[15]_i_1_n_0\
    );
\xor_r[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(16),
      I1 => \sum_r_reg_n_0_[16]\,
      O => \xor_r[16]_i_1_n_0\
    );
\xor_r[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(17),
      I1 => \sum_r_reg_n_0_[17]\,
      O => \xor_r[17]_i_1_n_0\
    );
\xor_r[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(18),
      I1 => \sum_r_reg_n_0_[18]\,
      O => \xor_r[18]_i_1_n_0\
    );
\xor_r[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(19),
      I1 => \sum_r_reg_n_0_[19]\,
      O => \xor_r[19]_i_1_n_0\
    );
\xor_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(1),
      I1 => \sum_r_reg_n_0_[1]\,
      O => \xor_r[1]_i_1_n_0\
    );
\xor_r[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(20),
      I1 => \sum_r_reg_n_0_[20]\,
      O => \xor_r[20]_i_1_n_0\
    );
\xor_r[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(21),
      I1 => \sum_r_reg_n_0_[21]\,
      O => \xor_r[21]_i_1_n_0\
    );
\xor_r[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(22),
      I1 => \sum_r_reg_n_0_[22]\,
      O => \xor_r[22]_i_1_n_0\
    );
\xor_r[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(23),
      I1 => \sum_r_reg_n_0_[23]\,
      O => \xor_r[23]_i_1_n_0\
    );
\xor_r[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(24),
      I1 => \sum_r_reg_n_0_[24]\,
      O => \xor_r[24]_i_1_n_0\
    );
\xor_r[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(25),
      I1 => \sum_r_reg_n_0_[25]\,
      O => \xor_r[25]_i_1_n_0\
    );
\xor_r[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(26),
      I1 => \sum_r_reg_n_0_[26]\,
      O => \xor_r[26]_i_1_n_0\
    );
\xor_r[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(27),
      I1 => \sum_r_reg_n_0_[27]\,
      O => \xor_r[27]_i_1_n_0\
    );
\xor_r[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(28),
      I1 => \sum_r_reg_n_0_[28]\,
      O => \xor_r[28]_i_1_n_0\
    );
\xor_r[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(29),
      I1 => \sum_r_reg_n_0_[29]\,
      O => \xor_r[29]_i_1_n_0\
    );
\xor_r[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(2),
      I1 => \sum_r_reg_n_0_[2]\,
      O => \xor_r[2]_i_1_n_0\
    );
\xor_r[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(30),
      I1 => \sum_r_reg_n_0_[30]\,
      O => \xor_r[30]_i_1_n_0\
    );
\xor_r[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => state_r(1),
      I1 => state_r(0),
      I2 => state_r(2),
      O => xor_r_0
    );
\xor_r[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(31),
      I1 => \sum_r_reg_n_0_[31]\,
      O => \xor_r[31]_i_2_n_0\
    );
\xor_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(3),
      I1 => \sum_r_reg_n_0_[3]\,
      O => \xor_r[3]_i_1_n_0\
    );
\xor_r[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(4),
      I1 => \sum_r_reg_n_0_[4]\,
      O => \xor_r[4]_i_1_n_0\
    );
\xor_r[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(5),
      I1 => \sum_r_reg_n_0_[5]\,
      O => \xor_r[5]_i_1_n_0\
    );
\xor_r[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(6),
      I1 => \sum_r_reg_n_0_[6]\,
      O => \xor_r[6]_i_1_n_0\
    );
\xor_r[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(7),
      I1 => \sum_r_reg_n_0_[7]\,
      O => \xor_r[7]_i_1_n_0\
    );
\xor_r[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(8),
      I1 => \sum_r_reg_n_0_[8]\,
      O => \xor_r[8]_i_1_n_0\
    );
\xor_r[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => d_r(9),
      I1 => \sum_r_reg_n_0_[9]\,
      O => \xor_r[9]_i_1_n_0\
    );
\xor_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[0]_i_1_n_0\,
      Q => xor_r(0)
    );
\xor_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[10]_i_1_n_0\,
      Q => xor_r(10)
    );
\xor_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[11]_i_1_n_0\,
      Q => xor_r(11)
    );
\xor_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[12]_i_1_n_0\,
      Q => xor_r(12)
    );
\xor_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[13]_i_1_n_0\,
      Q => xor_r(13)
    );
\xor_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[14]_i_1_n_0\,
      Q => xor_r(14)
    );
\xor_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[15]_i_1_n_0\,
      Q => xor_r(15)
    );
\xor_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[16]_i_1_n_0\,
      Q => xor_r(16)
    );
\xor_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[17]_i_1_n_0\,
      Q => xor_r(17)
    );
\xor_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[18]_i_1_n_0\,
      Q => xor_r(18)
    );
\xor_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[19]_i_1_n_0\,
      Q => xor_r(19)
    );
\xor_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[1]_i_1_n_0\,
      Q => xor_r(1)
    );
\xor_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[20]_i_1_n_0\,
      Q => xor_r(20)
    );
\xor_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[21]_i_1_n_0\,
      Q => xor_r(21)
    );
\xor_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[22]_i_1_n_0\,
      Q => xor_r(22)
    );
\xor_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[23]_i_1_n_0\,
      Q => xor_r(23)
    );
\xor_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[24]_i_1_n_0\,
      Q => xor_r(24)
    );
\xor_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[25]_i_1_n_0\,
      Q => xor_r(25)
    );
\xor_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[26]_i_1_n_0\,
      Q => xor_r(26)
    );
\xor_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[27]_i_1_n_0\,
      Q => xor_r(27)
    );
\xor_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[28]_i_1_n_0\,
      Q => xor_r(28)
    );
\xor_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[29]_i_1_n_0\,
      Q => xor_r(29)
    );
\xor_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[2]_i_1_n_0\,
      Q => xor_r(2)
    );
\xor_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[30]_i_1_n_0\,
      Q => xor_r(30)
    );
\xor_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[31]_i_2_n_0\,
      Q => xor_r(31)
    );
\xor_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[3]_i_1_n_0\,
      Q => xor_r(3)
    );
\xor_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[4]_i_1_n_0\,
      Q => xor_r(4)
    );
\xor_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[5]_i_1_n_0\,
      Q => xor_r(5)
    );
\xor_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[6]_i_1_n_0\,
      Q => xor_r(6)
    );
\xor_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[7]_i_1_n_0\,
      Q => xor_r(7)
    );
\xor_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[8]_i_1_n_0\,
      Q => xor_r(8)
    );
\xor_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => xor_r_0,
      CLR => \^s00_axi_aresetn_0\,
      D => \xor_r[9]_i_1_n_0\,
      Q => xor_r(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_FSM_CTRL is
  port (
    \axi_awaddr_reg[4]\ : out STD_LOGIC;
    \FSM_sequential_state_r_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    valid_b_r_reg : out STD_LOGIC;
    valid_c_r_reg : out STD_LOGIC;
    valid_d_r_reg : out STD_LOGIC;
    valid_e_r_reg : out STD_LOGIC;
    valid_f_r_reg : out STD_LOGIC;
    valid_a_r_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_b_r_reg_0 : in STD_LOGIC;
    valid_b_r_reg_1 : in STD_LOGIC;
    valid_f_r : in STD_LOGIC;
    valid_e_r : in STD_LOGIC;
    r_addr_r : in STD_LOGIC;
    \s00_axi_rdata[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_addr_valid_r : in STD_LOGIC;
    valid_b_r_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_b_r : in STD_LOGIC;
    valid_c_r_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_c_r : in STD_LOGIC;
    valid_d_r_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_d_r : in STD_LOGIC;
    valid_e_r_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_f_r_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_a_r_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_a_r : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    \FSM_sequential_state_r_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_FSM_CTRL;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_FSM_CTRL is
  signal \FSM_sequential_state_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_r[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_r[1]_i_5_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_r_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^axi_awaddr_reg[4]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[0]\ : label is "LOAD:01,EXEC:10,IDLE:00,READ:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_r_reg[1]\ : label is "LOAD:01,EXEC:10,IDLE:00,READ:11";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of valid_a_r_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of valid_b_r_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of valid_c_r_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of valid_d_r_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of valid_e_r_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of valid_f_r_i_1 : label is "soft_lutpair20";
begin
  \FSM_sequential_state_r_reg[1]_0\(1 downto 0) <= \^fsm_sequential_state_r_reg[1]_0\(1 downto 0);
  \axi_awaddr_reg[4]\ <= \^axi_awaddr_reg[4]\;
\FSM_sequential_state_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF40"
    )
        port map (
      I0 => Q(0),
      I1 => s00_axi_wdata(0),
      I2 => \FSM_sequential_state_r[1]_i_3_n_0\,
      I3 => E(0),
      I4 => \^axi_awaddr_reg[4]\,
      O => \FSM_sequential_state_r[1]_i_1_n_0\
    );
\FSM_sequential_state_r[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000080"
    )
        port map (
      I0 => \^fsm_sequential_state_r_reg[1]_0\(0),
      I1 => \^fsm_sequential_state_r_reg[1]_0\(1),
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(2),
      I5 => valid_b_r_reg_0,
      O => \FSM_sequential_state_r[1]_i_3_n_0\
    );
\FSM_sequential_state_r[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => valid_b_r_reg_0,
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(1),
      I4 => \FSM_sequential_state_r[1]_i_5_n_0\,
      I5 => valid_b_r_reg_1,
      O => \^axi_awaddr_reg[4]\
    );
\FSM_sequential_state_r[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^fsm_sequential_state_r_reg[1]_0\(0),
      I1 => \^fsm_sequential_state_r_reg[1]_0\(1),
      I2 => valid_f_r,
      I3 => Q(0),
      I4 => s00_axi_wdata(0),
      I5 => valid_e_r,
      O => \FSM_sequential_state_r[1]_i_5_n_0\
    );
\FSM_sequential_state_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state_r[1]_i_1_n_0\,
      CLR => \FSM_sequential_state_r_reg[0]_0\,
      D => D(0),
      Q => \^fsm_sequential_state_r_reg[1]_0\(0)
    );
\FSM_sequential_state_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state_r[1]_i_1_n_0\,
      CLR => \FSM_sequential_state_r_reg[0]_0\,
      D => D(1),
      Q => \^fsm_sequential_state_r_reg[1]_0\(1)
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F800000"
    )
        port map (
      I0 => \^fsm_sequential_state_r_reg[1]_0\(1),
      I1 => \^fsm_sequential_state_r_reg[1]_0\(0),
      I2 => r_addr_r,
      I3 => \s00_axi_rdata[0]\(0),
      I4 => r_addr_valid_r,
      O => s00_axi_rdata(0)
    );
valid_a_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \^axi_awaddr_reg[4]\,
      I1 => valid_a_r_reg_0(0),
      I2 => valid_a_r,
      O => valid_a_r_reg
    );
valid_b_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => valid_b_r_reg_2(0),
      I1 => \^axi_awaddr_reg[4]\,
      I2 => valid_b_r,
      O => valid_b_r_reg
    );
valid_c_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \^axi_awaddr_reg[4]\,
      I1 => valid_c_r_reg_0(0),
      I2 => valid_c_r,
      O => valid_c_r_reg
    );
valid_d_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \^axi_awaddr_reg[4]\,
      I1 => valid_d_r_reg_0(0),
      I2 => valid_d_r,
      O => valid_d_r_reg
    );
valid_e_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \^axi_awaddr_reg[4]\,
      I1 => valid_e_r_reg_0(0),
      I2 => valid_e_r,
      O => valid_e_r_reg
    );
valid_f_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \^axi_awaddr_reg[4]\,
      I1 => valid_f_r_reg_0(0),
      I2 => valid_f_r,
      O => valid_f_r_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Input_Memory is
  port (
    valid_b_r : out STD_LOGIC;
    valid_c_r : out STD_LOGIC;
    valid_d_r : out STD_LOGIC;
    valid_e_r : out STD_LOGIC;
    valid_f_r : out STD_LOGIC;
    valid_a_r : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wvalid_0 : out STD_LOGIC;
    \axi_awaddr_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_awaddr_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    valid_d_r_reg_0 : out STD_LOGIC;
    \axi_awaddr_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_awaddr_reg[2]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_awaddr_reg[2]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \f_r_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \d_r_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \b_r_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \c_r_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \a_r_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \e_r_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_b_r_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    valid_b_r_reg_1 : in STD_LOGIC;
    valid_c_r_reg_0 : in STD_LOGIC;
    valid_d_r_reg_1 : in STD_LOGIC;
    valid_e_r_reg_0 : in STD_LOGIC;
    valid_f_r_reg_0 : in STD_LOGIC;
    valid_a_r_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    \e_r_reg[0]_0\ : in STD_LOGIC;
    \e_r_reg[0]_1\ : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Input_Memory;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Input_Memory is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axi_awaddr_reg[2]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axi_awaddr_reg[2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axi_awaddr_reg[2]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axi_awaddr_reg[2]_2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axi_awaddr_reg[2]_3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s00_axi_wvalid_0\ : STD_LOGIC;
  signal \^valid_a_r\ : STD_LOGIC;
  signal \^valid_b_r\ : STD_LOGIC;
  signal \^valid_c_r\ : STD_LOGIC;
  signal \^valid_d_r\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  \axi_awaddr_reg[2]\(0) <= \^axi_awaddr_reg[2]\(0);
  \axi_awaddr_reg[2]_0\(0) <= \^axi_awaddr_reg[2]_0\(0);
  \axi_awaddr_reg[2]_1\(0) <= \^axi_awaddr_reg[2]_1\(0);
  \axi_awaddr_reg[2]_2\(0) <= \^axi_awaddr_reg[2]_2\(0);
  \axi_awaddr_reg[2]_3\(0) <= \^axi_awaddr_reg[2]_3\(0);
  s00_axi_wvalid_0 <= \^s00_axi_wvalid_0\;
  valid_a_r <= \^valid_a_r\;
  valid_b_r <= \^valid_b_r\;
  valid_c_r <= \^valid_c_r\;
  valid_d_r <= \^valid_d_r\;
\FSM_sequential_state_r[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^valid_d_r\,
      I1 => \^valid_c_r\,
      I2 => \^valid_a_r\,
      I3 => \^valid_b_r\,
      O => valid_d_r_reg_0
    );
\a_r[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => \^s00_axi_wvalid_0\,
      I3 => Q(2),
      I4 => Q(1),
      O => \^axi_awaddr_reg[2]_0\(0)
    );
\a_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(0),
      Q => \a_r_reg[31]_0\(0)
    );
\a_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(10),
      Q => \a_r_reg[31]_0\(10)
    );
\a_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(11),
      Q => \a_r_reg[31]_0\(11)
    );
\a_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(12),
      Q => \a_r_reg[31]_0\(12)
    );
\a_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(13),
      Q => \a_r_reg[31]_0\(13)
    );
\a_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(14),
      Q => \a_r_reg[31]_0\(14)
    );
\a_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(15),
      Q => \a_r_reg[31]_0\(15)
    );
\a_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(16),
      Q => \a_r_reg[31]_0\(16)
    );
\a_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(17),
      Q => \a_r_reg[31]_0\(17)
    );
\a_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(18),
      Q => \a_r_reg[31]_0\(18)
    );
\a_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(19),
      Q => \a_r_reg[31]_0\(19)
    );
\a_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(1),
      Q => \a_r_reg[31]_0\(1)
    );
\a_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(20),
      Q => \a_r_reg[31]_0\(20)
    );
\a_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(21),
      Q => \a_r_reg[31]_0\(21)
    );
\a_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(22),
      Q => \a_r_reg[31]_0\(22)
    );
\a_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(23),
      Q => \a_r_reg[31]_0\(23)
    );
\a_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(24),
      Q => \a_r_reg[31]_0\(24)
    );
\a_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(25),
      Q => \a_r_reg[31]_0\(25)
    );
\a_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(26),
      Q => \a_r_reg[31]_0\(26)
    );
\a_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(27),
      Q => \a_r_reg[31]_0\(27)
    );
\a_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(28),
      Q => \a_r_reg[31]_0\(28)
    );
\a_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(29),
      Q => \a_r_reg[31]_0\(29)
    );
\a_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(2),
      Q => \a_r_reg[31]_0\(2)
    );
\a_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(30),
      Q => \a_r_reg[31]_0\(30)
    );
\a_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(31),
      Q => \a_r_reg[31]_0\(31)
    );
\a_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(3),
      Q => \a_r_reg[31]_0\(3)
    );
\a_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(4),
      Q => \a_r_reg[31]_0\(4)
    );
\a_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(5),
      Q => \a_r_reg[31]_0\(5)
    );
\a_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(6),
      Q => \a_r_reg[31]_0\(6)
    );
\a_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(7),
      Q => \a_r_reg[31]_0\(7)
    );
\a_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(8),
      Q => \a_r_reg[31]_0\(8)
    );
\a_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_0\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(9),
      Q => \a_r_reg[31]_0\(9)
    );
\b_r[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => \^s00_axi_wvalid_0\,
      I3 => Q(2),
      I4 => Q(1),
      O => \^axi_awaddr_reg[2]_3\(0)
    );
\b_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(0),
      Q => \b_r_reg[31]_0\(0)
    );
\b_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(10),
      Q => \b_r_reg[31]_0\(10)
    );
\b_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(11),
      Q => \b_r_reg[31]_0\(11)
    );
\b_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(12),
      Q => \b_r_reg[31]_0\(12)
    );
\b_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(13),
      Q => \b_r_reg[31]_0\(13)
    );
\b_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(14),
      Q => \b_r_reg[31]_0\(14)
    );
\b_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(15),
      Q => \b_r_reg[31]_0\(15)
    );
\b_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(16),
      Q => \b_r_reg[31]_0\(16)
    );
\b_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(17),
      Q => \b_r_reg[31]_0\(17)
    );
\b_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(18),
      Q => \b_r_reg[31]_0\(18)
    );
\b_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(19),
      Q => \b_r_reg[31]_0\(19)
    );
\b_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(1),
      Q => \b_r_reg[31]_0\(1)
    );
\b_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(20),
      Q => \b_r_reg[31]_0\(20)
    );
\b_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(21),
      Q => \b_r_reg[31]_0\(21)
    );
\b_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(22),
      Q => \b_r_reg[31]_0\(22)
    );
\b_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(23),
      Q => \b_r_reg[31]_0\(23)
    );
\b_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(24),
      Q => \b_r_reg[31]_0\(24)
    );
\b_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(25),
      Q => \b_r_reg[31]_0\(25)
    );
\b_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(26),
      Q => \b_r_reg[31]_0\(26)
    );
\b_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(27),
      Q => \b_r_reg[31]_0\(27)
    );
\b_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(28),
      Q => \b_r_reg[31]_0\(28)
    );
\b_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(29),
      Q => \b_r_reg[31]_0\(29)
    );
\b_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(2),
      Q => \b_r_reg[31]_0\(2)
    );
\b_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(30),
      Q => \b_r_reg[31]_0\(30)
    );
\b_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(31),
      Q => \b_r_reg[31]_0\(31)
    );
\b_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(3),
      Q => \b_r_reg[31]_0\(3)
    );
\b_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(4),
      Q => \b_r_reg[31]_0\(4)
    );
\b_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(5),
      Q => \b_r_reg[31]_0\(5)
    );
\b_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(6),
      Q => \b_r_reg[31]_0\(6)
    );
\b_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(7),
      Q => \b_r_reg[31]_0\(7)
    );
\b_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(8),
      Q => \b_r_reg[31]_0\(8)
    );
\b_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_3\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(9),
      Q => \b_r_reg[31]_0\(9)
    );
\c_r[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => \^s00_axi_wvalid_0\,
      I4 => Q(2),
      O => \^axi_awaddr_reg[2]\(0)
    );
\c_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(0),
      Q => \c_r_reg[31]_0\(0)
    );
\c_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(10),
      Q => \c_r_reg[31]_0\(10)
    );
\c_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(11),
      Q => \c_r_reg[31]_0\(11)
    );
\c_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(12),
      Q => \c_r_reg[31]_0\(12)
    );
\c_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(13),
      Q => \c_r_reg[31]_0\(13)
    );
\c_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(14),
      Q => \c_r_reg[31]_0\(14)
    );
\c_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(15),
      Q => \c_r_reg[31]_0\(15)
    );
\c_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(16),
      Q => \c_r_reg[31]_0\(16)
    );
\c_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(17),
      Q => \c_r_reg[31]_0\(17)
    );
\c_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(18),
      Q => \c_r_reg[31]_0\(18)
    );
\c_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(19),
      Q => \c_r_reg[31]_0\(19)
    );
\c_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(1),
      Q => \c_r_reg[31]_0\(1)
    );
\c_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(20),
      Q => \c_r_reg[31]_0\(20)
    );
\c_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(21),
      Q => \c_r_reg[31]_0\(21)
    );
\c_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(22),
      Q => \c_r_reg[31]_0\(22)
    );
\c_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(23),
      Q => \c_r_reg[31]_0\(23)
    );
\c_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(24),
      Q => \c_r_reg[31]_0\(24)
    );
\c_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(25),
      Q => \c_r_reg[31]_0\(25)
    );
\c_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(26),
      Q => \c_r_reg[31]_0\(26)
    );
\c_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(27),
      Q => \c_r_reg[31]_0\(27)
    );
\c_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(28),
      Q => \c_r_reg[31]_0\(28)
    );
\c_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(29),
      Q => \c_r_reg[31]_0\(29)
    );
\c_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(2),
      Q => \c_r_reg[31]_0\(2)
    );
\c_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(30),
      Q => \c_r_reg[31]_0\(30)
    );
\c_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(31),
      Q => \c_r_reg[31]_0\(31)
    );
\c_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(3),
      Q => \c_r_reg[31]_0\(3)
    );
\c_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(4),
      Q => \c_r_reg[31]_0\(4)
    );
\c_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(5),
      Q => \c_r_reg[31]_0\(5)
    );
\c_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(6),
      Q => \c_r_reg[31]_0\(6)
    );
\c_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(7),
      Q => \c_r_reg[31]_0\(7)
    );
\c_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(8),
      Q => \c_r_reg[31]_0\(8)
    );
\c_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(9),
      Q => \c_r_reg[31]_0\(9)
    );
\d_r[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => \^s00_axi_wvalid_0\,
      I4 => Q(2),
      O => \^axi_awaddr_reg[2]_2\(0)
    );
\d_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(0),
      Q => \d_r_reg[31]_0\(0)
    );
\d_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(10),
      Q => \d_r_reg[31]_0\(10)
    );
\d_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(11),
      Q => \d_r_reg[31]_0\(11)
    );
\d_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(12),
      Q => \d_r_reg[31]_0\(12)
    );
\d_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(13),
      Q => \d_r_reg[31]_0\(13)
    );
\d_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(14),
      Q => \d_r_reg[31]_0\(14)
    );
\d_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(15),
      Q => \d_r_reg[31]_0\(15)
    );
\d_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(16),
      Q => \d_r_reg[31]_0\(16)
    );
\d_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(17),
      Q => \d_r_reg[31]_0\(17)
    );
\d_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(18),
      Q => \d_r_reg[31]_0\(18)
    );
\d_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(19),
      Q => \d_r_reg[31]_0\(19)
    );
\d_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(1),
      Q => \d_r_reg[31]_0\(1)
    );
\d_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(20),
      Q => \d_r_reg[31]_0\(20)
    );
\d_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(21),
      Q => \d_r_reg[31]_0\(21)
    );
\d_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(22),
      Q => \d_r_reg[31]_0\(22)
    );
\d_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(23),
      Q => \d_r_reg[31]_0\(23)
    );
\d_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(24),
      Q => \d_r_reg[31]_0\(24)
    );
\d_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(25),
      Q => \d_r_reg[31]_0\(25)
    );
\d_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(26),
      Q => \d_r_reg[31]_0\(26)
    );
\d_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(27),
      Q => \d_r_reg[31]_0\(27)
    );
\d_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(28),
      Q => \d_r_reg[31]_0\(28)
    );
\d_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(29),
      Q => \d_r_reg[31]_0\(29)
    );
\d_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(2),
      Q => \d_r_reg[31]_0\(2)
    );
\d_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(30),
      Q => \d_r_reg[31]_0\(30)
    );
\d_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(31),
      Q => \d_r_reg[31]_0\(31)
    );
\d_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(3),
      Q => \d_r_reg[31]_0\(3)
    );
\d_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(4),
      Q => \d_r_reg[31]_0\(4)
    );
\d_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(5),
      Q => \d_r_reg[31]_0\(5)
    );
\d_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(6),
      Q => \d_r_reg[31]_0\(6)
    );
\d_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(7),
      Q => \d_r_reg[31]_0\(7)
    );
\d_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(8),
      Q => \d_r_reg[31]_0\(8)
    );
\d_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_2\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(9),
      Q => \d_r_reg[31]_0\(9)
    );
\e_r[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => Q(0),
      I1 => \^s00_axi_wvalid_0\,
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      O => \^e\(0)
    );
\e_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(0),
      Q => \e_r_reg[31]_0\(0)
    );
\e_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(10),
      Q => \e_r_reg[31]_0\(10)
    );
\e_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(11),
      Q => \e_r_reg[31]_0\(11)
    );
\e_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(12),
      Q => \e_r_reg[31]_0\(12)
    );
\e_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(13),
      Q => \e_r_reg[31]_0\(13)
    );
\e_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(14),
      Q => \e_r_reg[31]_0\(14)
    );
\e_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(15),
      Q => \e_r_reg[31]_0\(15)
    );
\e_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(16),
      Q => \e_r_reg[31]_0\(16)
    );
\e_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(17),
      Q => \e_r_reg[31]_0\(17)
    );
\e_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(18),
      Q => \e_r_reg[31]_0\(18)
    );
\e_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(19),
      Q => \e_r_reg[31]_0\(19)
    );
\e_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(1),
      Q => \e_r_reg[31]_0\(1)
    );
\e_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(20),
      Q => \e_r_reg[31]_0\(20)
    );
\e_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(21),
      Q => \e_r_reg[31]_0\(21)
    );
\e_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(22),
      Q => \e_r_reg[31]_0\(22)
    );
\e_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(23),
      Q => \e_r_reg[31]_0\(23)
    );
\e_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(24),
      Q => \e_r_reg[31]_0\(24)
    );
\e_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(25),
      Q => \e_r_reg[31]_0\(25)
    );
\e_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(26),
      Q => \e_r_reg[31]_0\(26)
    );
\e_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(27),
      Q => \e_r_reg[31]_0\(27)
    );
\e_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(28),
      Q => \e_r_reg[31]_0\(28)
    );
\e_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(29),
      Q => \e_r_reg[31]_0\(29)
    );
\e_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(2),
      Q => \e_r_reg[31]_0\(2)
    );
\e_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(30),
      Q => \e_r_reg[31]_0\(30)
    );
\e_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(31),
      Q => \e_r_reg[31]_0\(31)
    );
\e_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(3),
      Q => \e_r_reg[31]_0\(3)
    );
\e_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(4),
      Q => \e_r_reg[31]_0\(4)
    );
\e_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(5),
      Q => \e_r_reg[31]_0\(5)
    );
\e_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(6),
      Q => \e_r_reg[31]_0\(6)
    );
\e_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(7),
      Q => \e_r_reg[31]_0\(7)
    );
\e_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(8),
      Q => \e_r_reg[31]_0\(8)
    );
\e_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(9),
      Q => \e_r_reg[31]_0\(9)
    );
\f_r[31]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => Q(0),
      I1 => \^s00_axi_wvalid_0\,
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      O => \^axi_awaddr_reg[2]_1\(0)
    );
\f_r[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \e_r_reg[0]_0\,
      I3 => \e_r_reg[0]_1\,
      O => \^s00_axi_wvalid_0\
    );
\f_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(0),
      Q => \f_r_reg[31]_0\(0)
    );
\f_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(10),
      Q => \f_r_reg[31]_0\(10)
    );
\f_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(11),
      Q => \f_r_reg[31]_0\(11)
    );
\f_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(12),
      Q => \f_r_reg[31]_0\(12)
    );
\f_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(13),
      Q => \f_r_reg[31]_0\(13)
    );
\f_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(14),
      Q => \f_r_reg[31]_0\(14)
    );
\f_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(15),
      Q => \f_r_reg[31]_0\(15)
    );
\f_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(16),
      Q => \f_r_reg[31]_0\(16)
    );
\f_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(17),
      Q => \f_r_reg[31]_0\(17)
    );
\f_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(18),
      Q => \f_r_reg[31]_0\(18)
    );
\f_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(19),
      Q => \f_r_reg[31]_0\(19)
    );
\f_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(1),
      Q => \f_r_reg[31]_0\(1)
    );
\f_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(20),
      Q => \f_r_reg[31]_0\(20)
    );
\f_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(21),
      Q => \f_r_reg[31]_0\(21)
    );
\f_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(22),
      Q => \f_r_reg[31]_0\(22)
    );
\f_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(23),
      Q => \f_r_reg[31]_0\(23)
    );
\f_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(24),
      Q => \f_r_reg[31]_0\(24)
    );
\f_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(25),
      Q => \f_r_reg[31]_0\(25)
    );
\f_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(26),
      Q => \f_r_reg[31]_0\(26)
    );
\f_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(27),
      Q => \f_r_reg[31]_0\(27)
    );
\f_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(28),
      Q => \f_r_reg[31]_0\(28)
    );
\f_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(29),
      Q => \f_r_reg[31]_0\(29)
    );
\f_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(2),
      Q => \f_r_reg[31]_0\(2)
    );
\f_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(30),
      Q => \f_r_reg[31]_0\(30)
    );
\f_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(31),
      Q => \f_r_reg[31]_0\(31)
    );
\f_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(3),
      Q => \f_r_reg[31]_0\(3)
    );
\f_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(4),
      Q => \f_r_reg[31]_0\(4)
    );
\f_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(5),
      Q => \f_r_reg[31]_0\(5)
    );
\f_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(6),
      Q => \f_r_reg[31]_0\(6)
    );
\f_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(7),
      Q => \f_r_reg[31]_0\(7)
    );
\f_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(8),
      Q => \f_r_reg[31]_0\(8)
    );
\f_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^axi_awaddr_reg[2]_1\(0),
      CLR => valid_b_r_reg_1,
      D => s00_axi_wdata(9),
      Q => \f_r_reg[31]_0\(9)
    );
valid_a_r_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => valid_b_r_reg_1,
      D => valid_a_r_reg_0,
      Q => \^valid_a_r\
    );
valid_b_r_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => valid_b_r_reg_1,
      D => valid_b_r_reg_0,
      Q => \^valid_b_r\
    );
valid_c_r_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => valid_b_r_reg_1,
      D => valid_c_r_reg_0,
      Q => \^valid_c_r\
    );
valid_d_r_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => valid_b_r_reg_1,
      D => valid_d_r_reg_1,
      Q => \^valid_d_r\
    );
valid_e_r_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => valid_b_r_reg_1,
      D => valid_e_r_reg_0,
      Q => valid_e_r
    );
valid_f_r_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => valid_b_r_reg_1,
      D => valid_f_r_reg_0,
      Q => valid_f_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Output_Memory is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    \h_r_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Output_Memory;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Output_Memory is
begin
\h_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(0),
      Q => Q(0)
    );
\h_r_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(10),
      Q => Q(10)
    );
\h_r_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(11),
      Q => Q(11)
    );
\h_r_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(12),
      Q => Q(12)
    );
\h_r_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(13),
      Q => Q(13)
    );
\h_r_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(14),
      Q => Q(14)
    );
\h_r_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(15),
      Q => Q(15)
    );
\h_r_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(16),
      Q => Q(16)
    );
\h_r_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(17),
      Q => Q(17)
    );
\h_r_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(18),
      Q => Q(18)
    );
\h_r_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(19),
      Q => Q(19)
    );
\h_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(1),
      Q => Q(1)
    );
\h_r_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(20),
      Q => Q(20)
    );
\h_r_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(21),
      Q => Q(21)
    );
\h_r_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(22),
      Q => Q(22)
    );
\h_r_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(23),
      Q => Q(23)
    );
\h_r_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(24),
      Q => Q(24)
    );
\h_r_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(25),
      Q => Q(25)
    );
\h_r_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(26),
      Q => Q(26)
    );
\h_r_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(27),
      Q => Q(27)
    );
\h_r_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(28),
      Q => Q(28)
    );
\h_r_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(29),
      Q => Q(29)
    );
\h_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(2),
      Q => Q(2)
    );
\h_r_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(30),
      Q => Q(30)
    );
\h_r_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(31),
      Q => Q(31)
    );
\h_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(3),
      Q => Q(3)
    );
\h_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(4),
      Q => Q(4)
    );
\h_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(5),
      Q => Q(5)
    );
\h_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(6),
      Q => Q(6)
    );
\h_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(7),
      Q => Q(7)
    );
\h_r_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(8),
      Q => Q(8)
    );
\h_r_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \h_r_reg[0]_0\,
      D => D(9),
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Function_Core is
  port (
    s00_axi_aresetn_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    r_addr_i_w : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    r_addr_valid_i_w : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    \e_r_reg[0]\ : in STD_LOGIC;
    \e_r_reg[0]_0\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Function_Core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Function_Core is
  signal a_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal b_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal c_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal e_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal h_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal next_state_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal r_addr_r : STD_LOGIC;
  signal r_addr_valid_r : STD_LOGIC;
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal state_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal u_H_FSM_CTRL_n_0 : STD_LOGIC;
  signal u_H_FSM_CTRL_n_4 : STD_LOGIC;
  signal u_H_FSM_CTRL_n_5 : STD_LOGIC;
  signal u_H_FSM_CTRL_n_6 : STD_LOGIC;
  signal u_H_FSM_CTRL_n_7 : STD_LOGIC;
  signal u_H_FSM_CTRL_n_8 : STD_LOGIC;
  signal u_H_FSM_CTRL_n_9 : STD_LOGIC;
  signal u_H_Input_Memory_n_10 : STD_LOGIC;
  signal u_H_Input_Memory_n_14 : STD_LOGIC;
  signal u_H_Input_Memory_n_15 : STD_LOGIC;
  signal u_H_Input_Memory_n_16 : STD_LOGIC;
  signal u_H_Input_Memory_n_17 : STD_LOGIC;
  signal u_H_Input_Memory_n_18 : STD_LOGIC;
  signal u_H_Input_Memory_n_19 : STD_LOGIC;
  signal u_H_Input_Memory_n_20 : STD_LOGIC;
  signal u_H_Input_Memory_n_21 : STD_LOGIC;
  signal u_H_Input_Memory_n_22 : STD_LOGIC;
  signal u_H_Input_Memory_n_23 : STD_LOGIC;
  signal u_H_Input_Memory_n_24 : STD_LOGIC;
  signal u_H_Input_Memory_n_25 : STD_LOGIC;
  signal u_H_Input_Memory_n_26 : STD_LOGIC;
  signal u_H_Input_Memory_n_27 : STD_LOGIC;
  signal u_H_Input_Memory_n_28 : STD_LOGIC;
  signal u_H_Input_Memory_n_29 : STD_LOGIC;
  signal u_H_Input_Memory_n_30 : STD_LOGIC;
  signal u_H_Input_Memory_n_31 : STD_LOGIC;
  signal u_H_Input_Memory_n_32 : STD_LOGIC;
  signal u_H_Input_Memory_n_33 : STD_LOGIC;
  signal u_H_Input_Memory_n_34 : STD_LOGIC;
  signal u_H_Input_Memory_n_35 : STD_LOGIC;
  signal u_H_Input_Memory_n_36 : STD_LOGIC;
  signal u_H_Input_Memory_n_37 : STD_LOGIC;
  signal u_H_Input_Memory_n_38 : STD_LOGIC;
  signal u_H_Input_Memory_n_39 : STD_LOGIC;
  signal u_H_Input_Memory_n_40 : STD_LOGIC;
  signal u_H_Input_Memory_n_41 : STD_LOGIC;
  signal u_H_Input_Memory_n_42 : STD_LOGIC;
  signal u_H_Input_Memory_n_43 : STD_LOGIC;
  signal u_H_Input_Memory_n_44 : STD_LOGIC;
  signal u_H_Input_Memory_n_45 : STD_LOGIC;
  signal u_H_Input_Memory_n_46 : STD_LOGIC;
  signal u_H_Input_Memory_n_47 : STD_LOGIC;
  signal u_H_Input_Memory_n_48 : STD_LOGIC;
  signal u_H_Input_Memory_n_49 : STD_LOGIC;
  signal u_H_Input_Memory_n_50 : STD_LOGIC;
  signal u_H_Input_Memory_n_51 : STD_LOGIC;
  signal u_H_Input_Memory_n_52 : STD_LOGIC;
  signal u_H_Input_Memory_n_53 : STD_LOGIC;
  signal u_H_Input_Memory_n_54 : STD_LOGIC;
  signal u_H_Input_Memory_n_55 : STD_LOGIC;
  signal u_H_Input_Memory_n_56 : STD_LOGIC;
  signal u_H_Input_Memory_n_57 : STD_LOGIC;
  signal u_H_Input_Memory_n_58 : STD_LOGIC;
  signal u_H_Input_Memory_n_59 : STD_LOGIC;
  signal u_H_Input_Memory_n_6 : STD_LOGIC;
  signal u_H_Input_Memory_n_60 : STD_LOGIC;
  signal u_H_Input_Memory_n_61 : STD_LOGIC;
  signal u_H_Input_Memory_n_62 : STD_LOGIC;
  signal u_H_Input_Memory_n_63 : STD_LOGIC;
  signal u_H_Input_Memory_n_64 : STD_LOGIC;
  signal u_H_Input_Memory_n_65 : STD_LOGIC;
  signal u_H_Input_Memory_n_66 : STD_LOGIC;
  signal u_H_Input_Memory_n_67 : STD_LOGIC;
  signal u_H_Input_Memory_n_68 : STD_LOGIC;
  signal u_H_Input_Memory_n_69 : STD_LOGIC;
  signal u_H_Input_Memory_n_7 : STD_LOGIC;
  signal u_H_Input_Memory_n_70 : STD_LOGIC;
  signal u_H_Input_Memory_n_71 : STD_LOGIC;
  signal u_H_Input_Memory_n_72 : STD_LOGIC;
  signal u_H_Input_Memory_n_73 : STD_LOGIC;
  signal u_H_Input_Memory_n_74 : STD_LOGIC;
  signal u_H_Input_Memory_n_75 : STD_LOGIC;
  signal u_H_Input_Memory_n_76 : STD_LOGIC;
  signal u_H_Input_Memory_n_77 : STD_LOGIC;
  signal u_H_Input_Memory_n_8 : STD_LOGIC;
  signal u_H_Input_Memory_n_9 : STD_LOGIC;
  signal u_H_Output_Memory_n_0 : STD_LOGIC;
  signal u_H_Output_Memory_n_1 : STD_LOGIC;
  signal u_H_Output_Memory_n_10 : STD_LOGIC;
  signal u_H_Output_Memory_n_11 : STD_LOGIC;
  signal u_H_Output_Memory_n_12 : STD_LOGIC;
  signal u_H_Output_Memory_n_13 : STD_LOGIC;
  signal u_H_Output_Memory_n_14 : STD_LOGIC;
  signal u_H_Output_Memory_n_15 : STD_LOGIC;
  signal u_H_Output_Memory_n_16 : STD_LOGIC;
  signal u_H_Output_Memory_n_17 : STD_LOGIC;
  signal u_H_Output_Memory_n_18 : STD_LOGIC;
  signal u_H_Output_Memory_n_19 : STD_LOGIC;
  signal u_H_Output_Memory_n_2 : STD_LOGIC;
  signal u_H_Output_Memory_n_20 : STD_LOGIC;
  signal u_H_Output_Memory_n_21 : STD_LOGIC;
  signal u_H_Output_Memory_n_22 : STD_LOGIC;
  signal u_H_Output_Memory_n_23 : STD_LOGIC;
  signal u_H_Output_Memory_n_24 : STD_LOGIC;
  signal u_H_Output_Memory_n_25 : STD_LOGIC;
  signal u_H_Output_Memory_n_26 : STD_LOGIC;
  signal u_H_Output_Memory_n_27 : STD_LOGIC;
  signal u_H_Output_Memory_n_28 : STD_LOGIC;
  signal u_H_Output_Memory_n_29 : STD_LOGIC;
  signal u_H_Output_Memory_n_3 : STD_LOGIC;
  signal u_H_Output_Memory_n_30 : STD_LOGIC;
  signal u_H_Output_Memory_n_31 : STD_LOGIC;
  signal u_H_Output_Memory_n_4 : STD_LOGIC;
  signal u_H_Output_Memory_n_5 : STD_LOGIC;
  signal u_H_Output_Memory_n_6 : STD_LOGIC;
  signal u_H_Output_Memory_n_7 : STD_LOGIC;
  signal u_H_Output_Memory_n_8 : STD_LOGIC;
  signal u_H_Output_Memory_n_9 : STD_LOGIC;
  signal valid_a_r : STD_LOGIC;
  signal valid_b_r : STD_LOGIC;
  signal valid_c_r : STD_LOGIC;
  signal valid_d_r : STD_LOGIC;
  signal valid_e_r : STD_LOGIC;
  signal valid_f_r : STD_LOGIC;
  signal wr_b_w : STD_LOGIC;
  signal wr_d_w : STD_LOGIC;
  signal wr_f_w : STD_LOGIC;
  signal write_output_w : STD_LOGIC;
begin
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
u_H_Arbiter: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Arbiter
     port map (
      Q(30) => u_H_Output_Memory_n_0,
      Q(29) => u_H_Output_Memory_n_1,
      Q(28) => u_H_Output_Memory_n_2,
      Q(27) => u_H_Output_Memory_n_3,
      Q(26) => u_H_Output_Memory_n_4,
      Q(25) => u_H_Output_Memory_n_5,
      Q(24) => u_H_Output_Memory_n_6,
      Q(23) => u_H_Output_Memory_n_7,
      Q(22) => u_H_Output_Memory_n_8,
      Q(21) => u_H_Output_Memory_n_9,
      Q(20) => u_H_Output_Memory_n_10,
      Q(19) => u_H_Output_Memory_n_11,
      Q(18) => u_H_Output_Memory_n_12,
      Q(17) => u_H_Output_Memory_n_13,
      Q(16) => u_H_Output_Memory_n_14,
      Q(15) => u_H_Output_Memory_n_15,
      Q(14) => u_H_Output_Memory_n_16,
      Q(13) => u_H_Output_Memory_n_17,
      Q(12) => u_H_Output_Memory_n_18,
      Q(11) => u_H_Output_Memory_n_19,
      Q(10) => u_H_Output_Memory_n_20,
      Q(9) => u_H_Output_Memory_n_21,
      Q(8) => u_H_Output_Memory_n_22,
      Q(7) => u_H_Output_Memory_n_23,
      Q(6) => u_H_Output_Memory_n_24,
      Q(5) => u_H_Output_Memory_n_25,
      Q(4) => u_H_Output_Memory_n_26,
      Q(3) => u_H_Output_Memory_n_27,
      Q(2) => u_H_Output_Memory_n_28,
      Q(1) => u_H_Output_Memory_n_29,
      Q(0) => u_H_Output_Memory_n_30,
      r_addr_i_w => r_addr_i_w,
      r_addr_r => r_addr_r,
      \r_addr_r_reg[0]_0\ => \^s00_axi_aresetn_0\,
      r_addr_valid_i_w => r_addr_valid_i_w,
      r_addr_valid_r => r_addr_valid_r,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_rdata(30 downto 0) => s00_axi_rdata(31 downto 1)
    );
u_H_Datapath: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Datapath
     port map (
      D(1 downto 0) => next_state_r(1 downto 0),
      E(0) => write_output_w,
      Q(1 downto 0) => state_r(1 downto 0),
      \a_r_reg[31]_0\(31 downto 0) => a_r(31 downto 0),
      \b_r_reg[31]_0\(31 downto 0) => b_r(31 downto 0),
      \c_r_reg[31]_0\(31 downto 0) => c_r(31 downto 0),
      \d_r_reg[31]_0\(31) => u_H_Input_Memory_n_46,
      \d_r_reg[31]_0\(30) => u_H_Input_Memory_n_47,
      \d_r_reg[31]_0\(29) => u_H_Input_Memory_n_48,
      \d_r_reg[31]_0\(28) => u_H_Input_Memory_n_49,
      \d_r_reg[31]_0\(27) => u_H_Input_Memory_n_50,
      \d_r_reg[31]_0\(26) => u_H_Input_Memory_n_51,
      \d_r_reg[31]_0\(25) => u_H_Input_Memory_n_52,
      \d_r_reg[31]_0\(24) => u_H_Input_Memory_n_53,
      \d_r_reg[31]_0\(23) => u_H_Input_Memory_n_54,
      \d_r_reg[31]_0\(22) => u_H_Input_Memory_n_55,
      \d_r_reg[31]_0\(21) => u_H_Input_Memory_n_56,
      \d_r_reg[31]_0\(20) => u_H_Input_Memory_n_57,
      \d_r_reg[31]_0\(19) => u_H_Input_Memory_n_58,
      \d_r_reg[31]_0\(18) => u_H_Input_Memory_n_59,
      \d_r_reg[31]_0\(17) => u_H_Input_Memory_n_60,
      \d_r_reg[31]_0\(16) => u_H_Input_Memory_n_61,
      \d_r_reg[31]_0\(15) => u_H_Input_Memory_n_62,
      \d_r_reg[31]_0\(14) => u_H_Input_Memory_n_63,
      \d_r_reg[31]_0\(13) => u_H_Input_Memory_n_64,
      \d_r_reg[31]_0\(12) => u_H_Input_Memory_n_65,
      \d_r_reg[31]_0\(11) => u_H_Input_Memory_n_66,
      \d_r_reg[31]_0\(10) => u_H_Input_Memory_n_67,
      \d_r_reg[31]_0\(9) => u_H_Input_Memory_n_68,
      \d_r_reg[31]_0\(8) => u_H_Input_Memory_n_69,
      \d_r_reg[31]_0\(7) => u_H_Input_Memory_n_70,
      \d_r_reg[31]_0\(6) => u_H_Input_Memory_n_71,
      \d_r_reg[31]_0\(5) => u_H_Input_Memory_n_72,
      \d_r_reg[31]_0\(4) => u_H_Input_Memory_n_73,
      \d_r_reg[31]_0\(3) => u_H_Input_Memory_n_74,
      \d_r_reg[31]_0\(2) => u_H_Input_Memory_n_75,
      \d_r_reg[31]_0\(1) => u_H_Input_Memory_n_76,
      \d_r_reg[31]_0\(0) => u_H_Input_Memory_n_77,
      \e_r_reg[0]_0\ => u_H_FSM_CTRL_n_0,
      \e_r_reg[31]_0\(31 downto 0) => e_r(31 downto 0),
      \f_r_reg[31]_0\(31) => u_H_Input_Memory_n_14,
      \f_r_reg[31]_0\(30) => u_H_Input_Memory_n_15,
      \f_r_reg[31]_0\(29) => u_H_Input_Memory_n_16,
      \f_r_reg[31]_0\(28) => u_H_Input_Memory_n_17,
      \f_r_reg[31]_0\(27) => u_H_Input_Memory_n_18,
      \f_r_reg[31]_0\(26) => u_H_Input_Memory_n_19,
      \f_r_reg[31]_0\(25) => u_H_Input_Memory_n_20,
      \f_r_reg[31]_0\(24) => u_H_Input_Memory_n_21,
      \f_r_reg[31]_0\(23) => u_H_Input_Memory_n_22,
      \f_r_reg[31]_0\(22) => u_H_Input_Memory_n_23,
      \f_r_reg[31]_0\(21) => u_H_Input_Memory_n_24,
      \f_r_reg[31]_0\(20) => u_H_Input_Memory_n_25,
      \f_r_reg[31]_0\(19) => u_H_Input_Memory_n_26,
      \f_r_reg[31]_0\(18) => u_H_Input_Memory_n_27,
      \f_r_reg[31]_0\(17) => u_H_Input_Memory_n_28,
      \f_r_reg[31]_0\(16) => u_H_Input_Memory_n_29,
      \f_r_reg[31]_0\(15) => u_H_Input_Memory_n_30,
      \f_r_reg[31]_0\(14) => u_H_Input_Memory_n_31,
      \f_r_reg[31]_0\(13) => u_H_Input_Memory_n_32,
      \f_r_reg[31]_0\(12) => u_H_Input_Memory_n_33,
      \f_r_reg[31]_0\(11) => u_H_Input_Memory_n_34,
      \f_r_reg[31]_0\(10) => u_H_Input_Memory_n_35,
      \f_r_reg[31]_0\(9) => u_H_Input_Memory_n_36,
      \f_r_reg[31]_0\(8) => u_H_Input_Memory_n_37,
      \f_r_reg[31]_0\(7) => u_H_Input_Memory_n_38,
      \f_r_reg[31]_0\(6) => u_H_Input_Memory_n_39,
      \f_r_reg[31]_0\(5) => u_H_Input_Memory_n_40,
      \f_r_reg[31]_0\(4) => u_H_Input_Memory_n_41,
      \f_r_reg[31]_0\(3) => u_H_Input_Memory_n_42,
      \f_r_reg[31]_0\(2) => u_H_Input_Memory_n_43,
      \f_r_reg[31]_0\(1) => u_H_Input_Memory_n_44,
      \f_r_reg[31]_0\(0) => u_H_Input_Memory_n_45,
      \h_r_reg[31]_0\(31 downto 0) => h_r(31 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^s00_axi_aresetn_0\
    );
u_H_FSM_CTRL: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_FSM_CTRL
     port map (
      D(1 downto 0) => next_state_r(1 downto 0),
      E(0) => write_output_w,
      \FSM_sequential_state_r_reg[0]_0\ => \^s00_axi_aresetn_0\,
      \FSM_sequential_state_r_reg[1]_0\(1 downto 0) => state_r(1 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      \axi_awaddr_reg[4]\ => u_H_FSM_CTRL_n_0,
      r_addr_r => r_addr_r,
      r_addr_valid_r => r_addr_valid_r,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_rdata(0) => s00_axi_rdata(0),
      \s00_axi_rdata[0]\(0) => u_H_Output_Memory_n_31,
      s00_axi_wdata(0) => s00_axi_wdata(0),
      valid_a_r => valid_a_r,
      valid_a_r_reg => u_H_FSM_CTRL_n_9,
      valid_a_r_reg_0(0) => u_H_Input_Memory_n_9,
      valid_b_r => valid_b_r,
      valid_b_r_reg => u_H_FSM_CTRL_n_4,
      valid_b_r_reg_0 => u_H_Input_Memory_n_7,
      valid_b_r_reg_1 => u_H_Input_Memory_n_10,
      valid_b_r_reg_2(0) => wr_b_w,
      valid_c_r => valid_c_r,
      valid_c_r_reg => u_H_FSM_CTRL_n_5,
      valid_c_r_reg_0(0) => u_H_Input_Memory_n_8,
      valid_d_r => valid_d_r,
      valid_d_r_reg => u_H_FSM_CTRL_n_6,
      valid_d_r_reg_0(0) => wr_d_w,
      valid_e_r => valid_e_r,
      valid_e_r_reg => u_H_FSM_CTRL_n_7,
      valid_e_r_reg_0(0) => u_H_Input_Memory_n_6,
      valid_f_r => valid_f_r,
      valid_f_r_reg => u_H_FSM_CTRL_n_8,
      valid_f_r_reg_0(0) => wr_f_w
    );
u_H_Input_Memory: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Input_Memory
     port map (
      E(0) => u_H_Input_Memory_n_6,
      Q(3 downto 0) => Q(3 downto 0),
      \a_r_reg[31]_0\(31 downto 0) => a_r(31 downto 0),
      \axi_awaddr_reg[2]\(0) => u_H_Input_Memory_n_8,
      \axi_awaddr_reg[2]_0\(0) => u_H_Input_Memory_n_9,
      \axi_awaddr_reg[2]_1\(0) => wr_f_w,
      \axi_awaddr_reg[2]_2\(0) => wr_d_w,
      \axi_awaddr_reg[2]_3\(0) => wr_b_w,
      \b_r_reg[31]_0\(31 downto 0) => b_r(31 downto 0),
      \c_r_reg[31]_0\(31 downto 0) => c_r(31 downto 0),
      \d_r_reg[31]_0\(31) => u_H_Input_Memory_n_46,
      \d_r_reg[31]_0\(30) => u_H_Input_Memory_n_47,
      \d_r_reg[31]_0\(29) => u_H_Input_Memory_n_48,
      \d_r_reg[31]_0\(28) => u_H_Input_Memory_n_49,
      \d_r_reg[31]_0\(27) => u_H_Input_Memory_n_50,
      \d_r_reg[31]_0\(26) => u_H_Input_Memory_n_51,
      \d_r_reg[31]_0\(25) => u_H_Input_Memory_n_52,
      \d_r_reg[31]_0\(24) => u_H_Input_Memory_n_53,
      \d_r_reg[31]_0\(23) => u_H_Input_Memory_n_54,
      \d_r_reg[31]_0\(22) => u_H_Input_Memory_n_55,
      \d_r_reg[31]_0\(21) => u_H_Input_Memory_n_56,
      \d_r_reg[31]_0\(20) => u_H_Input_Memory_n_57,
      \d_r_reg[31]_0\(19) => u_H_Input_Memory_n_58,
      \d_r_reg[31]_0\(18) => u_H_Input_Memory_n_59,
      \d_r_reg[31]_0\(17) => u_H_Input_Memory_n_60,
      \d_r_reg[31]_0\(16) => u_H_Input_Memory_n_61,
      \d_r_reg[31]_0\(15) => u_H_Input_Memory_n_62,
      \d_r_reg[31]_0\(14) => u_H_Input_Memory_n_63,
      \d_r_reg[31]_0\(13) => u_H_Input_Memory_n_64,
      \d_r_reg[31]_0\(12) => u_H_Input_Memory_n_65,
      \d_r_reg[31]_0\(11) => u_H_Input_Memory_n_66,
      \d_r_reg[31]_0\(10) => u_H_Input_Memory_n_67,
      \d_r_reg[31]_0\(9) => u_H_Input_Memory_n_68,
      \d_r_reg[31]_0\(8) => u_H_Input_Memory_n_69,
      \d_r_reg[31]_0\(7) => u_H_Input_Memory_n_70,
      \d_r_reg[31]_0\(6) => u_H_Input_Memory_n_71,
      \d_r_reg[31]_0\(5) => u_H_Input_Memory_n_72,
      \d_r_reg[31]_0\(4) => u_H_Input_Memory_n_73,
      \d_r_reg[31]_0\(3) => u_H_Input_Memory_n_74,
      \d_r_reg[31]_0\(2) => u_H_Input_Memory_n_75,
      \d_r_reg[31]_0\(1) => u_H_Input_Memory_n_76,
      \d_r_reg[31]_0\(0) => u_H_Input_Memory_n_77,
      \e_r_reg[0]_0\ => \e_r_reg[0]\,
      \e_r_reg[0]_1\ => \e_r_reg[0]_0\,
      \e_r_reg[31]_0\(31 downto 0) => e_r(31 downto 0),
      \f_r_reg[31]_0\(31) => u_H_Input_Memory_n_14,
      \f_r_reg[31]_0\(30) => u_H_Input_Memory_n_15,
      \f_r_reg[31]_0\(29) => u_H_Input_Memory_n_16,
      \f_r_reg[31]_0\(28) => u_H_Input_Memory_n_17,
      \f_r_reg[31]_0\(27) => u_H_Input_Memory_n_18,
      \f_r_reg[31]_0\(26) => u_H_Input_Memory_n_19,
      \f_r_reg[31]_0\(25) => u_H_Input_Memory_n_20,
      \f_r_reg[31]_0\(24) => u_H_Input_Memory_n_21,
      \f_r_reg[31]_0\(23) => u_H_Input_Memory_n_22,
      \f_r_reg[31]_0\(22) => u_H_Input_Memory_n_23,
      \f_r_reg[31]_0\(21) => u_H_Input_Memory_n_24,
      \f_r_reg[31]_0\(20) => u_H_Input_Memory_n_25,
      \f_r_reg[31]_0\(19) => u_H_Input_Memory_n_26,
      \f_r_reg[31]_0\(18) => u_H_Input_Memory_n_27,
      \f_r_reg[31]_0\(17) => u_H_Input_Memory_n_28,
      \f_r_reg[31]_0\(16) => u_H_Input_Memory_n_29,
      \f_r_reg[31]_0\(15) => u_H_Input_Memory_n_30,
      \f_r_reg[31]_0\(14) => u_H_Input_Memory_n_31,
      \f_r_reg[31]_0\(13) => u_H_Input_Memory_n_32,
      \f_r_reg[31]_0\(12) => u_H_Input_Memory_n_33,
      \f_r_reg[31]_0\(11) => u_H_Input_Memory_n_34,
      \f_r_reg[31]_0\(10) => u_H_Input_Memory_n_35,
      \f_r_reg[31]_0\(9) => u_H_Input_Memory_n_36,
      \f_r_reg[31]_0\(8) => u_H_Input_Memory_n_37,
      \f_r_reg[31]_0\(7) => u_H_Input_Memory_n_38,
      \f_r_reg[31]_0\(6) => u_H_Input_Memory_n_39,
      \f_r_reg[31]_0\(5) => u_H_Input_Memory_n_40,
      \f_r_reg[31]_0\(4) => u_H_Input_Memory_n_41,
      \f_r_reg[31]_0\(3) => u_H_Input_Memory_n_42,
      \f_r_reg[31]_0\(2) => u_H_Input_Memory_n_43,
      \f_r_reg[31]_0\(1) => u_H_Input_Memory_n_44,
      \f_r_reg[31]_0\(0) => u_H_Input_Memory_n_45,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axi_wvalid_0 => u_H_Input_Memory_n_7,
      valid_a_r => valid_a_r,
      valid_a_r_reg_0 => u_H_FSM_CTRL_n_9,
      valid_b_r => valid_b_r,
      valid_b_r_reg_0 => u_H_FSM_CTRL_n_4,
      valid_b_r_reg_1 => \^s00_axi_aresetn_0\,
      valid_c_r => valid_c_r,
      valid_c_r_reg_0 => u_H_FSM_CTRL_n_5,
      valid_d_r => valid_d_r,
      valid_d_r_reg_0 => u_H_Input_Memory_n_10,
      valid_d_r_reg_1 => u_H_FSM_CTRL_n_6,
      valid_e_r => valid_e_r,
      valid_e_r_reg_0 => u_H_FSM_CTRL_n_7,
      valid_f_r => valid_f_r,
      valid_f_r_reg_0 => u_H_FSM_CTRL_n_8
    );
u_H_Output_Memory: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Output_Memory
     port map (
      D(31 downto 0) => h_r(31 downto 0),
      E(0) => write_output_w,
      Q(31) => u_H_Output_Memory_n_0,
      Q(30) => u_H_Output_Memory_n_1,
      Q(29) => u_H_Output_Memory_n_2,
      Q(28) => u_H_Output_Memory_n_3,
      Q(27) => u_H_Output_Memory_n_4,
      Q(26) => u_H_Output_Memory_n_5,
      Q(25) => u_H_Output_Memory_n_6,
      Q(24) => u_H_Output_Memory_n_7,
      Q(23) => u_H_Output_Memory_n_8,
      Q(22) => u_H_Output_Memory_n_9,
      Q(21) => u_H_Output_Memory_n_10,
      Q(20) => u_H_Output_Memory_n_11,
      Q(19) => u_H_Output_Memory_n_12,
      Q(18) => u_H_Output_Memory_n_13,
      Q(17) => u_H_Output_Memory_n_14,
      Q(16) => u_H_Output_Memory_n_15,
      Q(15) => u_H_Output_Memory_n_16,
      Q(14) => u_H_Output_Memory_n_17,
      Q(13) => u_H_Output_Memory_n_18,
      Q(12) => u_H_Output_Memory_n_19,
      Q(11) => u_H_Output_Memory_n_20,
      Q(10) => u_H_Output_Memory_n_21,
      Q(9) => u_H_Output_Memory_n_22,
      Q(8) => u_H_Output_Memory_n_23,
      Q(7) => u_H_Output_Memory_n_24,
      Q(6) => u_H_Output_Memory_n_25,
      Q(5) => u_H_Output_Memory_n_26,
      Q(4) => u_H_Output_Memory_n_27,
      Q(3) => u_H_Output_Memory_n_28,
      Q(2) => u_H_Output_Memory_n_29,
      Q(1) => u_H_Output_Memory_n_30,
      Q(0) => u_H_Output_Memory_n_31,
      \h_r_reg[0]_0\ => \^s00_axi_aresetn_0\,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Acceleration_IP_v1_0_S00_AXI is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Acceleration_IP_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Acceleration_IP_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal dut_n_0 : STD_LOGIC;
  signal r_addr_i_w : STD_LOGIC;
  signal \r_addr_valid_i_w__0\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of r_addr_valid_i_w : label is "soft_lutpair21";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFF8888"
    )
        port map (
      I0 => \^s00_axi_bvalid\,
      I1 => s00_axi_bready,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => aw_en_reg_n_0,
      I5 => \^s_axi_awready\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => dut_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => r_addr_i_w,
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => r_addr_i_w,
      R => dut_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => dut_n_0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => axi_awaddr(2),
      R => dut_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => axi_awaddr(3),
      R => dut_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => axi_awaddr(4),
      R => dut_n_0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => axi_awaddr(5),
      R => dut_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => dut_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555C0000000"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_wready\,
      I4 => \^s_axi_awready\,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => dut_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => dut_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => dut_n_0
    );
dut: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Function_Core
     port map (
      Q(3 downto 0) => axi_awaddr(5 downto 2),
      \e_r_reg[0]\ => \^s_axi_wready\,
      \e_r_reg[0]_0\ => \^s_axi_awready\,
      r_addr_i_w => r_addr_i_w,
      r_addr_valid_i_w => \r_addr_valid_i_w__0\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => dut_n_0,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
r_addr_valid_i_w: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      O => \r_addr_valid_i_w__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Acceleration_IP_v1_0 is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Acceleration_IP_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Acceleration_IP_v1_0 is
begin
H_Acceleration_IP_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Acceleration_IP_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(0) => s00_axi_araddr(0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(3 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SoC_H_Acceleration_IP_0_1,H_Acceleration_IP_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "H_Acceleration_IP_v1_0,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN SoC_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN SoC_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Acceleration_IP_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(0) => s00_axi_araddr(2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(5 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
