// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:top:1.0
// IP Revision: 2114036720

(* X_CORE_INFO = "top,Vivado 2024.1" *)
(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *)
(* CORE_GENERATION_INFO = "design_1_top_0_0,top,{x_ipProduct=Vivado 2024.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=top,x_ipVersion=1.0,x_ipCoreRevision=2114036720,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_BUS_ADDR_WIDTH=6,C_S_AXI_BUS_DATA_WIDTH=32}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_top_0_0 (
  s_axi_BUS_ARADDR,
  s_axi_BUS_ARREADY,
  s_axi_BUS_ARVALID,
  s_axi_BUS_AWADDR,
  s_axi_BUS_AWREADY,
  s_axi_BUS_AWVALID,
  s_axi_BUS_BREADY,
  s_axi_BUS_BRESP,
  s_axi_BUS_BVALID,
  s_axi_BUS_RDATA,
  s_axi_BUS_RREADY,
  s_axi_BUS_RRESP,
  s_axi_BUS_RVALID,
  s_axi_BUS_WDATA,
  s_axi_BUS_WREADY,
  s_axi_BUS_WSTRB,
  s_axi_BUS_WVALID,
  ap_clk,
  ap_rst_n,
  ap_done,
  ap_idle,
  ap_ready,
  ap_start
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS ARADDR" *)
input wire [5 : 0] s_axi_BUS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS ARREADY" *)
output wire s_axi_BUS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS ARVALID" *)
input wire s_axi_BUS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS AWADDR" *)
input wire [5 : 0] s_axi_BUS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS AWREADY" *)
output wire s_axi_BUS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS AWVALID" *)
input wire s_axi_BUS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS BREADY" *)
input wire s_axi_BUS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS BRESP" *)
output wire [1 : 0] s_axi_BUS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS BVALID" *)
output wire s_axi_BUS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS RDATA" *)
output wire [31 : 0] s_axi_BUS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS RREADY" *)
input wire s_axi_BUS_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS RRESP" *)
output wire [1 : 0] s_axi_BUS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS RVALID" *)
output wire s_axi_BUS_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS WDATA" *)
input wire [31 : 0] s_axi_BUS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS WREADY" *)
output wire s_axi_BUS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS WSTRB" *)
input wire [3 : 0] s_axi_BUS_WSTRB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_BUS, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999001, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, \
NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_BUS WVALID" *)
input wire s_axi_BUS_WVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_BUS, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  top #(
    .C_S_AXI_BUS_ADDR_WIDTH(6),
    .C_S_AXI_BUS_DATA_WIDTH(32)
  ) inst (
    .s_axi_BUS_ARADDR(s_axi_BUS_ARADDR),
    .s_axi_BUS_ARREADY(s_axi_BUS_ARREADY),
    .s_axi_BUS_ARVALID(s_axi_BUS_ARVALID),
    .s_axi_BUS_AWADDR(s_axi_BUS_AWADDR),
    .s_axi_BUS_AWREADY(s_axi_BUS_AWREADY),
    .s_axi_BUS_AWVALID(s_axi_BUS_AWVALID),
    .s_axi_BUS_BREADY(s_axi_BUS_BREADY),
    .s_axi_BUS_BRESP(s_axi_BUS_BRESP),
    .s_axi_BUS_BVALID(s_axi_BUS_BVALID),
    .s_axi_BUS_RDATA(s_axi_BUS_RDATA),
    .s_axi_BUS_RREADY(s_axi_BUS_RREADY),
    .s_axi_BUS_RRESP(s_axi_BUS_RRESP),
    .s_axi_BUS_RVALID(s_axi_BUS_RVALID),
    .s_axi_BUS_WDATA(s_axi_BUS_WDATA),
    .s_axi_BUS_WREADY(s_axi_BUS_WREADY),
    .s_axi_BUS_WSTRB(s_axi_BUS_WSTRB),
    .s_axi_BUS_WVALID(s_axi_BUS_WVALID),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .ap_start(ap_start)
  );
endmodule
