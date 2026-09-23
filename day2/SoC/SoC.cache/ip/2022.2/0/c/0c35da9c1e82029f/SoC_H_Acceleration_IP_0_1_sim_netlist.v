// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Sep  2 00:25:28 2026
// Host        : LAPTOP-RKRVUI82 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SoC_H_Acceleration_IP_0_1_sim_netlist.v
// Design      : SoC_H_Acceleration_IP_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Acceleration_IP_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_araddr,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [0:0]s00_axi_araddr;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [0:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Acceleration_IP_v1_0_S00_AXI H_Acceleration_IP_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Acceleration_IP_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_araddr,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [0:0]s00_axi_araddr;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire axi_arready0;
  wire [5:2]axi_awaddr;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire dut_n_0;
  wire r_addr_i_w;
  wire r_addr_valid_i_w__0;
  wire s00_axi_aclk;
  wire [0:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;

  LUT6 #(
    .INIT(64'hFFFF88880FFF8888)) 
    aw_en_i_1
       (.I0(s00_axi_bvalid),
        .I1(s00_axi_bready),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(aw_en_reg_n_0),
        .I5(S_AXI_AWREADY),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(dut_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(r_addr_i_w),
        .O(\axi_araddr[2]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(r_addr_i_w),
        .R(dut_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(dut_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[0]),
        .Q(axi_awaddr[2]),
        .R(dut_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[1]),
        .Q(axi_awaddr[3]),
        .R(dut_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[2]),
        .Q(axi_awaddr[4]),
        .R(dut_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready0),
        .D(s00_axi_awaddr[3]),
        .Q(axi_awaddr[5]),
        .R(dut_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(dut_n_0));
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_AWREADY),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(dut_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(dut_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(dut_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Function_Core dut
       (.Q(axi_awaddr),
        .\e_r_reg[0] (S_AXI_WREADY),
        .\e_r_reg[0]_0 (S_AXI_AWREADY),
        .r_addr_i_w(r_addr_i_w),
        .r_addr_valid_i_w(r_addr_valid_i_w__0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(dut_n_0),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    r_addr_valid_i_w
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .O(r_addr_valid_i_w__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Arbiter
   (r_addr_r,
    r_addr_valid_r,
    s00_axi_rdata,
    r_addr_i_w,
    s00_axi_aclk,
    \r_addr_r_reg[0]_0 ,
    r_addr_valid_i_w,
    Q);
  output r_addr_r;
  output r_addr_valid_r;
  output [30:0]s00_axi_rdata;
  input r_addr_i_w;
  input s00_axi_aclk;
  input \r_addr_r_reg[0]_0 ;
  input r_addr_valid_i_w;
  input [30:0]Q;

  wire [30:0]Q;
  wire r_addr_i_w;
  wire r_addr_r;
  wire \r_addr_r_reg[0]_0 ;
  wire r_addr_valid_i_w;
  wire r_addr_valid_r;
  wire s00_axi_aclk;
  wire [30:0]s00_axi_rdata;

  FDCE \r_addr_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\r_addr_r_reg[0]_0 ),
        .D(r_addr_i_w),
        .Q(r_addr_r));
  FDCE r_addr_valid_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\r_addr_r_reg[0]_0 ),
        .D(r_addr_valid_i_w),
        .Q(r_addr_valid_r));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(Q[9]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(Q[10]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(Q[11]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(Q[12]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(Q[13]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(Q[14]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(Q[15]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(Q[16]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(Q[17]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(Q[18]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(Q[0]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(Q[19]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(Q[20]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(Q[21]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(Q[22]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(Q[23]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(Q[24]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(Q[25]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(Q[26]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(Q[27]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(Q[28]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(Q[1]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(Q[29]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[29]));
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(Q[30]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(Q[2]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(Q[3]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(Q[4]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(Q[5]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(Q[6]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(Q[7]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(Q[8]),
        .I1(r_addr_valid_r),
        .I2(r_addr_r),
        .O(s00_axi_rdata[8]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Datapath
   (D,
    E,
    s00_axi_aresetn_0,
    \h_r_reg[31]_0 ,
    \e_r_reg[0]_0 ,
    Q,
    s00_axi_aresetn,
    s00_axi_aclk,
    \f_r_reg[31]_0 ,
    \d_r_reg[31]_0 ,
    \b_r_reg[31]_0 ,
    \c_r_reg[31]_0 ,
    \a_r_reg[31]_0 ,
    \e_r_reg[31]_0 );
  output [1:0]D;
  output [0:0]E;
  output s00_axi_aresetn_0;
  output [31:0]\h_r_reg[31]_0 ;
  input \e_r_reg[0]_0 ;
  input [1:0]Q;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [31:0]\f_r_reg[31]_0 ;
  input [31:0]\d_r_reg[31]_0 ;
  input [31:0]\b_r_reg[31]_0 ;
  input [31:0]\c_r_reg[31]_0 ;
  input [31:0]\a_r_reg[31]_0 ;
  input [31:0]\e_r_reg[31]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_r[2]_i_1_n_0 ;
  wire [1:0]Q;
  wire a_r;
  wire [31:0]\a_r_reg[31]_0 ;
  wire \a_r_reg_n_0_[0] ;
  wire \a_r_reg_n_0_[10] ;
  wire \a_r_reg_n_0_[11] ;
  wire \a_r_reg_n_0_[12] ;
  wire \a_r_reg_n_0_[13] ;
  wire \a_r_reg_n_0_[14] ;
  wire \a_r_reg_n_0_[15] ;
  wire \a_r_reg_n_0_[16] ;
  wire \a_r_reg_n_0_[17] ;
  wire \a_r_reg_n_0_[18] ;
  wire \a_r_reg_n_0_[19] ;
  wire \a_r_reg_n_0_[1] ;
  wire \a_r_reg_n_0_[20] ;
  wire \a_r_reg_n_0_[21] ;
  wire \a_r_reg_n_0_[22] ;
  wire \a_r_reg_n_0_[23] ;
  wire \a_r_reg_n_0_[24] ;
  wire \a_r_reg_n_0_[25] ;
  wire \a_r_reg_n_0_[26] ;
  wire \a_r_reg_n_0_[27] ;
  wire \a_r_reg_n_0_[28] ;
  wire \a_r_reg_n_0_[29] ;
  wire \a_r_reg_n_0_[2] ;
  wire \a_r_reg_n_0_[30] ;
  wire \a_r_reg_n_0_[31] ;
  wire \a_r_reg_n_0_[3] ;
  wire \a_r_reg_n_0_[4] ;
  wire \a_r_reg_n_0_[5] ;
  wire \a_r_reg_n_0_[6] ;
  wire \a_r_reg_n_0_[7] ;
  wire \a_r_reg_n_0_[8] ;
  wire \a_r_reg_n_0_[9] ;
  wire [31:0]\b_r_reg[31]_0 ;
  wire \b_r_reg_n_0_[0] ;
  wire \b_r_reg_n_0_[10] ;
  wire \b_r_reg_n_0_[11] ;
  wire \b_r_reg_n_0_[12] ;
  wire \b_r_reg_n_0_[13] ;
  wire \b_r_reg_n_0_[14] ;
  wire \b_r_reg_n_0_[15] ;
  wire \b_r_reg_n_0_[16] ;
  wire \b_r_reg_n_0_[17] ;
  wire \b_r_reg_n_0_[18] ;
  wire \b_r_reg_n_0_[19] ;
  wire \b_r_reg_n_0_[1] ;
  wire \b_r_reg_n_0_[20] ;
  wire \b_r_reg_n_0_[21] ;
  wire \b_r_reg_n_0_[22] ;
  wire \b_r_reg_n_0_[23] ;
  wire \b_r_reg_n_0_[24] ;
  wire \b_r_reg_n_0_[25] ;
  wire \b_r_reg_n_0_[26] ;
  wire \b_r_reg_n_0_[27] ;
  wire \b_r_reg_n_0_[28] ;
  wire \b_r_reg_n_0_[29] ;
  wire \b_r_reg_n_0_[2] ;
  wire \b_r_reg_n_0_[30] ;
  wire \b_r_reg_n_0_[31] ;
  wire \b_r_reg_n_0_[3] ;
  wire \b_r_reg_n_0_[4] ;
  wire \b_r_reg_n_0_[5] ;
  wire \b_r_reg_n_0_[6] ;
  wire \b_r_reg_n_0_[7] ;
  wire \b_r_reg_n_0_[8] ;
  wire \b_r_reg_n_0_[9] ;
  wire [31:0]\c_r_reg[31]_0 ;
  wire \c_r_reg_n_0_[0] ;
  wire \c_r_reg_n_0_[10] ;
  wire \c_r_reg_n_0_[11] ;
  wire \c_r_reg_n_0_[12] ;
  wire \c_r_reg_n_0_[13] ;
  wire \c_r_reg_n_0_[14] ;
  wire \c_r_reg_n_0_[15] ;
  wire \c_r_reg_n_0_[16] ;
  wire \c_r_reg_n_0_[17] ;
  wire \c_r_reg_n_0_[18] ;
  wire \c_r_reg_n_0_[19] ;
  wire \c_r_reg_n_0_[1] ;
  wire \c_r_reg_n_0_[20] ;
  wire \c_r_reg_n_0_[21] ;
  wire \c_r_reg_n_0_[22] ;
  wire \c_r_reg_n_0_[23] ;
  wire \c_r_reg_n_0_[24] ;
  wire \c_r_reg_n_0_[25] ;
  wire \c_r_reg_n_0_[26] ;
  wire \c_r_reg_n_0_[27] ;
  wire \c_r_reg_n_0_[28] ;
  wire \c_r_reg_n_0_[29] ;
  wire \c_r_reg_n_0_[2] ;
  wire \c_r_reg_n_0_[30] ;
  wire \c_r_reg_n_0_[31] ;
  wire \c_r_reg_n_0_[3] ;
  wire \c_r_reg_n_0_[4] ;
  wire \c_r_reg_n_0_[5] ;
  wire \c_r_reg_n_0_[6] ;
  wire \c_r_reg_n_0_[7] ;
  wire \c_r_reg_n_0_[8] ;
  wire \c_r_reg_n_0_[9] ;
  wire [31:0]d_r;
  wire [31:0]\d_r_reg[31]_0 ;
  wire \e_r_reg[0]_0 ;
  wire [31:0]\e_r_reg[31]_0 ;
  wire \e_r_reg_n_0_[0] ;
  wire \e_r_reg_n_0_[10] ;
  wire \e_r_reg_n_0_[11] ;
  wire \e_r_reg_n_0_[12] ;
  wire \e_r_reg_n_0_[13] ;
  wire \e_r_reg_n_0_[14] ;
  wire \e_r_reg_n_0_[15] ;
  wire \e_r_reg_n_0_[16] ;
  wire \e_r_reg_n_0_[17] ;
  wire \e_r_reg_n_0_[18] ;
  wire \e_r_reg_n_0_[19] ;
  wire \e_r_reg_n_0_[1] ;
  wire \e_r_reg_n_0_[20] ;
  wire \e_r_reg_n_0_[21] ;
  wire \e_r_reg_n_0_[22] ;
  wire \e_r_reg_n_0_[23] ;
  wire \e_r_reg_n_0_[24] ;
  wire \e_r_reg_n_0_[25] ;
  wire \e_r_reg_n_0_[26] ;
  wire \e_r_reg_n_0_[27] ;
  wire \e_r_reg_n_0_[28] ;
  wire \e_r_reg_n_0_[29] ;
  wire \e_r_reg_n_0_[2] ;
  wire \e_r_reg_n_0_[30] ;
  wire \e_r_reg_n_0_[31] ;
  wire \e_r_reg_n_0_[3] ;
  wire \e_r_reg_n_0_[4] ;
  wire \e_r_reg_n_0_[5] ;
  wire \e_r_reg_n_0_[6] ;
  wire \e_r_reg_n_0_[7] ;
  wire \e_r_reg_n_0_[8] ;
  wire \e_r_reg_n_0_[9] ;
  wire [31:0]f_r;
  wire [31:0]\f_r_reg[31]_0 ;
  wire h_r;
  wire \h_r[0]_i_1_n_0 ;
  wire \h_r[10]_i_1_n_0 ;
  wire \h_r[11]_i_1_n_0 ;
  wire \h_r[12]_i_1_n_0 ;
  wire \h_r[13]_i_1_n_0 ;
  wire \h_r[14]_i_1_n_0 ;
  wire \h_r[15]_i_1_n_0 ;
  wire \h_r[16]_i_1_n_0 ;
  wire \h_r[17]_i_1_n_0 ;
  wire \h_r[18]_i_1_n_0 ;
  wire \h_r[19]_i_1_n_0 ;
  wire \h_r[1]_i_1_n_0 ;
  wire \h_r[20]_i_1_n_0 ;
  wire \h_r[21]_i_1_n_0 ;
  wire \h_r[22]_i_1_n_0 ;
  wire \h_r[23]_i_1_n_0 ;
  wire \h_r[24]_i_1_n_0 ;
  wire \h_r[25]_i_1_n_0 ;
  wire \h_r[26]_i_1_n_0 ;
  wire \h_r[27]_i_1_n_0 ;
  wire \h_r[28]_i_1_n_0 ;
  wire \h_r[29]_i_1_n_0 ;
  wire \h_r[2]_i_1_n_0 ;
  wire \h_r[30]_i_1_n_0 ;
  wire \h_r[31]_i_2_n_0 ;
  wire \h_r[3]_i_1_n_0 ;
  wire \h_r[4]_i_1_n_0 ;
  wire \h_r[5]_i_1_n_0 ;
  wire \h_r[6]_i_1_n_0 ;
  wire \h_r[7]_i_1_n_0 ;
  wire \h_r[8]_i_1_n_0 ;
  wire \h_r[9]_i_1_n_0 ;
  wire [31:0]\h_r_reg[31]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire [2:0]state_r;
  wire [2:0]state_r__0;
  wire sub_r;
  wire [31:0]sub_r00_out;
  wire sub_r0_carry__0_i_1_n_0;
  wire sub_r0_carry__0_i_2_n_0;
  wire sub_r0_carry__0_i_3_n_0;
  wire sub_r0_carry__0_i_4_n_0;
  wire sub_r0_carry__0_i_5_n_0;
  wire sub_r0_carry__0_i_6_n_0;
  wire sub_r0_carry__0_i_7_n_0;
  wire sub_r0_carry__0_i_8_n_0;
  wire sub_r0_carry__0_n_0;
  wire sub_r0_carry__0_n_1;
  wire sub_r0_carry__0_n_2;
  wire sub_r0_carry__0_n_3;
  wire sub_r0_carry__0_n_4;
  wire sub_r0_carry__0_n_5;
  wire sub_r0_carry__0_n_6;
  wire sub_r0_carry__0_n_7;
  wire sub_r0_carry__1_i_1_n_0;
  wire sub_r0_carry__1_i_2_n_0;
  wire sub_r0_carry__1_i_3_n_0;
  wire sub_r0_carry__1_i_4_n_0;
  wire sub_r0_carry__1_i_5_n_0;
  wire sub_r0_carry__1_i_6_n_0;
  wire sub_r0_carry__1_i_7_n_0;
  wire sub_r0_carry__1_i_8_n_0;
  wire sub_r0_carry__1_n_0;
  wire sub_r0_carry__1_n_1;
  wire sub_r0_carry__1_n_2;
  wire sub_r0_carry__1_n_3;
  wire sub_r0_carry__1_n_4;
  wire sub_r0_carry__1_n_5;
  wire sub_r0_carry__1_n_6;
  wire sub_r0_carry__1_n_7;
  wire sub_r0_carry__2_i_1_n_0;
  wire sub_r0_carry__2_i_2_n_0;
  wire sub_r0_carry__2_i_3_n_0;
  wire sub_r0_carry__2_i_4_n_0;
  wire sub_r0_carry__2_i_5_n_0;
  wire sub_r0_carry__2_i_6_n_0;
  wire sub_r0_carry__2_i_7_n_0;
  wire sub_r0_carry__2_i_8_n_0;
  wire sub_r0_carry__2_n_1;
  wire sub_r0_carry__2_n_2;
  wire sub_r0_carry__2_n_3;
  wire sub_r0_carry__2_n_4;
  wire sub_r0_carry__2_n_5;
  wire sub_r0_carry__2_n_6;
  wire sub_r0_carry__2_n_7;
  wire sub_r0_carry_i_1_n_0;
  wire sub_r0_carry_i_2_n_0;
  wire sub_r0_carry_i_3_n_0;
  wire sub_r0_carry_i_4_n_0;
  wire sub_r0_carry_i_5_n_0;
  wire sub_r0_carry_i_6_n_0;
  wire sub_r0_carry_i_7_n_0;
  wire sub_r0_carry_i_8_n_0;
  wire sub_r0_carry_n_0;
  wire sub_r0_carry_n_1;
  wire sub_r0_carry_n_2;
  wire sub_r0_carry_n_3;
  wire sub_r0_carry_n_4;
  wire sub_r0_carry_n_5;
  wire sub_r0_carry_n_6;
  wire sub_r0_carry_n_7;
  wire \sub_r_reg_n_0_[0] ;
  wire \sub_r_reg_n_0_[10] ;
  wire \sub_r_reg_n_0_[11] ;
  wire \sub_r_reg_n_0_[12] ;
  wire \sub_r_reg_n_0_[13] ;
  wire \sub_r_reg_n_0_[14] ;
  wire \sub_r_reg_n_0_[15] ;
  wire \sub_r_reg_n_0_[16] ;
  wire \sub_r_reg_n_0_[17] ;
  wire \sub_r_reg_n_0_[18] ;
  wire \sub_r_reg_n_0_[19] ;
  wire \sub_r_reg_n_0_[1] ;
  wire \sub_r_reg_n_0_[20] ;
  wire \sub_r_reg_n_0_[21] ;
  wire \sub_r_reg_n_0_[22] ;
  wire \sub_r_reg_n_0_[23] ;
  wire \sub_r_reg_n_0_[24] ;
  wire \sub_r_reg_n_0_[25] ;
  wire \sub_r_reg_n_0_[26] ;
  wire \sub_r_reg_n_0_[27] ;
  wire \sub_r_reg_n_0_[28] ;
  wire \sub_r_reg_n_0_[29] ;
  wire \sub_r_reg_n_0_[2] ;
  wire \sub_r_reg_n_0_[30] ;
  wire \sub_r_reg_n_0_[31] ;
  wire \sub_r_reg_n_0_[3] ;
  wire \sub_r_reg_n_0_[4] ;
  wire \sub_r_reg_n_0_[5] ;
  wire \sub_r_reg_n_0_[6] ;
  wire \sub_r_reg_n_0_[7] ;
  wire \sub_r_reg_n_0_[8] ;
  wire \sub_r_reg_n_0_[9] ;
  wire sum_r;
  wire [31:0]sum_r0;
  wire \sum_r[15]_i_10_n_0 ;
  wire \sum_r[15]_i_11_n_0 ;
  wire \sum_r[15]_i_12_n_0 ;
  wire \sum_r[15]_i_13_n_0 ;
  wire \sum_r[15]_i_14_n_0 ;
  wire \sum_r[15]_i_15_n_0 ;
  wire \sum_r[15]_i_16_n_0 ;
  wire \sum_r[15]_i_17_n_0 ;
  wire \sum_r[15]_i_2_n_0 ;
  wire \sum_r[15]_i_3_n_0 ;
  wire \sum_r[15]_i_4_n_0 ;
  wire \sum_r[15]_i_5_n_0 ;
  wire \sum_r[15]_i_6_n_0 ;
  wire \sum_r[15]_i_7_n_0 ;
  wire \sum_r[15]_i_8_n_0 ;
  wire \sum_r[15]_i_9_n_0 ;
  wire \sum_r[23]_i_10_n_0 ;
  wire \sum_r[23]_i_11_n_0 ;
  wire \sum_r[23]_i_12_n_0 ;
  wire \sum_r[23]_i_13_n_0 ;
  wire \sum_r[23]_i_14_n_0 ;
  wire \sum_r[23]_i_15_n_0 ;
  wire \sum_r[23]_i_16_n_0 ;
  wire \sum_r[23]_i_17_n_0 ;
  wire \sum_r[23]_i_2_n_0 ;
  wire \sum_r[23]_i_3_n_0 ;
  wire \sum_r[23]_i_4_n_0 ;
  wire \sum_r[23]_i_5_n_0 ;
  wire \sum_r[23]_i_6_n_0 ;
  wire \sum_r[23]_i_7_n_0 ;
  wire \sum_r[23]_i_8_n_0 ;
  wire \sum_r[23]_i_9_n_0 ;
  wire \sum_r[31]_i_10_n_0 ;
  wire \sum_r[31]_i_11_n_0 ;
  wire \sum_r[31]_i_12_n_0 ;
  wire \sum_r[31]_i_13_n_0 ;
  wire \sum_r[31]_i_14_n_0 ;
  wire \sum_r[31]_i_15_n_0 ;
  wire \sum_r[31]_i_16_n_0 ;
  wire \sum_r[31]_i_17_n_0 ;
  wire \sum_r[31]_i_3_n_0 ;
  wire \sum_r[31]_i_4_n_0 ;
  wire \sum_r[31]_i_5_n_0 ;
  wire \sum_r[31]_i_6_n_0 ;
  wire \sum_r[31]_i_7_n_0 ;
  wire \sum_r[31]_i_8_n_0 ;
  wire \sum_r[31]_i_9_n_0 ;
  wire \sum_r[7]_i_10_n_0 ;
  wire \sum_r[7]_i_11_n_0 ;
  wire \sum_r[7]_i_12_n_0 ;
  wire \sum_r[7]_i_13_n_0 ;
  wire \sum_r[7]_i_14_n_0 ;
  wire \sum_r[7]_i_15_n_0 ;
  wire \sum_r[7]_i_16_n_0 ;
  wire \sum_r[7]_i_2_n_0 ;
  wire \sum_r[7]_i_3_n_0 ;
  wire \sum_r[7]_i_4_n_0 ;
  wire \sum_r[7]_i_5_n_0 ;
  wire \sum_r[7]_i_6_n_0 ;
  wire \sum_r[7]_i_7_n_0 ;
  wire \sum_r[7]_i_8_n_0 ;
  wire \sum_r[7]_i_9_n_0 ;
  wire \sum_r_reg[15]_i_1_n_0 ;
  wire \sum_r_reg[15]_i_1_n_1 ;
  wire \sum_r_reg[15]_i_1_n_2 ;
  wire \sum_r_reg[15]_i_1_n_3 ;
  wire \sum_r_reg[15]_i_1_n_4 ;
  wire \sum_r_reg[15]_i_1_n_5 ;
  wire \sum_r_reg[15]_i_1_n_6 ;
  wire \sum_r_reg[15]_i_1_n_7 ;
  wire \sum_r_reg[23]_i_1_n_0 ;
  wire \sum_r_reg[23]_i_1_n_1 ;
  wire \sum_r_reg[23]_i_1_n_2 ;
  wire \sum_r_reg[23]_i_1_n_3 ;
  wire \sum_r_reg[23]_i_1_n_4 ;
  wire \sum_r_reg[23]_i_1_n_5 ;
  wire \sum_r_reg[23]_i_1_n_6 ;
  wire \sum_r_reg[23]_i_1_n_7 ;
  wire \sum_r_reg[31]_i_2_n_1 ;
  wire \sum_r_reg[31]_i_2_n_2 ;
  wire \sum_r_reg[31]_i_2_n_3 ;
  wire \sum_r_reg[31]_i_2_n_4 ;
  wire \sum_r_reg[31]_i_2_n_5 ;
  wire \sum_r_reg[31]_i_2_n_6 ;
  wire \sum_r_reg[31]_i_2_n_7 ;
  wire \sum_r_reg[7]_i_1_n_0 ;
  wire \sum_r_reg[7]_i_1_n_1 ;
  wire \sum_r_reg[7]_i_1_n_2 ;
  wire \sum_r_reg[7]_i_1_n_3 ;
  wire \sum_r_reg[7]_i_1_n_4 ;
  wire \sum_r_reg[7]_i_1_n_5 ;
  wire \sum_r_reg[7]_i_1_n_6 ;
  wire \sum_r_reg[7]_i_1_n_7 ;
  wire \sum_r_reg_n_0_[0] ;
  wire \sum_r_reg_n_0_[10] ;
  wire \sum_r_reg_n_0_[11] ;
  wire \sum_r_reg_n_0_[12] ;
  wire \sum_r_reg_n_0_[13] ;
  wire \sum_r_reg_n_0_[14] ;
  wire \sum_r_reg_n_0_[15] ;
  wire \sum_r_reg_n_0_[16] ;
  wire \sum_r_reg_n_0_[17] ;
  wire \sum_r_reg_n_0_[18] ;
  wire \sum_r_reg_n_0_[19] ;
  wire \sum_r_reg_n_0_[1] ;
  wire \sum_r_reg_n_0_[20] ;
  wire \sum_r_reg_n_0_[21] ;
  wire \sum_r_reg_n_0_[22] ;
  wire \sum_r_reg_n_0_[23] ;
  wire \sum_r_reg_n_0_[24] ;
  wire \sum_r_reg_n_0_[25] ;
  wire \sum_r_reg_n_0_[26] ;
  wire \sum_r_reg_n_0_[27] ;
  wire \sum_r_reg_n_0_[28] ;
  wire \sum_r_reg_n_0_[29] ;
  wire \sum_r_reg_n_0_[2] ;
  wire \sum_r_reg_n_0_[30] ;
  wire \sum_r_reg_n_0_[31] ;
  wire \sum_r_reg_n_0_[3] ;
  wire \sum_r_reg_n_0_[4] ;
  wire \sum_r_reg_n_0_[5] ;
  wire \sum_r_reg_n_0_[6] ;
  wire \sum_r_reg_n_0_[7] ;
  wire \sum_r_reg_n_0_[8] ;
  wire \sum_r_reg_n_0_[9] ;
  wire [31:0]xor_r;
  wire \xor_r[0]_i_1_n_0 ;
  wire \xor_r[10]_i_1_n_0 ;
  wire \xor_r[11]_i_1_n_0 ;
  wire \xor_r[12]_i_1_n_0 ;
  wire \xor_r[13]_i_1_n_0 ;
  wire \xor_r[14]_i_1_n_0 ;
  wire \xor_r[15]_i_1_n_0 ;
  wire \xor_r[16]_i_1_n_0 ;
  wire \xor_r[17]_i_1_n_0 ;
  wire \xor_r[18]_i_1_n_0 ;
  wire \xor_r[19]_i_1_n_0 ;
  wire \xor_r[1]_i_1_n_0 ;
  wire \xor_r[20]_i_1_n_0 ;
  wire \xor_r[21]_i_1_n_0 ;
  wire \xor_r[22]_i_1_n_0 ;
  wire \xor_r[23]_i_1_n_0 ;
  wire \xor_r[24]_i_1_n_0 ;
  wire \xor_r[25]_i_1_n_0 ;
  wire \xor_r[26]_i_1_n_0 ;
  wire \xor_r[27]_i_1_n_0 ;
  wire \xor_r[28]_i_1_n_0 ;
  wire \xor_r[29]_i_1_n_0 ;
  wire \xor_r[2]_i_1_n_0 ;
  wire \xor_r[30]_i_1_n_0 ;
  wire \xor_r[31]_i_2_n_0 ;
  wire \xor_r[3]_i_1_n_0 ;
  wire \xor_r[4]_i_1_n_0 ;
  wire \xor_r[5]_i_1_n_0 ;
  wire \xor_r[6]_i_1_n_0 ;
  wire \xor_r[7]_i_1_n_0 ;
  wire \xor_r[8]_i_1_n_0 ;
  wire \xor_r[9]_i_1_n_0 ;
  wire xor_r_0;
  wire [7:7]NLW_sub_r0_carry__2_CO_UNCONNECTED;
  wire [7:7]\NLW_sum_r_reg[31]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h000800FF)) 
    \FSM_sequential_state_r[0]_i_1 
       (.I0(state_r[2]),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \FSM_sequential_state_r[0]_i_1__0 
       (.I0(state_r[0]),
        .I1(state_r[1]),
        .I2(state_r[2]),
        .O(state_r__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \FSM_sequential_state_r[1]_i_1__0 
       (.I0(state_r[2]),
        .I1(state_r[0]),
        .I2(state_r[1]),
        .O(state_r__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h0040FF00)) 
    \FSM_sequential_state_r[1]_i_2 
       (.I0(state_r[1]),
        .I1(state_r[0]),
        .I2(state_r[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h0FFE)) 
    \FSM_sequential_state_r[2]_i_1 
       (.I0(state_r[0]),
        .I1(\e_r_reg[0]_0 ),
        .I2(state_r[1]),
        .I3(state_r[2]),
        .O(\FSM_sequential_state_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h24)) 
    \FSM_sequential_state_r[2]_i_2 
       (.I0(state_r[0]),
        .I1(state_r[2]),
        .I2(state_r[1]),
        .O(state_r__0[2]));
  (* FSM_ENCODED_STATES = "DP_IDLE:000,DP_ADD:001,DP_XOR:010,DP_SUB:011,DP_OR:100,DP_DONE:101," *) 
  FDCE \FSM_sequential_state_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state_r[2]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(state_r__0[0]),
        .Q(state_r[0]));
  (* FSM_ENCODED_STATES = "DP_IDLE:000,DP_ADD:001,DP_XOR:010,DP_SUB:011,DP_OR:100,DP_DONE:101," *) 
  FDCE \FSM_sequential_state_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state_r[2]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(state_r__0[1]),
        .Q(state_r[1]));
  (* FSM_ENCODED_STATES = "DP_IDLE:000,DP_ADD:001,DP_XOR:010,DP_SUB:011,DP_OR:100,DP_DONE:101," *) 
  FDCE \FSM_sequential_state_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state_r[2]_i_1_n_0 ),
        .CLR(s00_axi_aresetn_0),
        .D(state_r__0[2]),
        .Q(state_r[2]));
  FDCE \a_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [0]),
        .Q(\a_r_reg_n_0_[0] ));
  FDCE \a_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [10]),
        .Q(\a_r_reg_n_0_[10] ));
  FDCE \a_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [11]),
        .Q(\a_r_reg_n_0_[11] ));
  FDCE \a_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [12]),
        .Q(\a_r_reg_n_0_[12] ));
  FDCE \a_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [13]),
        .Q(\a_r_reg_n_0_[13] ));
  FDCE \a_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [14]),
        .Q(\a_r_reg_n_0_[14] ));
  FDCE \a_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [15]),
        .Q(\a_r_reg_n_0_[15] ));
  FDCE \a_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [16]),
        .Q(\a_r_reg_n_0_[16] ));
  FDCE \a_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [17]),
        .Q(\a_r_reg_n_0_[17] ));
  FDCE \a_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [18]),
        .Q(\a_r_reg_n_0_[18] ));
  FDCE \a_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [19]),
        .Q(\a_r_reg_n_0_[19] ));
  FDCE \a_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [1]),
        .Q(\a_r_reg_n_0_[1] ));
  FDCE \a_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [20]),
        .Q(\a_r_reg_n_0_[20] ));
  FDCE \a_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [21]),
        .Q(\a_r_reg_n_0_[21] ));
  FDCE \a_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [22]),
        .Q(\a_r_reg_n_0_[22] ));
  FDCE \a_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [23]),
        .Q(\a_r_reg_n_0_[23] ));
  FDCE \a_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [24]),
        .Q(\a_r_reg_n_0_[24] ));
  FDCE \a_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [25]),
        .Q(\a_r_reg_n_0_[25] ));
  FDCE \a_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [26]),
        .Q(\a_r_reg_n_0_[26] ));
  FDCE \a_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [27]),
        .Q(\a_r_reg_n_0_[27] ));
  FDCE \a_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [28]),
        .Q(\a_r_reg_n_0_[28] ));
  FDCE \a_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [29]),
        .Q(\a_r_reg_n_0_[29] ));
  FDCE \a_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [2]),
        .Q(\a_r_reg_n_0_[2] ));
  FDCE \a_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [30]),
        .Q(\a_r_reg_n_0_[30] ));
  FDCE \a_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [31]),
        .Q(\a_r_reg_n_0_[31] ));
  FDCE \a_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [3]),
        .Q(\a_r_reg_n_0_[3] ));
  FDCE \a_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [4]),
        .Q(\a_r_reg_n_0_[4] ));
  FDCE \a_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [5]),
        .Q(\a_r_reg_n_0_[5] ));
  FDCE \a_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [6]),
        .Q(\a_r_reg_n_0_[6] ));
  FDCE \a_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [7]),
        .Q(\a_r_reg_n_0_[7] ));
  FDCE \a_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [8]),
        .Q(\a_r_reg_n_0_[8] ));
  FDCE \a_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\a_r_reg[31]_0 [9]),
        .Q(\a_r_reg_n_0_[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(s00_axi_aresetn_0));
  FDCE \b_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [0]),
        .Q(\b_r_reg_n_0_[0] ));
  FDCE \b_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [10]),
        .Q(\b_r_reg_n_0_[10] ));
  FDCE \b_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [11]),
        .Q(\b_r_reg_n_0_[11] ));
  FDCE \b_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [12]),
        .Q(\b_r_reg_n_0_[12] ));
  FDCE \b_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [13]),
        .Q(\b_r_reg_n_0_[13] ));
  FDCE \b_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [14]),
        .Q(\b_r_reg_n_0_[14] ));
  FDCE \b_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [15]),
        .Q(\b_r_reg_n_0_[15] ));
  FDCE \b_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [16]),
        .Q(\b_r_reg_n_0_[16] ));
  FDCE \b_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [17]),
        .Q(\b_r_reg_n_0_[17] ));
  FDCE \b_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [18]),
        .Q(\b_r_reg_n_0_[18] ));
  FDCE \b_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [19]),
        .Q(\b_r_reg_n_0_[19] ));
  FDCE \b_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [1]),
        .Q(\b_r_reg_n_0_[1] ));
  FDCE \b_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [20]),
        .Q(\b_r_reg_n_0_[20] ));
  FDCE \b_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [21]),
        .Q(\b_r_reg_n_0_[21] ));
  FDCE \b_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [22]),
        .Q(\b_r_reg_n_0_[22] ));
  FDCE \b_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [23]),
        .Q(\b_r_reg_n_0_[23] ));
  FDCE \b_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [24]),
        .Q(\b_r_reg_n_0_[24] ));
  FDCE \b_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [25]),
        .Q(\b_r_reg_n_0_[25] ));
  FDCE \b_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [26]),
        .Q(\b_r_reg_n_0_[26] ));
  FDCE \b_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [27]),
        .Q(\b_r_reg_n_0_[27] ));
  FDCE \b_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [28]),
        .Q(\b_r_reg_n_0_[28] ));
  FDCE \b_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [29]),
        .Q(\b_r_reg_n_0_[29] ));
  FDCE \b_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [2]),
        .Q(\b_r_reg_n_0_[2] ));
  FDCE \b_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [30]),
        .Q(\b_r_reg_n_0_[30] ));
  FDCE \b_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [31]),
        .Q(\b_r_reg_n_0_[31] ));
  FDCE \b_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [3]),
        .Q(\b_r_reg_n_0_[3] ));
  FDCE \b_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [4]),
        .Q(\b_r_reg_n_0_[4] ));
  FDCE \b_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [5]),
        .Q(\b_r_reg_n_0_[5] ));
  FDCE \b_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [6]),
        .Q(\b_r_reg_n_0_[6] ));
  FDCE \b_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [7]),
        .Q(\b_r_reg_n_0_[7] ));
  FDCE \b_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [8]),
        .Q(\b_r_reg_n_0_[8] ));
  FDCE \b_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\b_r_reg[31]_0 [9]),
        .Q(\b_r_reg_n_0_[9] ));
  FDCE \c_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [0]),
        .Q(\c_r_reg_n_0_[0] ));
  FDCE \c_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [10]),
        .Q(\c_r_reg_n_0_[10] ));
  FDCE \c_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [11]),
        .Q(\c_r_reg_n_0_[11] ));
  FDCE \c_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [12]),
        .Q(\c_r_reg_n_0_[12] ));
  FDCE \c_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [13]),
        .Q(\c_r_reg_n_0_[13] ));
  FDCE \c_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [14]),
        .Q(\c_r_reg_n_0_[14] ));
  FDCE \c_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [15]),
        .Q(\c_r_reg_n_0_[15] ));
  FDCE \c_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [16]),
        .Q(\c_r_reg_n_0_[16] ));
  FDCE \c_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [17]),
        .Q(\c_r_reg_n_0_[17] ));
  FDCE \c_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [18]),
        .Q(\c_r_reg_n_0_[18] ));
  FDCE \c_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [19]),
        .Q(\c_r_reg_n_0_[19] ));
  FDCE \c_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [1]),
        .Q(\c_r_reg_n_0_[1] ));
  FDCE \c_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [20]),
        .Q(\c_r_reg_n_0_[20] ));
  FDCE \c_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [21]),
        .Q(\c_r_reg_n_0_[21] ));
  FDCE \c_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [22]),
        .Q(\c_r_reg_n_0_[22] ));
  FDCE \c_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [23]),
        .Q(\c_r_reg_n_0_[23] ));
  FDCE \c_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [24]),
        .Q(\c_r_reg_n_0_[24] ));
  FDCE \c_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [25]),
        .Q(\c_r_reg_n_0_[25] ));
  FDCE \c_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [26]),
        .Q(\c_r_reg_n_0_[26] ));
  FDCE \c_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [27]),
        .Q(\c_r_reg_n_0_[27] ));
  FDCE \c_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [28]),
        .Q(\c_r_reg_n_0_[28] ));
  FDCE \c_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [29]),
        .Q(\c_r_reg_n_0_[29] ));
  FDCE \c_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [2]),
        .Q(\c_r_reg_n_0_[2] ));
  FDCE \c_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [30]),
        .Q(\c_r_reg_n_0_[30] ));
  FDCE \c_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [31]),
        .Q(\c_r_reg_n_0_[31] ));
  FDCE \c_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [3]),
        .Q(\c_r_reg_n_0_[3] ));
  FDCE \c_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [4]),
        .Q(\c_r_reg_n_0_[4] ));
  FDCE \c_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [5]),
        .Q(\c_r_reg_n_0_[5] ));
  FDCE \c_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [6]),
        .Q(\c_r_reg_n_0_[6] ));
  FDCE \c_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [7]),
        .Q(\c_r_reg_n_0_[7] ));
  FDCE \c_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [8]),
        .Q(\c_r_reg_n_0_[8] ));
  FDCE \c_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\c_r_reg[31]_0 [9]),
        .Q(\c_r_reg_n_0_[9] ));
  FDCE \d_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [0]),
        .Q(d_r[0]));
  FDCE \d_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [10]),
        .Q(d_r[10]));
  FDCE \d_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [11]),
        .Q(d_r[11]));
  FDCE \d_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [12]),
        .Q(d_r[12]));
  FDCE \d_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [13]),
        .Q(d_r[13]));
  FDCE \d_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [14]),
        .Q(d_r[14]));
  FDCE \d_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [15]),
        .Q(d_r[15]));
  FDCE \d_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [16]),
        .Q(d_r[16]));
  FDCE \d_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [17]),
        .Q(d_r[17]));
  FDCE \d_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [18]),
        .Q(d_r[18]));
  FDCE \d_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [19]),
        .Q(d_r[19]));
  FDCE \d_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [1]),
        .Q(d_r[1]));
  FDCE \d_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [20]),
        .Q(d_r[20]));
  FDCE \d_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [21]),
        .Q(d_r[21]));
  FDCE \d_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [22]),
        .Q(d_r[22]));
  FDCE \d_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [23]),
        .Q(d_r[23]));
  FDCE \d_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [24]),
        .Q(d_r[24]));
  FDCE \d_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [25]),
        .Q(d_r[25]));
  FDCE \d_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [26]),
        .Q(d_r[26]));
  FDCE \d_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [27]),
        .Q(d_r[27]));
  FDCE \d_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [28]),
        .Q(d_r[28]));
  FDCE \d_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [29]),
        .Q(d_r[29]));
  FDCE \d_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [2]),
        .Q(d_r[2]));
  FDCE \d_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [30]),
        .Q(d_r[30]));
  FDCE \d_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [31]),
        .Q(d_r[31]));
  FDCE \d_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [3]),
        .Q(d_r[3]));
  FDCE \d_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [4]),
        .Q(d_r[4]));
  FDCE \d_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [5]),
        .Q(d_r[5]));
  FDCE \d_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [6]),
        .Q(d_r[6]));
  FDCE \d_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [7]),
        .Q(d_r[7]));
  FDCE \d_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [8]),
        .Q(d_r[8]));
  FDCE \d_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\d_r_reg[31]_0 [9]),
        .Q(d_r[9]));
  FDCE \e_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [0]),
        .Q(\e_r_reg_n_0_[0] ));
  FDCE \e_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [10]),
        .Q(\e_r_reg_n_0_[10] ));
  FDCE \e_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [11]),
        .Q(\e_r_reg_n_0_[11] ));
  FDCE \e_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [12]),
        .Q(\e_r_reg_n_0_[12] ));
  FDCE \e_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [13]),
        .Q(\e_r_reg_n_0_[13] ));
  FDCE \e_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [14]),
        .Q(\e_r_reg_n_0_[14] ));
  FDCE \e_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [15]),
        .Q(\e_r_reg_n_0_[15] ));
  FDCE \e_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [16]),
        .Q(\e_r_reg_n_0_[16] ));
  FDCE \e_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [17]),
        .Q(\e_r_reg_n_0_[17] ));
  FDCE \e_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [18]),
        .Q(\e_r_reg_n_0_[18] ));
  FDCE \e_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [19]),
        .Q(\e_r_reg_n_0_[19] ));
  FDCE \e_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [1]),
        .Q(\e_r_reg_n_0_[1] ));
  FDCE \e_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [20]),
        .Q(\e_r_reg_n_0_[20] ));
  FDCE \e_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [21]),
        .Q(\e_r_reg_n_0_[21] ));
  FDCE \e_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [22]),
        .Q(\e_r_reg_n_0_[22] ));
  FDCE \e_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [23]),
        .Q(\e_r_reg_n_0_[23] ));
  FDCE \e_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [24]),
        .Q(\e_r_reg_n_0_[24] ));
  FDCE \e_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [25]),
        .Q(\e_r_reg_n_0_[25] ));
  FDCE \e_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [26]),
        .Q(\e_r_reg_n_0_[26] ));
  FDCE \e_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [27]),
        .Q(\e_r_reg_n_0_[27] ));
  FDCE \e_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [28]),
        .Q(\e_r_reg_n_0_[28] ));
  FDCE \e_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [29]),
        .Q(\e_r_reg_n_0_[29] ));
  FDCE \e_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [2]),
        .Q(\e_r_reg_n_0_[2] ));
  FDCE \e_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [30]),
        .Q(\e_r_reg_n_0_[30] ));
  FDCE \e_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [31]),
        .Q(\e_r_reg_n_0_[31] ));
  FDCE \e_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [3]),
        .Q(\e_r_reg_n_0_[3] ));
  FDCE \e_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [4]),
        .Q(\e_r_reg_n_0_[4] ));
  FDCE \e_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [5]),
        .Q(\e_r_reg_n_0_[5] ));
  FDCE \e_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [6]),
        .Q(\e_r_reg_n_0_[6] ));
  FDCE \e_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [7]),
        .Q(\e_r_reg_n_0_[7] ));
  FDCE \e_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [8]),
        .Q(\e_r_reg_n_0_[8] ));
  FDCE \e_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\e_r_reg[31]_0 [9]),
        .Q(\e_r_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'h0002)) 
    \f_r[31]_i_1 
       (.I0(\e_r_reg[0]_0 ),
        .I1(state_r[2]),
        .I2(state_r[0]),
        .I3(state_r[1]),
        .O(a_r));
  FDCE \f_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [0]),
        .Q(f_r[0]));
  FDCE \f_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [10]),
        .Q(f_r[10]));
  FDCE \f_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [11]),
        .Q(f_r[11]));
  FDCE \f_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [12]),
        .Q(f_r[12]));
  FDCE \f_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [13]),
        .Q(f_r[13]));
  FDCE \f_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [14]),
        .Q(f_r[14]));
  FDCE \f_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [15]),
        .Q(f_r[15]));
  FDCE \f_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [16]),
        .Q(f_r[16]));
  FDCE \f_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [17]),
        .Q(f_r[17]));
  FDCE \f_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [18]),
        .Q(f_r[18]));
  FDCE \f_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [19]),
        .Q(f_r[19]));
  FDCE \f_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [1]),
        .Q(f_r[1]));
  FDCE \f_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [20]),
        .Q(f_r[20]));
  FDCE \f_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [21]),
        .Q(f_r[21]));
  FDCE \f_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [22]),
        .Q(f_r[22]));
  FDCE \f_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [23]),
        .Q(f_r[23]));
  FDCE \f_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [24]),
        .Q(f_r[24]));
  FDCE \f_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [25]),
        .Q(f_r[25]));
  FDCE \f_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [26]),
        .Q(f_r[26]));
  FDCE \f_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [27]),
        .Q(f_r[27]));
  FDCE \f_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [28]),
        .Q(f_r[28]));
  FDCE \f_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [29]),
        .Q(f_r[29]));
  FDCE \f_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [2]),
        .Q(f_r[2]));
  FDCE \f_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [30]),
        .Q(f_r[30]));
  FDCE \f_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [31]),
        .Q(f_r[31]));
  FDCE \f_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [3]),
        .Q(f_r[3]));
  FDCE \f_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [4]),
        .Q(f_r[4]));
  FDCE \f_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [5]),
        .Q(f_r[5]));
  FDCE \f_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [6]),
        .Q(f_r[6]));
  FDCE \f_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [7]),
        .Q(f_r[7]));
  FDCE \f_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [8]),
        .Q(f_r[8]));
  FDCE \f_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(a_r),
        .CLR(s00_axi_aresetn_0),
        .D(\f_r_reg[31]_0 [9]),
        .Q(f_r[9]));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[0]_i_1 
       (.I0(\sub_r_reg_n_0_[0] ),
        .I1(f_r[0]),
        .O(\h_r[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[10]_i_1 
       (.I0(\sub_r_reg_n_0_[10] ),
        .I1(f_r[10]),
        .O(\h_r[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[11]_i_1 
       (.I0(\sub_r_reg_n_0_[11] ),
        .I1(f_r[11]),
        .O(\h_r[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[12]_i_1 
       (.I0(\sub_r_reg_n_0_[12] ),
        .I1(f_r[12]),
        .O(\h_r[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[13]_i_1 
       (.I0(\sub_r_reg_n_0_[13] ),
        .I1(f_r[13]),
        .O(\h_r[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[14]_i_1 
       (.I0(\sub_r_reg_n_0_[14] ),
        .I1(f_r[14]),
        .O(\h_r[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[15]_i_1 
       (.I0(\sub_r_reg_n_0_[15] ),
        .I1(f_r[15]),
        .O(\h_r[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[16]_i_1 
       (.I0(\sub_r_reg_n_0_[16] ),
        .I1(f_r[16]),
        .O(\h_r[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[17]_i_1 
       (.I0(\sub_r_reg_n_0_[17] ),
        .I1(f_r[17]),
        .O(\h_r[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[18]_i_1 
       (.I0(\sub_r_reg_n_0_[18] ),
        .I1(f_r[18]),
        .O(\h_r[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[19]_i_1 
       (.I0(\sub_r_reg_n_0_[19] ),
        .I1(f_r[19]),
        .O(\h_r[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[1]_i_1 
       (.I0(\sub_r_reg_n_0_[1] ),
        .I1(f_r[1]),
        .O(\h_r[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[20]_i_1 
       (.I0(\sub_r_reg_n_0_[20] ),
        .I1(f_r[20]),
        .O(\h_r[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[21]_i_1 
       (.I0(\sub_r_reg_n_0_[21] ),
        .I1(f_r[21]),
        .O(\h_r[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[22]_i_1 
       (.I0(\sub_r_reg_n_0_[22] ),
        .I1(f_r[22]),
        .O(\h_r[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[23]_i_1 
       (.I0(\sub_r_reg_n_0_[23] ),
        .I1(f_r[23]),
        .O(\h_r[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[24]_i_1 
       (.I0(\sub_r_reg_n_0_[24] ),
        .I1(f_r[24]),
        .O(\h_r[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[25]_i_1 
       (.I0(\sub_r_reg_n_0_[25] ),
        .I1(f_r[25]),
        .O(\h_r[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[26]_i_1 
       (.I0(\sub_r_reg_n_0_[26] ),
        .I1(f_r[26]),
        .O(\h_r[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[27]_i_1 
       (.I0(\sub_r_reg_n_0_[27] ),
        .I1(f_r[27]),
        .O(\h_r[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[28]_i_1 
       (.I0(\sub_r_reg_n_0_[28] ),
        .I1(f_r[28]),
        .O(\h_r[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[29]_i_1 
       (.I0(\sub_r_reg_n_0_[29] ),
        .I1(f_r[29]),
        .O(\h_r[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[2]_i_1 
       (.I0(\sub_r_reg_n_0_[2] ),
        .I1(f_r[2]),
        .O(\h_r[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[30]_i_1 
       (.I0(\sub_r_reg_n_0_[30] ),
        .I1(f_r[30]),
        .O(\h_r[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \h_r[31]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(state_r[2]),
        .I3(state_r[0]),
        .I4(state_r[1]),
        .O(E));
  LUT3 #(
    .INIT(8'h04)) 
    \h_r[31]_i_1__0 
       (.I0(state_r[1]),
        .I1(state_r[2]),
        .I2(state_r[0]),
        .O(h_r));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[31]_i_2 
       (.I0(\sub_r_reg_n_0_[31] ),
        .I1(f_r[31]),
        .O(\h_r[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[3]_i_1 
       (.I0(\sub_r_reg_n_0_[3] ),
        .I1(f_r[3]),
        .O(\h_r[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[4]_i_1 
       (.I0(\sub_r_reg_n_0_[4] ),
        .I1(f_r[4]),
        .O(\h_r[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[5]_i_1 
       (.I0(\sub_r_reg_n_0_[5] ),
        .I1(f_r[5]),
        .O(\h_r[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[6]_i_1 
       (.I0(\sub_r_reg_n_0_[6] ),
        .I1(f_r[6]),
        .O(\h_r[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[7]_i_1 
       (.I0(\sub_r_reg_n_0_[7] ),
        .I1(f_r[7]),
        .O(\h_r[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[8]_i_1 
       (.I0(\sub_r_reg_n_0_[8] ),
        .I1(f_r[8]),
        .O(\h_r[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \h_r[9]_i_1 
       (.I0(\sub_r_reg_n_0_[9] ),
        .I1(f_r[9]),
        .O(\h_r[9]_i_1_n_0 ));
  FDCE \h_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[0]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [0]));
  FDCE \h_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[10]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [10]));
  FDCE \h_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[11]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [11]));
  FDCE \h_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[12]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [12]));
  FDCE \h_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[13]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [13]));
  FDCE \h_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[14]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [14]));
  FDCE \h_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[15]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [15]));
  FDCE \h_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[16]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [16]));
  FDCE \h_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[17]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [17]));
  FDCE \h_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[18]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [18]));
  FDCE \h_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[19]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [19]));
  FDCE \h_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[1]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [1]));
  FDCE \h_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[20]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [20]));
  FDCE \h_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[21]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [21]));
  FDCE \h_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[22]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [22]));
  FDCE \h_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[23]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [23]));
  FDCE \h_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[24]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [24]));
  FDCE \h_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[25]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [25]));
  FDCE \h_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[26]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [26]));
  FDCE \h_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[27]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [27]));
  FDCE \h_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[28]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [28]));
  FDCE \h_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[29]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [29]));
  FDCE \h_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[2]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [2]));
  FDCE \h_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[30]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [30]));
  FDCE \h_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[31]_i_2_n_0 ),
        .Q(\h_r_reg[31]_0 [31]));
  FDCE \h_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[3]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [3]));
  FDCE \h_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[4]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [4]));
  FDCE \h_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[5]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [5]));
  FDCE \h_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[6]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [6]));
  FDCE \h_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[7]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [7]));
  FDCE \h_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[8]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [8]));
  FDCE \h_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(h_r),
        .CLR(s00_axi_aresetn_0),
        .D(\h_r[9]_i_1_n_0 ),
        .Q(\h_r_reg[31]_0 [9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 sub_r0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({sub_r0_carry_n_0,sub_r0_carry_n_1,sub_r0_carry_n_2,sub_r0_carry_n_3,sub_r0_carry_n_4,sub_r0_carry_n_5,sub_r0_carry_n_6,sub_r0_carry_n_7}),
        .DI(xor_r[7:0]),
        .O(sub_r00_out[7:0]),
        .S({sub_r0_carry_i_1_n_0,sub_r0_carry_i_2_n_0,sub_r0_carry_i_3_n_0,sub_r0_carry_i_4_n_0,sub_r0_carry_i_5_n_0,sub_r0_carry_i_6_n_0,sub_r0_carry_i_7_n_0,sub_r0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 sub_r0_carry__0
       (.CI(sub_r0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({sub_r0_carry__0_n_0,sub_r0_carry__0_n_1,sub_r0_carry__0_n_2,sub_r0_carry__0_n_3,sub_r0_carry__0_n_4,sub_r0_carry__0_n_5,sub_r0_carry__0_n_6,sub_r0_carry__0_n_7}),
        .DI(xor_r[15:8]),
        .O(sub_r00_out[15:8]),
        .S({sub_r0_carry__0_i_1_n_0,sub_r0_carry__0_i_2_n_0,sub_r0_carry__0_i_3_n_0,sub_r0_carry__0_i_4_n_0,sub_r0_carry__0_i_5_n_0,sub_r0_carry__0_i_6_n_0,sub_r0_carry__0_i_7_n_0,sub_r0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__0_i_1
       (.I0(xor_r[15]),
        .I1(\e_r_reg_n_0_[15] ),
        .O(sub_r0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__0_i_2
       (.I0(xor_r[14]),
        .I1(\e_r_reg_n_0_[14] ),
        .O(sub_r0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__0_i_3
       (.I0(xor_r[13]),
        .I1(\e_r_reg_n_0_[13] ),
        .O(sub_r0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__0_i_4
       (.I0(xor_r[12]),
        .I1(\e_r_reg_n_0_[12] ),
        .O(sub_r0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__0_i_5
       (.I0(xor_r[11]),
        .I1(\e_r_reg_n_0_[11] ),
        .O(sub_r0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__0_i_6
       (.I0(xor_r[10]),
        .I1(\e_r_reg_n_0_[10] ),
        .O(sub_r0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__0_i_7
       (.I0(xor_r[9]),
        .I1(\e_r_reg_n_0_[9] ),
        .O(sub_r0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__0_i_8
       (.I0(xor_r[8]),
        .I1(\e_r_reg_n_0_[8] ),
        .O(sub_r0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 sub_r0_carry__1
       (.CI(sub_r0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({sub_r0_carry__1_n_0,sub_r0_carry__1_n_1,sub_r0_carry__1_n_2,sub_r0_carry__1_n_3,sub_r0_carry__1_n_4,sub_r0_carry__1_n_5,sub_r0_carry__1_n_6,sub_r0_carry__1_n_7}),
        .DI(xor_r[23:16]),
        .O(sub_r00_out[23:16]),
        .S({sub_r0_carry__1_i_1_n_0,sub_r0_carry__1_i_2_n_0,sub_r0_carry__1_i_3_n_0,sub_r0_carry__1_i_4_n_0,sub_r0_carry__1_i_5_n_0,sub_r0_carry__1_i_6_n_0,sub_r0_carry__1_i_7_n_0,sub_r0_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__1_i_1
       (.I0(xor_r[23]),
        .I1(\e_r_reg_n_0_[23] ),
        .O(sub_r0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__1_i_2
       (.I0(xor_r[22]),
        .I1(\e_r_reg_n_0_[22] ),
        .O(sub_r0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__1_i_3
       (.I0(xor_r[21]),
        .I1(\e_r_reg_n_0_[21] ),
        .O(sub_r0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__1_i_4
       (.I0(xor_r[20]),
        .I1(\e_r_reg_n_0_[20] ),
        .O(sub_r0_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__1_i_5
       (.I0(xor_r[19]),
        .I1(\e_r_reg_n_0_[19] ),
        .O(sub_r0_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__1_i_6
       (.I0(xor_r[18]),
        .I1(\e_r_reg_n_0_[18] ),
        .O(sub_r0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__1_i_7
       (.I0(xor_r[17]),
        .I1(\e_r_reg_n_0_[17] ),
        .O(sub_r0_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__1_i_8
       (.I0(xor_r[16]),
        .I1(\e_r_reg_n_0_[16] ),
        .O(sub_r0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 sub_r0_carry__2
       (.CI(sub_r0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_sub_r0_carry__2_CO_UNCONNECTED[7],sub_r0_carry__2_n_1,sub_r0_carry__2_n_2,sub_r0_carry__2_n_3,sub_r0_carry__2_n_4,sub_r0_carry__2_n_5,sub_r0_carry__2_n_6,sub_r0_carry__2_n_7}),
        .DI({1'b0,xor_r[30:24]}),
        .O(sub_r00_out[31:24]),
        .S({sub_r0_carry__2_i_1_n_0,sub_r0_carry__2_i_2_n_0,sub_r0_carry__2_i_3_n_0,sub_r0_carry__2_i_4_n_0,sub_r0_carry__2_i_5_n_0,sub_r0_carry__2_i_6_n_0,sub_r0_carry__2_i_7_n_0,sub_r0_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__2_i_1
       (.I0(xor_r[31]),
        .I1(\e_r_reg_n_0_[31] ),
        .O(sub_r0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__2_i_2
       (.I0(xor_r[30]),
        .I1(\e_r_reg_n_0_[30] ),
        .O(sub_r0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__2_i_3
       (.I0(xor_r[29]),
        .I1(\e_r_reg_n_0_[29] ),
        .O(sub_r0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__2_i_4
       (.I0(xor_r[28]),
        .I1(\e_r_reg_n_0_[28] ),
        .O(sub_r0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__2_i_5
       (.I0(xor_r[27]),
        .I1(\e_r_reg_n_0_[27] ),
        .O(sub_r0_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__2_i_6
       (.I0(xor_r[26]),
        .I1(\e_r_reg_n_0_[26] ),
        .O(sub_r0_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__2_i_7
       (.I0(xor_r[25]),
        .I1(\e_r_reg_n_0_[25] ),
        .O(sub_r0_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry__2_i_8
       (.I0(xor_r[24]),
        .I1(\e_r_reg_n_0_[24] ),
        .O(sub_r0_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry_i_1
       (.I0(xor_r[7]),
        .I1(\e_r_reg_n_0_[7] ),
        .O(sub_r0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry_i_2
       (.I0(xor_r[6]),
        .I1(\e_r_reg_n_0_[6] ),
        .O(sub_r0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry_i_3
       (.I0(xor_r[5]),
        .I1(\e_r_reg_n_0_[5] ),
        .O(sub_r0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry_i_4
       (.I0(xor_r[4]),
        .I1(\e_r_reg_n_0_[4] ),
        .O(sub_r0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry_i_5
       (.I0(xor_r[3]),
        .I1(\e_r_reg_n_0_[3] ),
        .O(sub_r0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry_i_6
       (.I0(xor_r[2]),
        .I1(\e_r_reg_n_0_[2] ),
        .O(sub_r0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry_i_7
       (.I0(xor_r[1]),
        .I1(\e_r_reg_n_0_[1] ),
        .O(sub_r0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub_r0_carry_i_8
       (.I0(xor_r[0]),
        .I1(\e_r_reg_n_0_[0] ),
        .O(sub_r0_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    \sub_r[31]_i_1 
       (.I0(state_r[1]),
        .I1(state_r[0]),
        .I2(state_r[2]),
        .O(sub_r));
  FDCE \sub_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[0]),
        .Q(\sub_r_reg_n_0_[0] ));
  FDCE \sub_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[10]),
        .Q(\sub_r_reg_n_0_[10] ));
  FDCE \sub_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[11]),
        .Q(\sub_r_reg_n_0_[11] ));
  FDCE \sub_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[12]),
        .Q(\sub_r_reg_n_0_[12] ));
  FDCE \sub_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[13]),
        .Q(\sub_r_reg_n_0_[13] ));
  FDCE \sub_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[14]),
        .Q(\sub_r_reg_n_0_[14] ));
  FDCE \sub_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[15]),
        .Q(\sub_r_reg_n_0_[15] ));
  FDCE \sub_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[16]),
        .Q(\sub_r_reg_n_0_[16] ));
  FDCE \sub_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[17]),
        .Q(\sub_r_reg_n_0_[17] ));
  FDCE \sub_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[18]),
        .Q(\sub_r_reg_n_0_[18] ));
  FDCE \sub_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[19]),
        .Q(\sub_r_reg_n_0_[19] ));
  FDCE \sub_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[1]),
        .Q(\sub_r_reg_n_0_[1] ));
  FDCE \sub_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[20]),
        .Q(\sub_r_reg_n_0_[20] ));
  FDCE \sub_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[21]),
        .Q(\sub_r_reg_n_0_[21] ));
  FDCE \sub_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[22]),
        .Q(\sub_r_reg_n_0_[22] ));
  FDCE \sub_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[23]),
        .Q(\sub_r_reg_n_0_[23] ));
  FDCE \sub_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[24]),
        .Q(\sub_r_reg_n_0_[24] ));
  FDCE \sub_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[25]),
        .Q(\sub_r_reg_n_0_[25] ));
  FDCE \sub_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[26]),
        .Q(\sub_r_reg_n_0_[26] ));
  FDCE \sub_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[27]),
        .Q(\sub_r_reg_n_0_[27] ));
  FDCE \sub_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[28]),
        .Q(\sub_r_reg_n_0_[28] ));
  FDCE \sub_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[29]),
        .Q(\sub_r_reg_n_0_[29] ));
  FDCE \sub_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[2]),
        .Q(\sub_r_reg_n_0_[2] ));
  FDCE \sub_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[30]),
        .Q(\sub_r_reg_n_0_[30] ));
  FDCE \sub_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[31]),
        .Q(\sub_r_reg_n_0_[31] ));
  FDCE \sub_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[3]),
        .Q(\sub_r_reg_n_0_[3] ));
  FDCE \sub_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[4]),
        .Q(\sub_r_reg_n_0_[4] ));
  FDCE \sub_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[5]),
        .Q(\sub_r_reg_n_0_[5] ));
  FDCE \sub_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[6]),
        .Q(\sub_r_reg_n_0_[6] ));
  FDCE \sub_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[7]),
        .Q(\sub_r_reg_n_0_[7] ));
  FDCE \sub_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[8]),
        .Q(\sub_r_reg_n_0_[8] ));
  FDCE \sub_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(sub_r),
        .CLR(s00_axi_aresetn_0),
        .D(sub_r00_out[9]),
        .Q(\sub_r_reg_n_0_[9] ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[15]_i_10 
       (.I0(\b_r_reg_n_0_[15] ),
        .I1(\c_r_reg_n_0_[15] ),
        .I2(\a_r_reg_n_0_[15] ),
        .I3(\sum_r[15]_i_2_n_0 ),
        .O(\sum_r[15]_i_10_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[15]_i_11 
       (.I0(\b_r_reg_n_0_[14] ),
        .I1(\c_r_reg_n_0_[14] ),
        .I2(\a_r_reg_n_0_[14] ),
        .I3(\sum_r[15]_i_3_n_0 ),
        .O(\sum_r[15]_i_11_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[15]_i_12 
       (.I0(\b_r_reg_n_0_[13] ),
        .I1(\c_r_reg_n_0_[13] ),
        .I2(\a_r_reg_n_0_[13] ),
        .I3(\sum_r[15]_i_4_n_0 ),
        .O(\sum_r[15]_i_12_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[15]_i_13 
       (.I0(\b_r_reg_n_0_[12] ),
        .I1(\c_r_reg_n_0_[12] ),
        .I2(\a_r_reg_n_0_[12] ),
        .I3(\sum_r[15]_i_5_n_0 ),
        .O(\sum_r[15]_i_13_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[15]_i_14 
       (.I0(\b_r_reg_n_0_[11] ),
        .I1(\c_r_reg_n_0_[11] ),
        .I2(\a_r_reg_n_0_[11] ),
        .I3(\sum_r[15]_i_6_n_0 ),
        .O(\sum_r[15]_i_14_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[15]_i_15 
       (.I0(\b_r_reg_n_0_[10] ),
        .I1(\c_r_reg_n_0_[10] ),
        .I2(\a_r_reg_n_0_[10] ),
        .I3(\sum_r[15]_i_7_n_0 ),
        .O(\sum_r[15]_i_15_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[15]_i_16 
       (.I0(\b_r_reg_n_0_[9] ),
        .I1(\c_r_reg_n_0_[9] ),
        .I2(\a_r_reg_n_0_[9] ),
        .I3(\sum_r[15]_i_8_n_0 ),
        .O(\sum_r[15]_i_16_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[15]_i_17 
       (.I0(\b_r_reg_n_0_[8] ),
        .I1(\c_r_reg_n_0_[8] ),
        .I2(\a_r_reg_n_0_[8] ),
        .I3(\sum_r[15]_i_9_n_0 ),
        .O(\sum_r[15]_i_17_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[15]_i_2 
       (.I0(\b_r_reg_n_0_[14] ),
        .I1(\c_r_reg_n_0_[14] ),
        .I2(\a_r_reg_n_0_[14] ),
        .O(\sum_r[15]_i_2_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[15]_i_3 
       (.I0(\b_r_reg_n_0_[13] ),
        .I1(\c_r_reg_n_0_[13] ),
        .I2(\a_r_reg_n_0_[13] ),
        .O(\sum_r[15]_i_3_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[15]_i_4 
       (.I0(\b_r_reg_n_0_[12] ),
        .I1(\c_r_reg_n_0_[12] ),
        .I2(\a_r_reg_n_0_[12] ),
        .O(\sum_r[15]_i_4_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[15]_i_5 
       (.I0(\b_r_reg_n_0_[11] ),
        .I1(\c_r_reg_n_0_[11] ),
        .I2(\a_r_reg_n_0_[11] ),
        .O(\sum_r[15]_i_5_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[15]_i_6 
       (.I0(\b_r_reg_n_0_[10] ),
        .I1(\c_r_reg_n_0_[10] ),
        .I2(\a_r_reg_n_0_[10] ),
        .O(\sum_r[15]_i_6_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[15]_i_7 
       (.I0(\b_r_reg_n_0_[9] ),
        .I1(\c_r_reg_n_0_[9] ),
        .I2(\a_r_reg_n_0_[9] ),
        .O(\sum_r[15]_i_7_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[15]_i_8 
       (.I0(\b_r_reg_n_0_[8] ),
        .I1(\c_r_reg_n_0_[8] ),
        .I2(\a_r_reg_n_0_[8] ),
        .O(\sum_r[15]_i_8_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[15]_i_9 
       (.I0(\b_r_reg_n_0_[7] ),
        .I1(\c_r_reg_n_0_[7] ),
        .I2(\a_r_reg_n_0_[7] ),
        .O(\sum_r[15]_i_9_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[23]_i_10 
       (.I0(\b_r_reg_n_0_[23] ),
        .I1(\c_r_reg_n_0_[23] ),
        .I2(\a_r_reg_n_0_[23] ),
        .I3(\sum_r[23]_i_2_n_0 ),
        .O(\sum_r[23]_i_10_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[23]_i_11 
       (.I0(\b_r_reg_n_0_[22] ),
        .I1(\c_r_reg_n_0_[22] ),
        .I2(\a_r_reg_n_0_[22] ),
        .I3(\sum_r[23]_i_3_n_0 ),
        .O(\sum_r[23]_i_11_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[23]_i_12 
       (.I0(\b_r_reg_n_0_[21] ),
        .I1(\c_r_reg_n_0_[21] ),
        .I2(\a_r_reg_n_0_[21] ),
        .I3(\sum_r[23]_i_4_n_0 ),
        .O(\sum_r[23]_i_12_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[23]_i_13 
       (.I0(\b_r_reg_n_0_[20] ),
        .I1(\c_r_reg_n_0_[20] ),
        .I2(\a_r_reg_n_0_[20] ),
        .I3(\sum_r[23]_i_5_n_0 ),
        .O(\sum_r[23]_i_13_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[23]_i_14 
       (.I0(\b_r_reg_n_0_[19] ),
        .I1(\c_r_reg_n_0_[19] ),
        .I2(\a_r_reg_n_0_[19] ),
        .I3(\sum_r[23]_i_6_n_0 ),
        .O(\sum_r[23]_i_14_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[23]_i_15 
       (.I0(\b_r_reg_n_0_[18] ),
        .I1(\c_r_reg_n_0_[18] ),
        .I2(\a_r_reg_n_0_[18] ),
        .I3(\sum_r[23]_i_7_n_0 ),
        .O(\sum_r[23]_i_15_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[23]_i_16 
       (.I0(\b_r_reg_n_0_[17] ),
        .I1(\c_r_reg_n_0_[17] ),
        .I2(\a_r_reg_n_0_[17] ),
        .I3(\sum_r[23]_i_8_n_0 ),
        .O(\sum_r[23]_i_16_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[23]_i_17 
       (.I0(\b_r_reg_n_0_[16] ),
        .I1(\c_r_reg_n_0_[16] ),
        .I2(\a_r_reg_n_0_[16] ),
        .I3(\sum_r[23]_i_9_n_0 ),
        .O(\sum_r[23]_i_17_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[23]_i_2 
       (.I0(\b_r_reg_n_0_[22] ),
        .I1(\c_r_reg_n_0_[22] ),
        .I2(\a_r_reg_n_0_[22] ),
        .O(\sum_r[23]_i_2_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[23]_i_3 
       (.I0(\b_r_reg_n_0_[21] ),
        .I1(\c_r_reg_n_0_[21] ),
        .I2(\a_r_reg_n_0_[21] ),
        .O(\sum_r[23]_i_3_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[23]_i_4 
       (.I0(\b_r_reg_n_0_[20] ),
        .I1(\c_r_reg_n_0_[20] ),
        .I2(\a_r_reg_n_0_[20] ),
        .O(\sum_r[23]_i_4_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[23]_i_5 
       (.I0(\b_r_reg_n_0_[19] ),
        .I1(\c_r_reg_n_0_[19] ),
        .I2(\a_r_reg_n_0_[19] ),
        .O(\sum_r[23]_i_5_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[23]_i_6 
       (.I0(\b_r_reg_n_0_[18] ),
        .I1(\c_r_reg_n_0_[18] ),
        .I2(\a_r_reg_n_0_[18] ),
        .O(\sum_r[23]_i_6_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[23]_i_7 
       (.I0(\b_r_reg_n_0_[17] ),
        .I1(\c_r_reg_n_0_[17] ),
        .I2(\a_r_reg_n_0_[17] ),
        .O(\sum_r[23]_i_7_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[23]_i_8 
       (.I0(\b_r_reg_n_0_[16] ),
        .I1(\c_r_reg_n_0_[16] ),
        .I2(\a_r_reg_n_0_[16] ),
        .O(\sum_r[23]_i_8_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[23]_i_9 
       (.I0(\b_r_reg_n_0_[15] ),
        .I1(\c_r_reg_n_0_[15] ),
        .I2(\a_r_reg_n_0_[15] ),
        .O(\sum_r[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \sum_r[31]_i_1 
       (.I0(state_r[1]),
        .I1(state_r[0]),
        .I2(state_r[2]),
        .O(sum_r));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \sum_r[31]_i_10 
       (.I0(\a_r_reg_n_0_[30] ),
        .I1(\c_r_reg_n_0_[30] ),
        .I2(\b_r_reg_n_0_[30] ),
        .I3(\c_r_reg_n_0_[31] ),
        .I4(\b_r_reg_n_0_[31] ),
        .I5(\a_r_reg_n_0_[31] ),
        .O(\sum_r[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[31]_i_11 
       (.I0(\sum_r[31]_i_3_n_0 ),
        .I1(\c_r_reg_n_0_[30] ),
        .I2(\b_r_reg_n_0_[30] ),
        .I3(\a_r_reg_n_0_[30] ),
        .O(\sum_r[31]_i_11_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[31]_i_12 
       (.I0(\b_r_reg_n_0_[29] ),
        .I1(\c_r_reg_n_0_[29] ),
        .I2(\a_r_reg_n_0_[29] ),
        .I3(\sum_r[31]_i_4_n_0 ),
        .O(\sum_r[31]_i_12_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[31]_i_13 
       (.I0(\b_r_reg_n_0_[28] ),
        .I1(\c_r_reg_n_0_[28] ),
        .I2(\a_r_reg_n_0_[28] ),
        .I3(\sum_r[31]_i_5_n_0 ),
        .O(\sum_r[31]_i_13_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[31]_i_14 
       (.I0(\b_r_reg_n_0_[27] ),
        .I1(\c_r_reg_n_0_[27] ),
        .I2(\a_r_reg_n_0_[27] ),
        .I3(\sum_r[31]_i_6_n_0 ),
        .O(\sum_r[31]_i_14_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[31]_i_15 
       (.I0(\b_r_reg_n_0_[26] ),
        .I1(\c_r_reg_n_0_[26] ),
        .I2(\a_r_reg_n_0_[26] ),
        .I3(\sum_r[31]_i_7_n_0 ),
        .O(\sum_r[31]_i_15_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[31]_i_16 
       (.I0(\b_r_reg_n_0_[25] ),
        .I1(\c_r_reg_n_0_[25] ),
        .I2(\a_r_reg_n_0_[25] ),
        .I3(\sum_r[31]_i_8_n_0 ),
        .O(\sum_r[31]_i_16_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[31]_i_17 
       (.I0(\b_r_reg_n_0_[24] ),
        .I1(\c_r_reg_n_0_[24] ),
        .I2(\a_r_reg_n_0_[24] ),
        .I3(\sum_r[31]_i_9_n_0 ),
        .O(\sum_r[31]_i_17_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[31]_i_3 
       (.I0(\b_r_reg_n_0_[29] ),
        .I1(\c_r_reg_n_0_[29] ),
        .I2(\a_r_reg_n_0_[29] ),
        .O(\sum_r[31]_i_3_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[31]_i_4 
       (.I0(\b_r_reg_n_0_[28] ),
        .I1(\c_r_reg_n_0_[28] ),
        .I2(\a_r_reg_n_0_[28] ),
        .O(\sum_r[31]_i_4_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[31]_i_5 
       (.I0(\b_r_reg_n_0_[27] ),
        .I1(\c_r_reg_n_0_[27] ),
        .I2(\a_r_reg_n_0_[27] ),
        .O(\sum_r[31]_i_5_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[31]_i_6 
       (.I0(\b_r_reg_n_0_[26] ),
        .I1(\c_r_reg_n_0_[26] ),
        .I2(\a_r_reg_n_0_[26] ),
        .O(\sum_r[31]_i_6_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[31]_i_7 
       (.I0(\b_r_reg_n_0_[25] ),
        .I1(\c_r_reg_n_0_[25] ),
        .I2(\a_r_reg_n_0_[25] ),
        .O(\sum_r[31]_i_7_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[31]_i_8 
       (.I0(\b_r_reg_n_0_[24] ),
        .I1(\c_r_reg_n_0_[24] ),
        .I2(\a_r_reg_n_0_[24] ),
        .O(\sum_r[31]_i_8_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[31]_i_9 
       (.I0(\b_r_reg_n_0_[23] ),
        .I1(\c_r_reg_n_0_[23] ),
        .I2(\a_r_reg_n_0_[23] ),
        .O(\sum_r[31]_i_9_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[7]_i_10 
       (.I0(\b_r_reg_n_0_[6] ),
        .I1(\c_r_reg_n_0_[6] ),
        .I2(\a_r_reg_n_0_[6] ),
        .I3(\sum_r[7]_i_3_n_0 ),
        .O(\sum_r[7]_i_10_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[7]_i_11 
       (.I0(\b_r_reg_n_0_[5] ),
        .I1(\c_r_reg_n_0_[5] ),
        .I2(\a_r_reg_n_0_[5] ),
        .I3(\sum_r[7]_i_4_n_0 ),
        .O(\sum_r[7]_i_11_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[7]_i_12 
       (.I0(\b_r_reg_n_0_[4] ),
        .I1(\c_r_reg_n_0_[4] ),
        .I2(\a_r_reg_n_0_[4] ),
        .I3(\sum_r[7]_i_5_n_0 ),
        .O(\sum_r[7]_i_12_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[7]_i_13 
       (.I0(\b_r_reg_n_0_[3] ),
        .I1(\c_r_reg_n_0_[3] ),
        .I2(\a_r_reg_n_0_[3] ),
        .I3(\sum_r[7]_i_6_n_0 ),
        .O(\sum_r[7]_i_13_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[7]_i_14 
       (.I0(\b_r_reg_n_0_[2] ),
        .I1(\c_r_reg_n_0_[2] ),
        .I2(\a_r_reg_n_0_[2] ),
        .I3(\sum_r[7]_i_7_n_0 ),
        .O(\sum_r[7]_i_14_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[7]_i_15 
       (.I0(\b_r_reg_n_0_[1] ),
        .I1(\c_r_reg_n_0_[1] ),
        .I2(\a_r_reg_n_0_[1] ),
        .I3(\sum_r[7]_i_8_n_0 ),
        .O(\sum_r[7]_i_15_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sum_r[7]_i_16 
       (.I0(\b_r_reg_n_0_[0] ),
        .I1(\c_r_reg_n_0_[0] ),
        .I2(\a_r_reg_n_0_[0] ),
        .O(\sum_r[7]_i_16_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[7]_i_2 
       (.I0(\b_r_reg_n_0_[6] ),
        .I1(\c_r_reg_n_0_[6] ),
        .I2(\a_r_reg_n_0_[6] ),
        .O(\sum_r[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[7]_i_3 
       (.I0(\b_r_reg_n_0_[5] ),
        .I1(\c_r_reg_n_0_[5] ),
        .I2(\a_r_reg_n_0_[5] ),
        .O(\sum_r[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[7]_i_4 
       (.I0(\b_r_reg_n_0_[4] ),
        .I1(\c_r_reg_n_0_[4] ),
        .I2(\a_r_reg_n_0_[4] ),
        .O(\sum_r[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[7]_i_5 
       (.I0(\b_r_reg_n_0_[3] ),
        .I1(\c_r_reg_n_0_[3] ),
        .I2(\a_r_reg_n_0_[3] ),
        .O(\sum_r[7]_i_5_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[7]_i_6 
       (.I0(\b_r_reg_n_0_[2] ),
        .I1(\c_r_reg_n_0_[2] ),
        .I2(\a_r_reg_n_0_[2] ),
        .O(\sum_r[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[7]_i_7 
       (.I0(\b_r_reg_n_0_[1] ),
        .I1(\c_r_reg_n_0_[1] ),
        .I2(\a_r_reg_n_0_[1] ),
        .O(\sum_r[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sum_r[7]_i_8 
       (.I0(\b_r_reg_n_0_[0] ),
        .I1(\c_r_reg_n_0_[0] ),
        .I2(\a_r_reg_n_0_[0] ),
        .O(\sum_r[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sum_r[7]_i_9 
       (.I0(\b_r_reg_n_0_[7] ),
        .I1(\c_r_reg_n_0_[7] ),
        .I2(\a_r_reg_n_0_[7] ),
        .I3(\sum_r[7]_i_2_n_0 ),
        .O(\sum_r[7]_i_9_n_0 ));
  FDCE \sum_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[0]),
        .Q(\sum_r_reg_n_0_[0] ));
  FDCE \sum_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[10]),
        .Q(\sum_r_reg_n_0_[10] ));
  FDCE \sum_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[11]),
        .Q(\sum_r_reg_n_0_[11] ));
  FDCE \sum_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[12]),
        .Q(\sum_r_reg_n_0_[12] ));
  FDCE \sum_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[13]),
        .Q(\sum_r_reg_n_0_[13] ));
  FDCE \sum_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[14]),
        .Q(\sum_r_reg_n_0_[14] ));
  FDCE \sum_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[15]),
        .Q(\sum_r_reg_n_0_[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \sum_r_reg[15]_i_1 
       (.CI(\sum_r_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sum_r_reg[15]_i_1_n_0 ,\sum_r_reg[15]_i_1_n_1 ,\sum_r_reg[15]_i_1_n_2 ,\sum_r_reg[15]_i_1_n_3 ,\sum_r_reg[15]_i_1_n_4 ,\sum_r_reg[15]_i_1_n_5 ,\sum_r_reg[15]_i_1_n_6 ,\sum_r_reg[15]_i_1_n_7 }),
        .DI({\sum_r[15]_i_2_n_0 ,\sum_r[15]_i_3_n_0 ,\sum_r[15]_i_4_n_0 ,\sum_r[15]_i_5_n_0 ,\sum_r[15]_i_6_n_0 ,\sum_r[15]_i_7_n_0 ,\sum_r[15]_i_8_n_0 ,\sum_r[15]_i_9_n_0 }),
        .O(sum_r0[15:8]),
        .S({\sum_r[15]_i_10_n_0 ,\sum_r[15]_i_11_n_0 ,\sum_r[15]_i_12_n_0 ,\sum_r[15]_i_13_n_0 ,\sum_r[15]_i_14_n_0 ,\sum_r[15]_i_15_n_0 ,\sum_r[15]_i_16_n_0 ,\sum_r[15]_i_17_n_0 }));
  FDCE \sum_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[16]),
        .Q(\sum_r_reg_n_0_[16] ));
  FDCE \sum_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[17]),
        .Q(\sum_r_reg_n_0_[17] ));
  FDCE \sum_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[18]),
        .Q(\sum_r_reg_n_0_[18] ));
  FDCE \sum_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[19]),
        .Q(\sum_r_reg_n_0_[19] ));
  FDCE \sum_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[1]),
        .Q(\sum_r_reg_n_0_[1] ));
  FDCE \sum_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[20]),
        .Q(\sum_r_reg_n_0_[20] ));
  FDCE \sum_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[21]),
        .Q(\sum_r_reg_n_0_[21] ));
  FDCE \sum_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[22]),
        .Q(\sum_r_reg_n_0_[22] ));
  FDCE \sum_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[23]),
        .Q(\sum_r_reg_n_0_[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \sum_r_reg[23]_i_1 
       (.CI(\sum_r_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sum_r_reg[23]_i_1_n_0 ,\sum_r_reg[23]_i_1_n_1 ,\sum_r_reg[23]_i_1_n_2 ,\sum_r_reg[23]_i_1_n_3 ,\sum_r_reg[23]_i_1_n_4 ,\sum_r_reg[23]_i_1_n_5 ,\sum_r_reg[23]_i_1_n_6 ,\sum_r_reg[23]_i_1_n_7 }),
        .DI({\sum_r[23]_i_2_n_0 ,\sum_r[23]_i_3_n_0 ,\sum_r[23]_i_4_n_0 ,\sum_r[23]_i_5_n_0 ,\sum_r[23]_i_6_n_0 ,\sum_r[23]_i_7_n_0 ,\sum_r[23]_i_8_n_0 ,\sum_r[23]_i_9_n_0 }),
        .O(sum_r0[23:16]),
        .S({\sum_r[23]_i_10_n_0 ,\sum_r[23]_i_11_n_0 ,\sum_r[23]_i_12_n_0 ,\sum_r[23]_i_13_n_0 ,\sum_r[23]_i_14_n_0 ,\sum_r[23]_i_15_n_0 ,\sum_r[23]_i_16_n_0 ,\sum_r[23]_i_17_n_0 }));
  FDCE \sum_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[24]),
        .Q(\sum_r_reg_n_0_[24] ));
  FDCE \sum_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[25]),
        .Q(\sum_r_reg_n_0_[25] ));
  FDCE \sum_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[26]),
        .Q(\sum_r_reg_n_0_[26] ));
  FDCE \sum_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[27]),
        .Q(\sum_r_reg_n_0_[27] ));
  FDCE \sum_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[28]),
        .Q(\sum_r_reg_n_0_[28] ));
  FDCE \sum_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[29]),
        .Q(\sum_r_reg_n_0_[29] ));
  FDCE \sum_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[2]),
        .Q(\sum_r_reg_n_0_[2] ));
  FDCE \sum_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[30]),
        .Q(\sum_r_reg_n_0_[30] ));
  FDCE \sum_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[31]),
        .Q(\sum_r_reg_n_0_[31] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \sum_r_reg[31]_i_2 
       (.CI(\sum_r_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sum_r_reg[31]_i_2_CO_UNCONNECTED [7],\sum_r_reg[31]_i_2_n_1 ,\sum_r_reg[31]_i_2_n_2 ,\sum_r_reg[31]_i_2_n_3 ,\sum_r_reg[31]_i_2_n_4 ,\sum_r_reg[31]_i_2_n_5 ,\sum_r_reg[31]_i_2_n_6 ,\sum_r_reg[31]_i_2_n_7 }),
        .DI({1'b0,\sum_r[31]_i_3_n_0 ,\sum_r[31]_i_4_n_0 ,\sum_r[31]_i_5_n_0 ,\sum_r[31]_i_6_n_0 ,\sum_r[31]_i_7_n_0 ,\sum_r[31]_i_8_n_0 ,\sum_r[31]_i_9_n_0 }),
        .O(sum_r0[31:24]),
        .S({\sum_r[31]_i_10_n_0 ,\sum_r[31]_i_11_n_0 ,\sum_r[31]_i_12_n_0 ,\sum_r[31]_i_13_n_0 ,\sum_r[31]_i_14_n_0 ,\sum_r[31]_i_15_n_0 ,\sum_r[31]_i_16_n_0 ,\sum_r[31]_i_17_n_0 }));
  FDCE \sum_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[3]),
        .Q(\sum_r_reg_n_0_[3] ));
  FDCE \sum_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[4]),
        .Q(\sum_r_reg_n_0_[4] ));
  FDCE \sum_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[5]),
        .Q(\sum_r_reg_n_0_[5] ));
  FDCE \sum_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[6]),
        .Q(\sum_r_reg_n_0_[6] ));
  FDCE \sum_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[7]),
        .Q(\sum_r_reg_n_0_[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \sum_r_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\sum_r_reg[7]_i_1_n_0 ,\sum_r_reg[7]_i_1_n_1 ,\sum_r_reg[7]_i_1_n_2 ,\sum_r_reg[7]_i_1_n_3 ,\sum_r_reg[7]_i_1_n_4 ,\sum_r_reg[7]_i_1_n_5 ,\sum_r_reg[7]_i_1_n_6 ,\sum_r_reg[7]_i_1_n_7 }),
        .DI({\sum_r[7]_i_2_n_0 ,\sum_r[7]_i_3_n_0 ,\sum_r[7]_i_4_n_0 ,\sum_r[7]_i_5_n_0 ,\sum_r[7]_i_6_n_0 ,\sum_r[7]_i_7_n_0 ,\sum_r[7]_i_8_n_0 ,1'b0}),
        .O(sum_r0[7:0]),
        .S({\sum_r[7]_i_9_n_0 ,\sum_r[7]_i_10_n_0 ,\sum_r[7]_i_11_n_0 ,\sum_r[7]_i_12_n_0 ,\sum_r[7]_i_13_n_0 ,\sum_r[7]_i_14_n_0 ,\sum_r[7]_i_15_n_0 ,\sum_r[7]_i_16_n_0 }));
  FDCE \sum_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[8]),
        .Q(\sum_r_reg_n_0_[8] ));
  FDCE \sum_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(sum_r),
        .CLR(s00_axi_aresetn_0),
        .D(sum_r0[9]),
        .Q(\sum_r_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[0]_i_1 
       (.I0(d_r[0]),
        .I1(\sum_r_reg_n_0_[0] ),
        .O(\xor_r[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[10]_i_1 
       (.I0(d_r[10]),
        .I1(\sum_r_reg_n_0_[10] ),
        .O(\xor_r[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[11]_i_1 
       (.I0(d_r[11]),
        .I1(\sum_r_reg_n_0_[11] ),
        .O(\xor_r[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[12]_i_1 
       (.I0(d_r[12]),
        .I1(\sum_r_reg_n_0_[12] ),
        .O(\xor_r[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[13]_i_1 
       (.I0(d_r[13]),
        .I1(\sum_r_reg_n_0_[13] ),
        .O(\xor_r[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[14]_i_1 
       (.I0(d_r[14]),
        .I1(\sum_r_reg_n_0_[14] ),
        .O(\xor_r[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[15]_i_1 
       (.I0(d_r[15]),
        .I1(\sum_r_reg_n_0_[15] ),
        .O(\xor_r[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[16]_i_1 
       (.I0(d_r[16]),
        .I1(\sum_r_reg_n_0_[16] ),
        .O(\xor_r[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[17]_i_1 
       (.I0(d_r[17]),
        .I1(\sum_r_reg_n_0_[17] ),
        .O(\xor_r[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[18]_i_1 
       (.I0(d_r[18]),
        .I1(\sum_r_reg_n_0_[18] ),
        .O(\xor_r[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[19]_i_1 
       (.I0(d_r[19]),
        .I1(\sum_r_reg_n_0_[19] ),
        .O(\xor_r[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[1]_i_1 
       (.I0(d_r[1]),
        .I1(\sum_r_reg_n_0_[1] ),
        .O(\xor_r[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[20]_i_1 
       (.I0(d_r[20]),
        .I1(\sum_r_reg_n_0_[20] ),
        .O(\xor_r[20]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[21]_i_1 
       (.I0(d_r[21]),
        .I1(\sum_r_reg_n_0_[21] ),
        .O(\xor_r[21]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[22]_i_1 
       (.I0(d_r[22]),
        .I1(\sum_r_reg_n_0_[22] ),
        .O(\xor_r[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[23]_i_1 
       (.I0(d_r[23]),
        .I1(\sum_r_reg_n_0_[23] ),
        .O(\xor_r[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[24]_i_1 
       (.I0(d_r[24]),
        .I1(\sum_r_reg_n_0_[24] ),
        .O(\xor_r[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[25]_i_1 
       (.I0(d_r[25]),
        .I1(\sum_r_reg_n_0_[25] ),
        .O(\xor_r[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[26]_i_1 
       (.I0(d_r[26]),
        .I1(\sum_r_reg_n_0_[26] ),
        .O(\xor_r[26]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[27]_i_1 
       (.I0(d_r[27]),
        .I1(\sum_r_reg_n_0_[27] ),
        .O(\xor_r[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[28]_i_1 
       (.I0(d_r[28]),
        .I1(\sum_r_reg_n_0_[28] ),
        .O(\xor_r[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[29]_i_1 
       (.I0(d_r[29]),
        .I1(\sum_r_reg_n_0_[29] ),
        .O(\xor_r[29]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[2]_i_1 
       (.I0(d_r[2]),
        .I1(\sum_r_reg_n_0_[2] ),
        .O(\xor_r[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[30]_i_1 
       (.I0(d_r[30]),
        .I1(\sum_r_reg_n_0_[30] ),
        .O(\xor_r[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \xor_r[31]_i_1 
       (.I0(state_r[1]),
        .I1(state_r[0]),
        .I2(state_r[2]),
        .O(xor_r_0));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[31]_i_2 
       (.I0(d_r[31]),
        .I1(\sum_r_reg_n_0_[31] ),
        .O(\xor_r[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[3]_i_1 
       (.I0(d_r[3]),
        .I1(\sum_r_reg_n_0_[3] ),
        .O(\xor_r[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[4]_i_1 
       (.I0(d_r[4]),
        .I1(\sum_r_reg_n_0_[4] ),
        .O(\xor_r[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[5]_i_1 
       (.I0(d_r[5]),
        .I1(\sum_r_reg_n_0_[5] ),
        .O(\xor_r[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[6]_i_1 
       (.I0(d_r[6]),
        .I1(\sum_r_reg_n_0_[6] ),
        .O(\xor_r[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[7]_i_1 
       (.I0(d_r[7]),
        .I1(\sum_r_reg_n_0_[7] ),
        .O(\xor_r[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[8]_i_1 
       (.I0(d_r[8]),
        .I1(\sum_r_reg_n_0_[8] ),
        .O(\xor_r[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \xor_r[9]_i_1 
       (.I0(d_r[9]),
        .I1(\sum_r_reg_n_0_[9] ),
        .O(\xor_r[9]_i_1_n_0 ));
  FDCE \xor_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[0]_i_1_n_0 ),
        .Q(xor_r[0]));
  FDCE \xor_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[10]_i_1_n_0 ),
        .Q(xor_r[10]));
  FDCE \xor_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[11]_i_1_n_0 ),
        .Q(xor_r[11]));
  FDCE \xor_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[12]_i_1_n_0 ),
        .Q(xor_r[12]));
  FDCE \xor_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[13]_i_1_n_0 ),
        .Q(xor_r[13]));
  FDCE \xor_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[14]_i_1_n_0 ),
        .Q(xor_r[14]));
  FDCE \xor_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[15]_i_1_n_0 ),
        .Q(xor_r[15]));
  FDCE \xor_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[16]_i_1_n_0 ),
        .Q(xor_r[16]));
  FDCE \xor_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[17]_i_1_n_0 ),
        .Q(xor_r[17]));
  FDCE \xor_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[18]_i_1_n_0 ),
        .Q(xor_r[18]));
  FDCE \xor_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[19]_i_1_n_0 ),
        .Q(xor_r[19]));
  FDCE \xor_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[1]_i_1_n_0 ),
        .Q(xor_r[1]));
  FDCE \xor_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[20]_i_1_n_0 ),
        .Q(xor_r[20]));
  FDCE \xor_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[21]_i_1_n_0 ),
        .Q(xor_r[21]));
  FDCE \xor_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[22]_i_1_n_0 ),
        .Q(xor_r[22]));
  FDCE \xor_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[23]_i_1_n_0 ),
        .Q(xor_r[23]));
  FDCE \xor_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[24]_i_1_n_0 ),
        .Q(xor_r[24]));
  FDCE \xor_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[25]_i_1_n_0 ),
        .Q(xor_r[25]));
  FDCE \xor_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[26]_i_1_n_0 ),
        .Q(xor_r[26]));
  FDCE \xor_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[27]_i_1_n_0 ),
        .Q(xor_r[27]));
  FDCE \xor_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[28]_i_1_n_0 ),
        .Q(xor_r[28]));
  FDCE \xor_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[29]_i_1_n_0 ),
        .Q(xor_r[29]));
  FDCE \xor_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[2]_i_1_n_0 ),
        .Q(xor_r[2]));
  FDCE \xor_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[30]_i_1_n_0 ),
        .Q(xor_r[30]));
  FDCE \xor_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[31]_i_2_n_0 ),
        .Q(xor_r[31]));
  FDCE \xor_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[3]_i_1_n_0 ),
        .Q(xor_r[3]));
  FDCE \xor_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[4]_i_1_n_0 ),
        .Q(xor_r[4]));
  FDCE \xor_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[5]_i_1_n_0 ),
        .Q(xor_r[5]));
  FDCE \xor_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[6]_i_1_n_0 ),
        .Q(xor_r[6]));
  FDCE \xor_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[7]_i_1_n_0 ),
        .Q(xor_r[7]));
  FDCE \xor_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[8]_i_1_n_0 ),
        .Q(xor_r[8]));
  FDCE \xor_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(xor_r_0),
        .CLR(s00_axi_aresetn_0),
        .D(\xor_r[9]_i_1_n_0 ),
        .Q(xor_r[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_FSM_CTRL
   (\axi_awaddr_reg[4] ,
    \FSM_sequential_state_r_reg[1]_0 ,
    s00_axi_rdata,
    valid_b_r_reg,
    valid_c_r_reg,
    valid_d_r_reg,
    valid_e_r_reg,
    valid_f_r_reg,
    valid_a_r_reg,
    Q,
    s00_axi_wdata,
    E,
    valid_b_r_reg_0,
    valid_b_r_reg_1,
    valid_f_r,
    valid_e_r,
    r_addr_r,
    \s00_axi_rdata[0] ,
    r_addr_valid_r,
    valid_b_r_reg_2,
    valid_b_r,
    valid_c_r_reg_0,
    valid_c_r,
    valid_d_r_reg_0,
    valid_d_r,
    valid_e_r_reg_0,
    valid_f_r_reg_0,
    valid_a_r_reg_0,
    valid_a_r,
    D,
    s00_axi_aclk,
    \FSM_sequential_state_r_reg[0]_0 );
  output \axi_awaddr_reg[4] ;
  output [1:0]\FSM_sequential_state_r_reg[1]_0 ;
  output [0:0]s00_axi_rdata;
  output valid_b_r_reg;
  output valid_c_r_reg;
  output valid_d_r_reg;
  output valid_e_r_reg;
  output valid_f_r_reg;
  output valid_a_r_reg;
  input [3:0]Q;
  input [0:0]s00_axi_wdata;
  input [0:0]E;
  input valid_b_r_reg_0;
  input valid_b_r_reg_1;
  input valid_f_r;
  input valid_e_r;
  input r_addr_r;
  input [0:0]\s00_axi_rdata[0] ;
  input r_addr_valid_r;
  input [0:0]valid_b_r_reg_2;
  input valid_b_r;
  input [0:0]valid_c_r_reg_0;
  input valid_c_r;
  input [0:0]valid_d_r_reg_0;
  input valid_d_r;
  input [0:0]valid_e_r_reg_0;
  input [0:0]valid_f_r_reg_0;
  input [0:0]valid_a_r_reg_0;
  input valid_a_r;
  input [1:0]D;
  input s00_axi_aclk;
  input \FSM_sequential_state_r_reg[0]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_r[1]_i_1_n_0 ;
  wire \FSM_sequential_state_r[1]_i_3_n_0 ;
  wire \FSM_sequential_state_r[1]_i_5_n_0 ;
  wire \FSM_sequential_state_r_reg[0]_0 ;
  wire [1:0]\FSM_sequential_state_r_reg[1]_0 ;
  wire [3:0]Q;
  wire \axi_awaddr_reg[4] ;
  wire r_addr_r;
  wire r_addr_valid_r;
  wire s00_axi_aclk;
  wire [0:0]s00_axi_rdata;
  wire [0:0]\s00_axi_rdata[0] ;
  wire [0:0]s00_axi_wdata;
  wire valid_a_r;
  wire valid_a_r_reg;
  wire [0:0]valid_a_r_reg_0;
  wire valid_b_r;
  wire valid_b_r_reg;
  wire valid_b_r_reg_0;
  wire valid_b_r_reg_1;
  wire [0:0]valid_b_r_reg_2;
  wire valid_c_r;
  wire valid_c_r_reg;
  wire [0:0]valid_c_r_reg_0;
  wire valid_d_r;
  wire valid_d_r_reg;
  wire [0:0]valid_d_r_reg_0;
  wire valid_e_r;
  wire valid_e_r_reg;
  wire [0:0]valid_e_r_reg_0;
  wire valid_f_r;
  wire valid_f_r_reg;
  wire [0:0]valid_f_r_reg_0;

  LUT5 #(
    .INIT(32'hFFFFFF40)) 
    \FSM_sequential_state_r[1]_i_1 
       (.I0(Q[0]),
        .I1(s00_axi_wdata),
        .I2(\FSM_sequential_state_r[1]_i_3_n_0 ),
        .I3(E),
        .I4(\axi_awaddr_reg[4] ),
        .O(\FSM_sequential_state_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000080)) 
    \FSM_sequential_state_r[1]_i_3 
       (.I0(\FSM_sequential_state_r_reg[1]_0 [0]),
        .I1(\FSM_sequential_state_r_reg[1]_0 [1]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(valid_b_r_reg_0),
        .O(\FSM_sequential_state_r[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \FSM_sequential_state_r[1]_i_4 
       (.I0(valid_b_r_reg_0),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(\FSM_sequential_state_r[1]_i_5_n_0 ),
        .I5(valid_b_r_reg_1),
        .O(\axi_awaddr_reg[4] ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \FSM_sequential_state_r[1]_i_5 
       (.I0(\FSM_sequential_state_r_reg[1]_0 [0]),
        .I1(\FSM_sequential_state_r_reg[1]_0 [1]),
        .I2(valid_f_r),
        .I3(Q[0]),
        .I4(s00_axi_wdata),
        .I5(valid_e_r),
        .O(\FSM_sequential_state_r[1]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "LOAD:01,EXEC:10,IDLE:00,READ:11" *) 
  FDCE \FSM_sequential_state_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state_r[1]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_r_reg[0]_0 ),
        .D(D[0]),
        .Q(\FSM_sequential_state_r_reg[1]_0 [0]));
  (* FSM_ENCODED_STATES = "LOAD:01,EXEC:10,IDLE:00,READ:11" *) 
  FDCE \FSM_sequential_state_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_sequential_state_r[1]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_r_reg[0]_0 ),
        .D(D[1]),
        .Q(\FSM_sequential_state_r_reg[1]_0 [1]));
  LUT5 #(
    .INIT(32'h8F800000)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(\FSM_sequential_state_r_reg[1]_0 [1]),
        .I1(\FSM_sequential_state_r_reg[1]_0 [0]),
        .I2(r_addr_r),
        .I3(\s00_axi_rdata[0] ),
        .I4(r_addr_valid_r),
        .O(s00_axi_rdata));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    valid_a_r_i_1
       (.I0(\axi_awaddr_reg[4] ),
        .I1(valid_a_r_reg_0),
        .I2(valid_a_r),
        .O(valid_a_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    valid_b_r_i_1
       (.I0(valid_b_r_reg_2),
        .I1(\axi_awaddr_reg[4] ),
        .I2(valid_b_r),
        .O(valid_b_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    valid_c_r_i_1
       (.I0(\axi_awaddr_reg[4] ),
        .I1(valid_c_r_reg_0),
        .I2(valid_c_r),
        .O(valid_c_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    valid_d_r_i_1
       (.I0(\axi_awaddr_reg[4] ),
        .I1(valid_d_r_reg_0),
        .I2(valid_d_r),
        .O(valid_d_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    valid_e_r_i_1
       (.I0(\axi_awaddr_reg[4] ),
        .I1(valid_e_r_reg_0),
        .I2(valid_e_r),
        .O(valid_e_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    valid_f_r_i_1
       (.I0(\axi_awaddr_reg[4] ),
        .I1(valid_f_r_reg_0),
        .I2(valid_f_r),
        .O(valid_f_r_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Function_Core
   (s00_axi_aresetn_0,
    s00_axi_rdata,
    r_addr_i_w,
    s00_axi_aclk,
    r_addr_valid_i_w,
    Q,
    s00_axi_wdata,
    s00_axi_wvalid,
    s00_axi_awvalid,
    \e_r_reg[0] ,
    \e_r_reg[0]_0 ,
    s00_axi_aresetn);
  output s00_axi_aresetn_0;
  output [31:0]s00_axi_rdata;
  input r_addr_i_w;
  input s00_axi_aclk;
  input r_addr_valid_i_w;
  input [3:0]Q;
  input [31:0]s00_axi_wdata;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input \e_r_reg[0] ;
  input \e_r_reg[0]_0 ;
  input s00_axi_aresetn;

  wire [3:0]Q;
  wire [31:0]a_r;
  wire [31:0]b_r;
  wire [31:0]c_r;
  wire [31:0]e_r;
  wire \e_r_reg[0] ;
  wire \e_r_reg[0]_0 ;
  wire [31:0]h_r;
  wire [1:0]next_state_r;
  wire r_addr_i_w;
  wire r_addr_r;
  wire r_addr_valid_i_w;
  wire r_addr_valid_r;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_awvalid;
  wire [31:0]s00_axi_rdata;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire [1:0]state_r;
  wire u_H_FSM_CTRL_n_0;
  wire u_H_FSM_CTRL_n_4;
  wire u_H_FSM_CTRL_n_5;
  wire u_H_FSM_CTRL_n_6;
  wire u_H_FSM_CTRL_n_7;
  wire u_H_FSM_CTRL_n_8;
  wire u_H_FSM_CTRL_n_9;
  wire u_H_Input_Memory_n_10;
  wire u_H_Input_Memory_n_14;
  wire u_H_Input_Memory_n_15;
  wire u_H_Input_Memory_n_16;
  wire u_H_Input_Memory_n_17;
  wire u_H_Input_Memory_n_18;
  wire u_H_Input_Memory_n_19;
  wire u_H_Input_Memory_n_20;
  wire u_H_Input_Memory_n_21;
  wire u_H_Input_Memory_n_22;
  wire u_H_Input_Memory_n_23;
  wire u_H_Input_Memory_n_24;
  wire u_H_Input_Memory_n_25;
  wire u_H_Input_Memory_n_26;
  wire u_H_Input_Memory_n_27;
  wire u_H_Input_Memory_n_28;
  wire u_H_Input_Memory_n_29;
  wire u_H_Input_Memory_n_30;
  wire u_H_Input_Memory_n_31;
  wire u_H_Input_Memory_n_32;
  wire u_H_Input_Memory_n_33;
  wire u_H_Input_Memory_n_34;
  wire u_H_Input_Memory_n_35;
  wire u_H_Input_Memory_n_36;
  wire u_H_Input_Memory_n_37;
  wire u_H_Input_Memory_n_38;
  wire u_H_Input_Memory_n_39;
  wire u_H_Input_Memory_n_40;
  wire u_H_Input_Memory_n_41;
  wire u_H_Input_Memory_n_42;
  wire u_H_Input_Memory_n_43;
  wire u_H_Input_Memory_n_44;
  wire u_H_Input_Memory_n_45;
  wire u_H_Input_Memory_n_46;
  wire u_H_Input_Memory_n_47;
  wire u_H_Input_Memory_n_48;
  wire u_H_Input_Memory_n_49;
  wire u_H_Input_Memory_n_50;
  wire u_H_Input_Memory_n_51;
  wire u_H_Input_Memory_n_52;
  wire u_H_Input_Memory_n_53;
  wire u_H_Input_Memory_n_54;
  wire u_H_Input_Memory_n_55;
  wire u_H_Input_Memory_n_56;
  wire u_H_Input_Memory_n_57;
  wire u_H_Input_Memory_n_58;
  wire u_H_Input_Memory_n_59;
  wire u_H_Input_Memory_n_6;
  wire u_H_Input_Memory_n_60;
  wire u_H_Input_Memory_n_61;
  wire u_H_Input_Memory_n_62;
  wire u_H_Input_Memory_n_63;
  wire u_H_Input_Memory_n_64;
  wire u_H_Input_Memory_n_65;
  wire u_H_Input_Memory_n_66;
  wire u_H_Input_Memory_n_67;
  wire u_H_Input_Memory_n_68;
  wire u_H_Input_Memory_n_69;
  wire u_H_Input_Memory_n_7;
  wire u_H_Input_Memory_n_70;
  wire u_H_Input_Memory_n_71;
  wire u_H_Input_Memory_n_72;
  wire u_H_Input_Memory_n_73;
  wire u_H_Input_Memory_n_74;
  wire u_H_Input_Memory_n_75;
  wire u_H_Input_Memory_n_76;
  wire u_H_Input_Memory_n_77;
  wire u_H_Input_Memory_n_8;
  wire u_H_Input_Memory_n_9;
  wire u_H_Output_Memory_n_0;
  wire u_H_Output_Memory_n_1;
  wire u_H_Output_Memory_n_10;
  wire u_H_Output_Memory_n_11;
  wire u_H_Output_Memory_n_12;
  wire u_H_Output_Memory_n_13;
  wire u_H_Output_Memory_n_14;
  wire u_H_Output_Memory_n_15;
  wire u_H_Output_Memory_n_16;
  wire u_H_Output_Memory_n_17;
  wire u_H_Output_Memory_n_18;
  wire u_H_Output_Memory_n_19;
  wire u_H_Output_Memory_n_2;
  wire u_H_Output_Memory_n_20;
  wire u_H_Output_Memory_n_21;
  wire u_H_Output_Memory_n_22;
  wire u_H_Output_Memory_n_23;
  wire u_H_Output_Memory_n_24;
  wire u_H_Output_Memory_n_25;
  wire u_H_Output_Memory_n_26;
  wire u_H_Output_Memory_n_27;
  wire u_H_Output_Memory_n_28;
  wire u_H_Output_Memory_n_29;
  wire u_H_Output_Memory_n_3;
  wire u_H_Output_Memory_n_30;
  wire u_H_Output_Memory_n_31;
  wire u_H_Output_Memory_n_4;
  wire u_H_Output_Memory_n_5;
  wire u_H_Output_Memory_n_6;
  wire u_H_Output_Memory_n_7;
  wire u_H_Output_Memory_n_8;
  wire u_H_Output_Memory_n_9;
  wire valid_a_r;
  wire valid_b_r;
  wire valid_c_r;
  wire valid_d_r;
  wire valid_e_r;
  wire valid_f_r;
  wire wr_b_w;
  wire wr_d_w;
  wire wr_f_w;
  wire write_output_w;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Arbiter u_H_Arbiter
       (.Q({u_H_Output_Memory_n_0,u_H_Output_Memory_n_1,u_H_Output_Memory_n_2,u_H_Output_Memory_n_3,u_H_Output_Memory_n_4,u_H_Output_Memory_n_5,u_H_Output_Memory_n_6,u_H_Output_Memory_n_7,u_H_Output_Memory_n_8,u_H_Output_Memory_n_9,u_H_Output_Memory_n_10,u_H_Output_Memory_n_11,u_H_Output_Memory_n_12,u_H_Output_Memory_n_13,u_H_Output_Memory_n_14,u_H_Output_Memory_n_15,u_H_Output_Memory_n_16,u_H_Output_Memory_n_17,u_H_Output_Memory_n_18,u_H_Output_Memory_n_19,u_H_Output_Memory_n_20,u_H_Output_Memory_n_21,u_H_Output_Memory_n_22,u_H_Output_Memory_n_23,u_H_Output_Memory_n_24,u_H_Output_Memory_n_25,u_H_Output_Memory_n_26,u_H_Output_Memory_n_27,u_H_Output_Memory_n_28,u_H_Output_Memory_n_29,u_H_Output_Memory_n_30}),
        .r_addr_i_w(r_addr_i_w),
        .r_addr_r(r_addr_r),
        .\r_addr_r_reg[0]_0 (s00_axi_aresetn_0),
        .r_addr_valid_i_w(r_addr_valid_i_w),
        .r_addr_valid_r(r_addr_valid_r),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata(s00_axi_rdata[31:1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Datapath u_H_Datapath
       (.D(next_state_r),
        .E(write_output_w),
        .Q(state_r),
        .\a_r_reg[31]_0 (a_r),
        .\b_r_reg[31]_0 (b_r),
        .\c_r_reg[31]_0 (c_r),
        .\d_r_reg[31]_0 ({u_H_Input_Memory_n_46,u_H_Input_Memory_n_47,u_H_Input_Memory_n_48,u_H_Input_Memory_n_49,u_H_Input_Memory_n_50,u_H_Input_Memory_n_51,u_H_Input_Memory_n_52,u_H_Input_Memory_n_53,u_H_Input_Memory_n_54,u_H_Input_Memory_n_55,u_H_Input_Memory_n_56,u_H_Input_Memory_n_57,u_H_Input_Memory_n_58,u_H_Input_Memory_n_59,u_H_Input_Memory_n_60,u_H_Input_Memory_n_61,u_H_Input_Memory_n_62,u_H_Input_Memory_n_63,u_H_Input_Memory_n_64,u_H_Input_Memory_n_65,u_H_Input_Memory_n_66,u_H_Input_Memory_n_67,u_H_Input_Memory_n_68,u_H_Input_Memory_n_69,u_H_Input_Memory_n_70,u_H_Input_Memory_n_71,u_H_Input_Memory_n_72,u_H_Input_Memory_n_73,u_H_Input_Memory_n_74,u_H_Input_Memory_n_75,u_H_Input_Memory_n_76,u_H_Input_Memory_n_77}),
        .\e_r_reg[0]_0 (u_H_FSM_CTRL_n_0),
        .\e_r_reg[31]_0 (e_r),
        .\f_r_reg[31]_0 ({u_H_Input_Memory_n_14,u_H_Input_Memory_n_15,u_H_Input_Memory_n_16,u_H_Input_Memory_n_17,u_H_Input_Memory_n_18,u_H_Input_Memory_n_19,u_H_Input_Memory_n_20,u_H_Input_Memory_n_21,u_H_Input_Memory_n_22,u_H_Input_Memory_n_23,u_H_Input_Memory_n_24,u_H_Input_Memory_n_25,u_H_Input_Memory_n_26,u_H_Input_Memory_n_27,u_H_Input_Memory_n_28,u_H_Input_Memory_n_29,u_H_Input_Memory_n_30,u_H_Input_Memory_n_31,u_H_Input_Memory_n_32,u_H_Input_Memory_n_33,u_H_Input_Memory_n_34,u_H_Input_Memory_n_35,u_H_Input_Memory_n_36,u_H_Input_Memory_n_37,u_H_Input_Memory_n_38,u_H_Input_Memory_n_39,u_H_Input_Memory_n_40,u_H_Input_Memory_n_41,u_H_Input_Memory_n_42,u_H_Input_Memory_n_43,u_H_Input_Memory_n_44,u_H_Input_Memory_n_45}),
        .\h_r_reg[31]_0 (h_r),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(s00_axi_aresetn_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_FSM_CTRL u_H_FSM_CTRL
       (.D(next_state_r),
        .E(write_output_w),
        .\FSM_sequential_state_r_reg[0]_0 (s00_axi_aresetn_0),
        .\FSM_sequential_state_r_reg[1]_0 (state_r),
        .Q(Q),
        .\axi_awaddr_reg[4] (u_H_FSM_CTRL_n_0),
        .r_addr_r(r_addr_r),
        .r_addr_valid_r(r_addr_valid_r),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_rdata(s00_axi_rdata[0]),
        .\s00_axi_rdata[0] (u_H_Output_Memory_n_31),
        .s00_axi_wdata(s00_axi_wdata[0]),
        .valid_a_r(valid_a_r),
        .valid_a_r_reg(u_H_FSM_CTRL_n_9),
        .valid_a_r_reg_0(u_H_Input_Memory_n_9),
        .valid_b_r(valid_b_r),
        .valid_b_r_reg(u_H_FSM_CTRL_n_4),
        .valid_b_r_reg_0(u_H_Input_Memory_n_7),
        .valid_b_r_reg_1(u_H_Input_Memory_n_10),
        .valid_b_r_reg_2(wr_b_w),
        .valid_c_r(valid_c_r),
        .valid_c_r_reg(u_H_FSM_CTRL_n_5),
        .valid_c_r_reg_0(u_H_Input_Memory_n_8),
        .valid_d_r(valid_d_r),
        .valid_d_r_reg(u_H_FSM_CTRL_n_6),
        .valid_d_r_reg_0(wr_d_w),
        .valid_e_r(valid_e_r),
        .valid_e_r_reg(u_H_FSM_CTRL_n_7),
        .valid_e_r_reg_0(u_H_Input_Memory_n_6),
        .valid_f_r(valid_f_r),
        .valid_f_r_reg(u_H_FSM_CTRL_n_8),
        .valid_f_r_reg_0(wr_f_w));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Input_Memory u_H_Input_Memory
       (.E(u_H_Input_Memory_n_6),
        .Q(Q),
        .\a_r_reg[31]_0 (a_r),
        .\axi_awaddr_reg[2] (u_H_Input_Memory_n_8),
        .\axi_awaddr_reg[2]_0 (u_H_Input_Memory_n_9),
        .\axi_awaddr_reg[2]_1 (wr_f_w),
        .\axi_awaddr_reg[2]_2 (wr_d_w),
        .\axi_awaddr_reg[2]_3 (wr_b_w),
        .\b_r_reg[31]_0 (b_r),
        .\c_r_reg[31]_0 (c_r),
        .\d_r_reg[31]_0 ({u_H_Input_Memory_n_46,u_H_Input_Memory_n_47,u_H_Input_Memory_n_48,u_H_Input_Memory_n_49,u_H_Input_Memory_n_50,u_H_Input_Memory_n_51,u_H_Input_Memory_n_52,u_H_Input_Memory_n_53,u_H_Input_Memory_n_54,u_H_Input_Memory_n_55,u_H_Input_Memory_n_56,u_H_Input_Memory_n_57,u_H_Input_Memory_n_58,u_H_Input_Memory_n_59,u_H_Input_Memory_n_60,u_H_Input_Memory_n_61,u_H_Input_Memory_n_62,u_H_Input_Memory_n_63,u_H_Input_Memory_n_64,u_H_Input_Memory_n_65,u_H_Input_Memory_n_66,u_H_Input_Memory_n_67,u_H_Input_Memory_n_68,u_H_Input_Memory_n_69,u_H_Input_Memory_n_70,u_H_Input_Memory_n_71,u_H_Input_Memory_n_72,u_H_Input_Memory_n_73,u_H_Input_Memory_n_74,u_H_Input_Memory_n_75,u_H_Input_Memory_n_76,u_H_Input_Memory_n_77}),
        .\e_r_reg[0]_0 (\e_r_reg[0] ),
        .\e_r_reg[0]_1 (\e_r_reg[0]_0 ),
        .\e_r_reg[31]_0 (e_r),
        .\f_r_reg[31]_0 ({u_H_Input_Memory_n_14,u_H_Input_Memory_n_15,u_H_Input_Memory_n_16,u_H_Input_Memory_n_17,u_H_Input_Memory_n_18,u_H_Input_Memory_n_19,u_H_Input_Memory_n_20,u_H_Input_Memory_n_21,u_H_Input_Memory_n_22,u_H_Input_Memory_n_23,u_H_Input_Memory_n_24,u_H_Input_Memory_n_25,u_H_Input_Memory_n_26,u_H_Input_Memory_n_27,u_H_Input_Memory_n_28,u_H_Input_Memory_n_29,u_H_Input_Memory_n_30,u_H_Input_Memory_n_31,u_H_Input_Memory_n_32,u_H_Input_Memory_n_33,u_H_Input_Memory_n_34,u_H_Input_Memory_n_35,u_H_Input_Memory_n_36,u_H_Input_Memory_n_37,u_H_Input_Memory_n_38,u_H_Input_Memory_n_39,u_H_Input_Memory_n_40,u_H_Input_Memory_n_41,u_H_Input_Memory_n_42,u_H_Input_Memory_n_43,u_H_Input_Memory_n_44,u_H_Input_Memory_n_45}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_axi_wvalid_0(u_H_Input_Memory_n_7),
        .valid_a_r(valid_a_r),
        .valid_a_r_reg_0(u_H_FSM_CTRL_n_9),
        .valid_b_r(valid_b_r),
        .valid_b_r_reg_0(u_H_FSM_CTRL_n_4),
        .valid_b_r_reg_1(s00_axi_aresetn_0),
        .valid_c_r(valid_c_r),
        .valid_c_r_reg_0(u_H_FSM_CTRL_n_5),
        .valid_d_r(valid_d_r),
        .valid_d_r_reg_0(u_H_Input_Memory_n_10),
        .valid_d_r_reg_1(u_H_FSM_CTRL_n_6),
        .valid_e_r(valid_e_r),
        .valid_e_r_reg_0(u_H_FSM_CTRL_n_7),
        .valid_f_r(valid_f_r),
        .valid_f_r_reg_0(u_H_FSM_CTRL_n_8));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Output_Memory u_H_Output_Memory
       (.D(h_r),
        .E(write_output_w),
        .Q({u_H_Output_Memory_n_0,u_H_Output_Memory_n_1,u_H_Output_Memory_n_2,u_H_Output_Memory_n_3,u_H_Output_Memory_n_4,u_H_Output_Memory_n_5,u_H_Output_Memory_n_6,u_H_Output_Memory_n_7,u_H_Output_Memory_n_8,u_H_Output_Memory_n_9,u_H_Output_Memory_n_10,u_H_Output_Memory_n_11,u_H_Output_Memory_n_12,u_H_Output_Memory_n_13,u_H_Output_Memory_n_14,u_H_Output_Memory_n_15,u_H_Output_Memory_n_16,u_H_Output_Memory_n_17,u_H_Output_Memory_n_18,u_H_Output_Memory_n_19,u_H_Output_Memory_n_20,u_H_Output_Memory_n_21,u_H_Output_Memory_n_22,u_H_Output_Memory_n_23,u_H_Output_Memory_n_24,u_H_Output_Memory_n_25,u_H_Output_Memory_n_26,u_H_Output_Memory_n_27,u_H_Output_Memory_n_28,u_H_Output_Memory_n_29,u_H_Output_Memory_n_30,u_H_Output_Memory_n_31}),
        .\h_r_reg[0]_0 (s00_axi_aresetn_0),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Input_Memory
   (valid_b_r,
    valid_c_r,
    valid_d_r,
    valid_e_r,
    valid_f_r,
    valid_a_r,
    E,
    s00_axi_wvalid_0,
    \axi_awaddr_reg[2] ,
    \axi_awaddr_reg[2]_0 ,
    valid_d_r_reg_0,
    \axi_awaddr_reg[2]_1 ,
    \axi_awaddr_reg[2]_2 ,
    \axi_awaddr_reg[2]_3 ,
    \f_r_reg[31]_0 ,
    \d_r_reg[31]_0 ,
    \b_r_reg[31]_0 ,
    \c_r_reg[31]_0 ,
    \a_r_reg[31]_0 ,
    \e_r_reg[31]_0 ,
    valid_b_r_reg_0,
    s00_axi_aclk,
    valid_b_r_reg_1,
    valid_c_r_reg_0,
    valid_d_r_reg_1,
    valid_e_r_reg_0,
    valid_f_r_reg_0,
    valid_a_r_reg_0,
    Q,
    s00_axi_wvalid,
    s00_axi_awvalid,
    \e_r_reg[0]_0 ,
    \e_r_reg[0]_1 ,
    s00_axi_wdata);
  output valid_b_r;
  output valid_c_r;
  output valid_d_r;
  output valid_e_r;
  output valid_f_r;
  output valid_a_r;
  output [0:0]E;
  output s00_axi_wvalid_0;
  output [0:0]\axi_awaddr_reg[2] ;
  output [0:0]\axi_awaddr_reg[2]_0 ;
  output valid_d_r_reg_0;
  output [0:0]\axi_awaddr_reg[2]_1 ;
  output [0:0]\axi_awaddr_reg[2]_2 ;
  output [0:0]\axi_awaddr_reg[2]_3 ;
  output [31:0]\f_r_reg[31]_0 ;
  output [31:0]\d_r_reg[31]_0 ;
  output [31:0]\b_r_reg[31]_0 ;
  output [31:0]\c_r_reg[31]_0 ;
  output [31:0]\a_r_reg[31]_0 ;
  output [31:0]\e_r_reg[31]_0 ;
  input valid_b_r_reg_0;
  input s00_axi_aclk;
  input valid_b_r_reg_1;
  input valid_c_r_reg_0;
  input valid_d_r_reg_1;
  input valid_e_r_reg_0;
  input valid_f_r_reg_0;
  input valid_a_r_reg_0;
  input [3:0]Q;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input \e_r_reg[0]_0 ;
  input \e_r_reg[0]_1 ;
  input [31:0]s00_axi_wdata;

  wire [0:0]E;
  wire [3:0]Q;
  wire [31:0]\a_r_reg[31]_0 ;
  wire [0:0]\axi_awaddr_reg[2] ;
  wire [0:0]\axi_awaddr_reg[2]_0 ;
  wire [0:0]\axi_awaddr_reg[2]_1 ;
  wire [0:0]\axi_awaddr_reg[2]_2 ;
  wire [0:0]\axi_awaddr_reg[2]_3 ;
  wire [31:0]\b_r_reg[31]_0 ;
  wire [31:0]\c_r_reg[31]_0 ;
  wire [31:0]\d_r_reg[31]_0 ;
  wire \e_r_reg[0]_0 ;
  wire \e_r_reg[0]_1 ;
  wire [31:0]\e_r_reg[31]_0 ;
  wire [31:0]\f_r_reg[31]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_awvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire s00_axi_wvalid_0;
  wire valid_a_r;
  wire valid_a_r_reg_0;
  wire valid_b_r;
  wire valid_b_r_reg_0;
  wire valid_b_r_reg_1;
  wire valid_c_r;
  wire valid_c_r_reg_0;
  wire valid_d_r;
  wire valid_d_r_reg_0;
  wire valid_d_r_reg_1;
  wire valid_e_r;
  wire valid_e_r_reg_0;
  wire valid_f_r;
  wire valid_f_r_reg_0;

  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state_r[1]_i_6 
       (.I0(valid_d_r),
        .I1(valid_c_r),
        .I2(valid_a_r),
        .I3(valid_b_r),
        .O(valid_d_r_reg_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \a_r[31]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(s00_axi_wvalid_0),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\axi_awaddr_reg[2]_0 ));
  FDCE \a_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[0]),
        .Q(\a_r_reg[31]_0 [0]));
  FDCE \a_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[10]),
        .Q(\a_r_reg[31]_0 [10]));
  FDCE \a_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[11]),
        .Q(\a_r_reg[31]_0 [11]));
  FDCE \a_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[12]),
        .Q(\a_r_reg[31]_0 [12]));
  FDCE \a_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[13]),
        .Q(\a_r_reg[31]_0 [13]));
  FDCE \a_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[14]),
        .Q(\a_r_reg[31]_0 [14]));
  FDCE \a_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[15]),
        .Q(\a_r_reg[31]_0 [15]));
  FDCE \a_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[16]),
        .Q(\a_r_reg[31]_0 [16]));
  FDCE \a_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[17]),
        .Q(\a_r_reg[31]_0 [17]));
  FDCE \a_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[18]),
        .Q(\a_r_reg[31]_0 [18]));
  FDCE \a_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[19]),
        .Q(\a_r_reg[31]_0 [19]));
  FDCE \a_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[1]),
        .Q(\a_r_reg[31]_0 [1]));
  FDCE \a_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[20]),
        .Q(\a_r_reg[31]_0 [20]));
  FDCE \a_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[21]),
        .Q(\a_r_reg[31]_0 [21]));
  FDCE \a_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[22]),
        .Q(\a_r_reg[31]_0 [22]));
  FDCE \a_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[23]),
        .Q(\a_r_reg[31]_0 [23]));
  FDCE \a_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[24]),
        .Q(\a_r_reg[31]_0 [24]));
  FDCE \a_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[25]),
        .Q(\a_r_reg[31]_0 [25]));
  FDCE \a_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[26]),
        .Q(\a_r_reg[31]_0 [26]));
  FDCE \a_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[27]),
        .Q(\a_r_reg[31]_0 [27]));
  FDCE \a_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[28]),
        .Q(\a_r_reg[31]_0 [28]));
  FDCE \a_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[29]),
        .Q(\a_r_reg[31]_0 [29]));
  FDCE \a_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[2]),
        .Q(\a_r_reg[31]_0 [2]));
  FDCE \a_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[30]),
        .Q(\a_r_reg[31]_0 [30]));
  FDCE \a_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[31]),
        .Q(\a_r_reg[31]_0 [31]));
  FDCE \a_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[3]),
        .Q(\a_r_reg[31]_0 [3]));
  FDCE \a_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[4]),
        .Q(\a_r_reg[31]_0 [4]));
  FDCE \a_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[5]),
        .Q(\a_r_reg[31]_0 [5]));
  FDCE \a_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[6]),
        .Q(\a_r_reg[31]_0 [6]));
  FDCE \a_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[7]),
        .Q(\a_r_reg[31]_0 [7]));
  FDCE \a_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[8]),
        .Q(\a_r_reg[31]_0 [8]));
  FDCE \a_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_0 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[9]),
        .Q(\a_r_reg[31]_0 [9]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \b_r[31]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(s00_axi_wvalid_0),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\axi_awaddr_reg[2]_3 ));
  FDCE \b_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[0]),
        .Q(\b_r_reg[31]_0 [0]));
  FDCE \b_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[10]),
        .Q(\b_r_reg[31]_0 [10]));
  FDCE \b_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[11]),
        .Q(\b_r_reg[31]_0 [11]));
  FDCE \b_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[12]),
        .Q(\b_r_reg[31]_0 [12]));
  FDCE \b_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[13]),
        .Q(\b_r_reg[31]_0 [13]));
  FDCE \b_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[14]),
        .Q(\b_r_reg[31]_0 [14]));
  FDCE \b_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[15]),
        .Q(\b_r_reg[31]_0 [15]));
  FDCE \b_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[16]),
        .Q(\b_r_reg[31]_0 [16]));
  FDCE \b_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[17]),
        .Q(\b_r_reg[31]_0 [17]));
  FDCE \b_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[18]),
        .Q(\b_r_reg[31]_0 [18]));
  FDCE \b_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[19]),
        .Q(\b_r_reg[31]_0 [19]));
  FDCE \b_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[1]),
        .Q(\b_r_reg[31]_0 [1]));
  FDCE \b_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[20]),
        .Q(\b_r_reg[31]_0 [20]));
  FDCE \b_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[21]),
        .Q(\b_r_reg[31]_0 [21]));
  FDCE \b_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[22]),
        .Q(\b_r_reg[31]_0 [22]));
  FDCE \b_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[23]),
        .Q(\b_r_reg[31]_0 [23]));
  FDCE \b_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[24]),
        .Q(\b_r_reg[31]_0 [24]));
  FDCE \b_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[25]),
        .Q(\b_r_reg[31]_0 [25]));
  FDCE \b_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[26]),
        .Q(\b_r_reg[31]_0 [26]));
  FDCE \b_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[27]),
        .Q(\b_r_reg[31]_0 [27]));
  FDCE \b_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[28]),
        .Q(\b_r_reg[31]_0 [28]));
  FDCE \b_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[29]),
        .Q(\b_r_reg[31]_0 [29]));
  FDCE \b_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[2]),
        .Q(\b_r_reg[31]_0 [2]));
  FDCE \b_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[30]),
        .Q(\b_r_reg[31]_0 [30]));
  FDCE \b_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[31]),
        .Q(\b_r_reg[31]_0 [31]));
  FDCE \b_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[3]),
        .Q(\b_r_reg[31]_0 [3]));
  FDCE \b_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[4]),
        .Q(\b_r_reg[31]_0 [4]));
  FDCE \b_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[5]),
        .Q(\b_r_reg[31]_0 [5]));
  FDCE \b_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[6]),
        .Q(\b_r_reg[31]_0 [6]));
  FDCE \b_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[7]),
        .Q(\b_r_reg[31]_0 [7]));
  FDCE \b_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[8]),
        .Q(\b_r_reg[31]_0 [8]));
  FDCE \b_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_3 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[9]),
        .Q(\b_r_reg[31]_0 [9]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \c_r[31]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(s00_axi_wvalid_0),
        .I4(Q[2]),
        .O(\axi_awaddr_reg[2] ));
  FDCE \c_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[0]),
        .Q(\c_r_reg[31]_0 [0]));
  FDCE \c_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[10]),
        .Q(\c_r_reg[31]_0 [10]));
  FDCE \c_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[11]),
        .Q(\c_r_reg[31]_0 [11]));
  FDCE \c_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[12]),
        .Q(\c_r_reg[31]_0 [12]));
  FDCE \c_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[13]),
        .Q(\c_r_reg[31]_0 [13]));
  FDCE \c_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[14]),
        .Q(\c_r_reg[31]_0 [14]));
  FDCE \c_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[15]),
        .Q(\c_r_reg[31]_0 [15]));
  FDCE \c_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[16]),
        .Q(\c_r_reg[31]_0 [16]));
  FDCE \c_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[17]),
        .Q(\c_r_reg[31]_0 [17]));
  FDCE \c_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[18]),
        .Q(\c_r_reg[31]_0 [18]));
  FDCE \c_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[19]),
        .Q(\c_r_reg[31]_0 [19]));
  FDCE \c_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[1]),
        .Q(\c_r_reg[31]_0 [1]));
  FDCE \c_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[20]),
        .Q(\c_r_reg[31]_0 [20]));
  FDCE \c_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[21]),
        .Q(\c_r_reg[31]_0 [21]));
  FDCE \c_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[22]),
        .Q(\c_r_reg[31]_0 [22]));
  FDCE \c_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[23]),
        .Q(\c_r_reg[31]_0 [23]));
  FDCE \c_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[24]),
        .Q(\c_r_reg[31]_0 [24]));
  FDCE \c_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[25]),
        .Q(\c_r_reg[31]_0 [25]));
  FDCE \c_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[26]),
        .Q(\c_r_reg[31]_0 [26]));
  FDCE \c_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[27]),
        .Q(\c_r_reg[31]_0 [27]));
  FDCE \c_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[28]),
        .Q(\c_r_reg[31]_0 [28]));
  FDCE \c_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[29]),
        .Q(\c_r_reg[31]_0 [29]));
  FDCE \c_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[2]),
        .Q(\c_r_reg[31]_0 [2]));
  FDCE \c_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[30]),
        .Q(\c_r_reg[31]_0 [30]));
  FDCE \c_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[31]),
        .Q(\c_r_reg[31]_0 [31]));
  FDCE \c_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[3]),
        .Q(\c_r_reg[31]_0 [3]));
  FDCE \c_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[4]),
        .Q(\c_r_reg[31]_0 [4]));
  FDCE \c_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[5]),
        .Q(\c_r_reg[31]_0 [5]));
  FDCE \c_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[6]),
        .Q(\c_r_reg[31]_0 [6]));
  FDCE \c_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[7]),
        .Q(\c_r_reg[31]_0 [7]));
  FDCE \c_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[8]),
        .Q(\c_r_reg[31]_0 [8]));
  FDCE \c_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2] ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[9]),
        .Q(\c_r_reg[31]_0 [9]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \d_r[31]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(s00_axi_wvalid_0),
        .I4(Q[2]),
        .O(\axi_awaddr_reg[2]_2 ));
  FDCE \d_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[0]),
        .Q(\d_r_reg[31]_0 [0]));
  FDCE \d_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[10]),
        .Q(\d_r_reg[31]_0 [10]));
  FDCE \d_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[11]),
        .Q(\d_r_reg[31]_0 [11]));
  FDCE \d_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[12]),
        .Q(\d_r_reg[31]_0 [12]));
  FDCE \d_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[13]),
        .Q(\d_r_reg[31]_0 [13]));
  FDCE \d_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[14]),
        .Q(\d_r_reg[31]_0 [14]));
  FDCE \d_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[15]),
        .Q(\d_r_reg[31]_0 [15]));
  FDCE \d_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[16]),
        .Q(\d_r_reg[31]_0 [16]));
  FDCE \d_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[17]),
        .Q(\d_r_reg[31]_0 [17]));
  FDCE \d_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[18]),
        .Q(\d_r_reg[31]_0 [18]));
  FDCE \d_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[19]),
        .Q(\d_r_reg[31]_0 [19]));
  FDCE \d_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[1]),
        .Q(\d_r_reg[31]_0 [1]));
  FDCE \d_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[20]),
        .Q(\d_r_reg[31]_0 [20]));
  FDCE \d_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[21]),
        .Q(\d_r_reg[31]_0 [21]));
  FDCE \d_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[22]),
        .Q(\d_r_reg[31]_0 [22]));
  FDCE \d_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[23]),
        .Q(\d_r_reg[31]_0 [23]));
  FDCE \d_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[24]),
        .Q(\d_r_reg[31]_0 [24]));
  FDCE \d_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[25]),
        .Q(\d_r_reg[31]_0 [25]));
  FDCE \d_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[26]),
        .Q(\d_r_reg[31]_0 [26]));
  FDCE \d_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[27]),
        .Q(\d_r_reg[31]_0 [27]));
  FDCE \d_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[28]),
        .Q(\d_r_reg[31]_0 [28]));
  FDCE \d_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[29]),
        .Q(\d_r_reg[31]_0 [29]));
  FDCE \d_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[2]),
        .Q(\d_r_reg[31]_0 [2]));
  FDCE \d_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[30]),
        .Q(\d_r_reg[31]_0 [30]));
  FDCE \d_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[31]),
        .Q(\d_r_reg[31]_0 [31]));
  FDCE \d_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[3]),
        .Q(\d_r_reg[31]_0 [3]));
  FDCE \d_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[4]),
        .Q(\d_r_reg[31]_0 [4]));
  FDCE \d_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[5]),
        .Q(\d_r_reg[31]_0 [5]));
  FDCE \d_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[6]),
        .Q(\d_r_reg[31]_0 [6]));
  FDCE \d_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[7]),
        .Q(\d_r_reg[31]_0 [7]));
  FDCE \d_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[8]),
        .Q(\d_r_reg[31]_0 [8]));
  FDCE \d_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_2 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[9]),
        .Q(\d_r_reg[31]_0 [9]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \e_r[31]_i_1 
       (.I0(Q[0]),
        .I1(s00_axi_wvalid_0),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .O(E));
  FDCE \e_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[0]),
        .Q(\e_r_reg[31]_0 [0]));
  FDCE \e_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[10]),
        .Q(\e_r_reg[31]_0 [10]));
  FDCE \e_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[11]),
        .Q(\e_r_reg[31]_0 [11]));
  FDCE \e_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[12]),
        .Q(\e_r_reg[31]_0 [12]));
  FDCE \e_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[13]),
        .Q(\e_r_reg[31]_0 [13]));
  FDCE \e_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[14]),
        .Q(\e_r_reg[31]_0 [14]));
  FDCE \e_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[15]),
        .Q(\e_r_reg[31]_0 [15]));
  FDCE \e_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[16]),
        .Q(\e_r_reg[31]_0 [16]));
  FDCE \e_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[17]),
        .Q(\e_r_reg[31]_0 [17]));
  FDCE \e_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[18]),
        .Q(\e_r_reg[31]_0 [18]));
  FDCE \e_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[19]),
        .Q(\e_r_reg[31]_0 [19]));
  FDCE \e_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[1]),
        .Q(\e_r_reg[31]_0 [1]));
  FDCE \e_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[20]),
        .Q(\e_r_reg[31]_0 [20]));
  FDCE \e_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[21]),
        .Q(\e_r_reg[31]_0 [21]));
  FDCE \e_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[22]),
        .Q(\e_r_reg[31]_0 [22]));
  FDCE \e_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[23]),
        .Q(\e_r_reg[31]_0 [23]));
  FDCE \e_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[24]),
        .Q(\e_r_reg[31]_0 [24]));
  FDCE \e_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[25]),
        .Q(\e_r_reg[31]_0 [25]));
  FDCE \e_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[26]),
        .Q(\e_r_reg[31]_0 [26]));
  FDCE \e_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[27]),
        .Q(\e_r_reg[31]_0 [27]));
  FDCE \e_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[28]),
        .Q(\e_r_reg[31]_0 [28]));
  FDCE \e_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[29]),
        .Q(\e_r_reg[31]_0 [29]));
  FDCE \e_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[2]),
        .Q(\e_r_reg[31]_0 [2]));
  FDCE \e_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[30]),
        .Q(\e_r_reg[31]_0 [30]));
  FDCE \e_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[31]),
        .Q(\e_r_reg[31]_0 [31]));
  FDCE \e_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[3]),
        .Q(\e_r_reg[31]_0 [3]));
  FDCE \e_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[4]),
        .Q(\e_r_reg[31]_0 [4]));
  FDCE \e_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[5]),
        .Q(\e_r_reg[31]_0 [5]));
  FDCE \e_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[6]),
        .Q(\e_r_reg[31]_0 [6]));
  FDCE \e_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[7]),
        .Q(\e_r_reg[31]_0 [7]));
  FDCE \e_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[8]),
        .Q(\e_r_reg[31]_0 [8]));
  FDCE \e_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[9]),
        .Q(\e_r_reg[31]_0 [9]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \f_r[31]_i_1__0 
       (.I0(Q[0]),
        .I1(s00_axi_wvalid_0),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .O(\axi_awaddr_reg[2]_1 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \f_r[31]_i_2 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(\e_r_reg[0]_0 ),
        .I3(\e_r_reg[0]_1 ),
        .O(s00_axi_wvalid_0));
  FDCE \f_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[0]),
        .Q(\f_r_reg[31]_0 [0]));
  FDCE \f_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[10]),
        .Q(\f_r_reg[31]_0 [10]));
  FDCE \f_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[11]),
        .Q(\f_r_reg[31]_0 [11]));
  FDCE \f_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[12]),
        .Q(\f_r_reg[31]_0 [12]));
  FDCE \f_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[13]),
        .Q(\f_r_reg[31]_0 [13]));
  FDCE \f_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[14]),
        .Q(\f_r_reg[31]_0 [14]));
  FDCE \f_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[15]),
        .Q(\f_r_reg[31]_0 [15]));
  FDCE \f_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[16]),
        .Q(\f_r_reg[31]_0 [16]));
  FDCE \f_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[17]),
        .Q(\f_r_reg[31]_0 [17]));
  FDCE \f_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[18]),
        .Q(\f_r_reg[31]_0 [18]));
  FDCE \f_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[19]),
        .Q(\f_r_reg[31]_0 [19]));
  FDCE \f_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[1]),
        .Q(\f_r_reg[31]_0 [1]));
  FDCE \f_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[20]),
        .Q(\f_r_reg[31]_0 [20]));
  FDCE \f_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[21]),
        .Q(\f_r_reg[31]_0 [21]));
  FDCE \f_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[22]),
        .Q(\f_r_reg[31]_0 [22]));
  FDCE \f_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[23]),
        .Q(\f_r_reg[31]_0 [23]));
  FDCE \f_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[24]),
        .Q(\f_r_reg[31]_0 [24]));
  FDCE \f_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[25]),
        .Q(\f_r_reg[31]_0 [25]));
  FDCE \f_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[26]),
        .Q(\f_r_reg[31]_0 [26]));
  FDCE \f_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[27]),
        .Q(\f_r_reg[31]_0 [27]));
  FDCE \f_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[28]),
        .Q(\f_r_reg[31]_0 [28]));
  FDCE \f_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[29]),
        .Q(\f_r_reg[31]_0 [29]));
  FDCE \f_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[2]),
        .Q(\f_r_reg[31]_0 [2]));
  FDCE \f_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[30]),
        .Q(\f_r_reg[31]_0 [30]));
  FDCE \f_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[31]),
        .Q(\f_r_reg[31]_0 [31]));
  FDCE \f_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[3]),
        .Q(\f_r_reg[31]_0 [3]));
  FDCE \f_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[4]),
        .Q(\f_r_reg[31]_0 [4]));
  FDCE \f_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[5]),
        .Q(\f_r_reg[31]_0 [5]));
  FDCE \f_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[6]),
        .Q(\f_r_reg[31]_0 [6]));
  FDCE \f_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[7]),
        .Q(\f_r_reg[31]_0 [7]));
  FDCE \f_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[8]),
        .Q(\f_r_reg[31]_0 [8]));
  FDCE \f_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr_reg[2]_1 ),
        .CLR(valid_b_r_reg_1),
        .D(s00_axi_wdata[9]),
        .Q(\f_r_reg[31]_0 [9]));
  FDCE valid_a_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(valid_b_r_reg_1),
        .D(valid_a_r_reg_0),
        .Q(valid_a_r));
  FDCE valid_b_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(valid_b_r_reg_1),
        .D(valid_b_r_reg_0),
        .Q(valid_b_r));
  FDCE valid_c_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(valid_b_r_reg_1),
        .D(valid_c_r_reg_0),
        .Q(valid_c_r));
  FDCE valid_d_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(valid_b_r_reg_1),
        .D(valid_d_r_reg_1),
        .Q(valid_d_r));
  FDCE valid_e_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(valid_b_r_reg_1),
        .D(valid_e_r_reg_0),
        .Q(valid_e_r));
  FDCE valid_f_r_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(valid_b_r_reg_1),
        .D(valid_f_r_reg_0),
        .Q(valid_f_r));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Output_Memory
   (Q,
    E,
    D,
    s00_axi_aclk,
    \h_r_reg[0]_0 );
  output [31:0]Q;
  input [0:0]E;
  input [31:0]D;
  input s00_axi_aclk;
  input \h_r_reg[0]_0 ;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire \h_r_reg[0]_0 ;
  wire s00_axi_aclk;

  FDCE \h_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \h_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \h_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \h_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \h_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \h_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \h_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \h_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \h_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \h_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \h_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \h_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \h_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \h_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \h_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \h_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \h_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[24]),
        .Q(Q[24]));
  FDCE \h_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[25]),
        .Q(Q[25]));
  FDCE \h_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[26]),
        .Q(Q[26]));
  FDCE \h_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[27]),
        .Q(Q[27]));
  FDCE \h_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[28]),
        .Q(Q[28]));
  FDCE \h_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[29]),
        .Q(Q[29]));
  FDCE \h_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \h_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[30]),
        .Q(Q[30]));
  FDCE \h_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[31]),
        .Q(Q[31]));
  FDCE \h_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \h_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \h_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \h_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \h_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \h_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \h_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\h_r_reg[0]_0 ),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* CHECK_LICENSE_TYPE = "SoC_H_Acceleration_IP_0_1,H_Acceleration_IP_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "H_Acceleration_IP_v1_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN SoC_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [5:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN SoC_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_H_Acceleration_IP_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid));
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
