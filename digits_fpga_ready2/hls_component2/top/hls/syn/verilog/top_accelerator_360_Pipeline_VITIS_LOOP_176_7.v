// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module top_accelerator_360_Pipeline_VITIS_LOOP_176_7 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        mul_ln177,
        input_0_0_address0,
        input_0_0_ce0,
        input_0_0_q0,
        input_1_0_address0,
        input_1_0_ce0,
        input_1_0_q0,
        input_2_0_address0,
        input_2_0_ce0,
        input_2_0_q0,
        input_3_0_address0,
        input_3_0_ce0,
        input_3_0_q0,
        input_4_0_address0,
        input_4_0_ce0,
        input_4_0_q0,
        input_5_0_address0,
        input_5_0_ce0,
        input_5_0_q0,
        input_6_0_address0,
        input_6_0_ce0,
        input_6_0_q0,
        input_7_0_address0,
        input_7_0_ce0,
        input_7_0_q0,
        input_8_0_address0,
        input_8_0_ce0,
        input_8_0_q0,
        input_9_0_address0,
        input_9_0_ce0,
        input_9_0_q0,
        input_10_0_address0,
        input_10_0_ce0,
        input_10_0_q0,
        input_11_0_address0,
        input_11_0_ce0,
        input_11_0_q0,
        input_12_0_address0,
        input_12_0_ce0,
        input_12_0_q0,
        input_ref_0_address0,
        input_ref_0_ce0,
        input_ref_0_we0,
        input_ref_0_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [10:0] mul_ln177;
output  [10:0] input_0_0_address0;
output   input_0_0_ce0;
input  [4:0] input_0_0_q0;
output  [10:0] input_1_0_address0;
output   input_1_0_ce0;
input  [4:0] input_1_0_q0;
output  [10:0] input_2_0_address0;
output   input_2_0_ce0;
input  [4:0] input_2_0_q0;
output  [10:0] input_3_0_address0;
output   input_3_0_ce0;
input  [4:0] input_3_0_q0;
output  [10:0] input_4_0_address0;
output   input_4_0_ce0;
input  [4:0] input_4_0_q0;
output  [10:0] input_5_0_address0;
output   input_5_0_ce0;
input  [4:0] input_5_0_q0;
output  [10:0] input_6_0_address0;
output   input_6_0_ce0;
input  [4:0] input_6_0_q0;
output  [10:0] input_7_0_address0;
output   input_7_0_ce0;
input  [4:0] input_7_0_q0;
output  [10:0] input_8_0_address0;
output   input_8_0_ce0;
input  [4:0] input_8_0_q0;
output  [10:0] input_9_0_address0;
output   input_9_0_ce0;
input  [4:0] input_9_0_q0;
output  [10:0] input_10_0_address0;
output   input_10_0_ce0;
input  [4:0] input_10_0_q0;
output  [10:0] input_11_0_address0;
output   input_11_0_ce0;
input  [4:0] input_11_0_q0;
output  [10:0] input_12_0_address0;
output   input_12_0_ce0;
input  [4:0] input_12_0_q0;
output  [5:0] input_ref_0_address0;
output   input_ref_0_ce0;
output   input_ref_0_we0;
output  [21:0] input_ref_0_d0;

reg ap_idle;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln176_fu_322_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] i_37_reg_516;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln177_1_fu_363_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln176_fu_413_p1;
reg   [6:0] phi_urem_fu_104;
wire   [6:0] select_ln176_fu_405_p3;
wire    ap_loop_init;
reg   [13:0] phi_mul_fu_108;
wire   [13:0] add_ln176_2_fu_337_p2;
reg   [13:0] ap_sig_allocacmp_phi_mul_load;
reg   [6:0] i_fu_112;
wire   [6:0] add_ln176_fu_328_p2;
reg   [6:0] ap_sig_allocacmp_i_37;
reg    input_0_0_ce0_local;
reg    input_1_0_ce0_local;
reg    input_2_0_ce0_local;
reg    input_3_0_ce0_local;
reg    input_4_0_ce0_local;
reg    input_5_0_ce0_local;
reg    input_6_0_ce0_local;
reg    input_7_0_ce0_local;
reg    input_8_0_ce0_local;
reg    input_9_0_ce0_local;
reg    input_10_0_ce0_local;
reg    input_11_0_ce0_local;
reg    input_12_0_ce0_local;
reg    input_ref_0_we0_local;
wire   [21:0] shl_ln_fu_481_p3;
reg    input_ref_0_ce0_local;
wire   [2:0] tmp_fu_343_p4;
wire   [10:0] zext_ln177_fu_353_p1;
wire   [10:0] add_ln177_fu_357_p2;
wire   [6:0] add_ln176_1_fu_393_p2;
wire   [0:0] icmp_ln176_1_fu_399_p2;
wire   [4:0] sext_ln_fu_421_p27;
wire   [3:0] sext_ln_fu_421_p28;
wire   [4:0] sext_ln_fu_421_p29;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] sext_ln_fu_421_p1;
wire   [3:0] sext_ln_fu_421_p3;
wire   [3:0] sext_ln_fu_421_p5;
wire   [3:0] sext_ln_fu_421_p7;
wire   [3:0] sext_ln_fu_421_p9;
wire   [3:0] sext_ln_fu_421_p11;
wire   [3:0] sext_ln_fu_421_p13;
wire   [3:0] sext_ln_fu_421_p15;
wire  signed [3:0] sext_ln_fu_421_p17;
wire  signed [3:0] sext_ln_fu_421_p19;
wire  signed [3:0] sext_ln_fu_421_p21;
wire  signed [3:0] sext_ln_fu_421_p23;
wire  signed [3:0] sext_ln_fu_421_p25;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 phi_urem_fu_104 = 7'd0;
#0 phi_mul_fu_108 = 14'd0;
#0 i_fu_112 = 7'd0;
#0 ap_done_reg = 1'b0;
end

(* dissolve_hierarchy = "yes" *) top_sparsemux_27_4_5_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 4'h0 ),
    .din0_WIDTH( 5 ),
    .CASE1( 4'h1 ),
    .din1_WIDTH( 5 ),
    .CASE2( 4'h2 ),
    .din2_WIDTH( 5 ),
    .CASE3( 4'h3 ),
    .din3_WIDTH( 5 ),
    .CASE4( 4'h4 ),
    .din4_WIDTH( 5 ),
    .CASE5( 4'h5 ),
    .din5_WIDTH( 5 ),
    .CASE6( 4'h6 ),
    .din6_WIDTH( 5 ),
    .CASE7( 4'h7 ),
    .din7_WIDTH( 5 ),
    .CASE8( 4'h8 ),
    .din8_WIDTH( 5 ),
    .CASE9( 4'h9 ),
    .din9_WIDTH( 5 ),
    .CASE10( 4'hA ),
    .din10_WIDTH( 5 ),
    .CASE11( 4'hB ),
    .din11_WIDTH( 5 ),
    .CASE12( 4'hC ),
    .din12_WIDTH( 5 ),
    .def_WIDTH( 5 ),
    .sel_WIDTH( 4 ),
    .dout_WIDTH( 5 ))
sparsemux_27_4_5_1_1_U1551(
    .din0(input_0_0_q0),
    .din1(input_1_0_q0),
    .din2(input_2_0_q0),
    .din3(input_3_0_q0),
    .din4(input_4_0_q0),
    .din5(input_5_0_q0),
    .din6(input_6_0_q0),
    .din7(input_7_0_q0),
    .din8(input_8_0_q0),
    .din9(input_9_0_q0),
    .din10(input_10_0_q0),
    .din11(input_11_0_q0),
    .din12(input_12_0_q0),
    .def(sext_ln_fu_421_p27),
    .sel(sext_ln_fu_421_p28),
    .dout(sext_ln_fu_421_p29)
);

top_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready_sig),
    .ap_done(ap_done_sig),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln176_fu_322_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_112 <= add_ln176_fu_328_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_112 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln176_fu_322_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            phi_mul_fu_108 <= add_ln176_2_fu_337_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            phi_mul_fu_108 <= 14'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            phi_urem_fu_104 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            phi_urem_fu_104 <= select_ln176_fu_405_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_37_reg_516 <= ap_sig_allocacmp_i_37;
    end
end

always @ (*) begin
    if (((icmp_ln176_fu_322_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_37 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_37 = i_fu_112;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_phi_mul_load = 14'd0;
    end else begin
        ap_sig_allocacmp_phi_mul_load = phi_mul_fu_108;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_0_0_ce0_local = 1'b1;
    end else begin
        input_0_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_10_0_ce0_local = 1'b1;
    end else begin
        input_10_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_11_0_ce0_local = 1'b1;
    end else begin
        input_11_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_12_0_ce0_local = 1'b1;
    end else begin
        input_12_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_1_0_ce0_local = 1'b1;
    end else begin
        input_1_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_2_0_ce0_local = 1'b1;
    end else begin
        input_2_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_3_0_ce0_local = 1'b1;
    end else begin
        input_3_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_4_0_ce0_local = 1'b1;
    end else begin
        input_4_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_5_0_ce0_local = 1'b1;
    end else begin
        input_5_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_6_0_ce0_local = 1'b1;
    end else begin
        input_6_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_7_0_ce0_local = 1'b1;
    end else begin
        input_7_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_8_0_ce0_local = 1'b1;
    end else begin
        input_8_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_9_0_ce0_local = 1'b1;
    end else begin
        input_9_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_ref_0_ce0_local = 1'b1;
    end else begin
        input_ref_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_ref_0_we0_local = 1'b1;
    end else begin
        input_ref_0_we0_local = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln176_1_fu_393_p2 = (phi_urem_fu_104 + 7'd1);

assign add_ln176_2_fu_337_p2 = (ap_sig_allocacmp_phi_mul_load + 14'd158);

assign add_ln176_fu_328_p2 = (ap_sig_allocacmp_i_37 + 7'd1);

assign add_ln177_fu_357_p2 = (mul_ln177 + zext_ln177_fu_353_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_ready = ap_ready_sig;

assign icmp_ln176_1_fu_399_p2 = ((add_ln176_1_fu_393_p2 < 7'd13) ? 1'b1 : 1'b0);

assign icmp_ln176_fu_322_p2 = ((ap_sig_allocacmp_i_37 == 7'd64) ? 1'b1 : 1'b0);

assign input_0_0_address0 = zext_ln177_1_fu_363_p1;

assign input_0_0_ce0 = input_0_0_ce0_local;

assign input_10_0_address0 = zext_ln177_1_fu_363_p1;

assign input_10_0_ce0 = input_10_0_ce0_local;

assign input_11_0_address0 = zext_ln177_1_fu_363_p1;

assign input_11_0_ce0 = input_11_0_ce0_local;

assign input_12_0_address0 = zext_ln177_1_fu_363_p1;

assign input_12_0_ce0 = input_12_0_ce0_local;

assign input_1_0_address0 = zext_ln177_1_fu_363_p1;

assign input_1_0_ce0 = input_1_0_ce0_local;

assign input_2_0_address0 = zext_ln177_1_fu_363_p1;

assign input_2_0_ce0 = input_2_0_ce0_local;

assign input_3_0_address0 = zext_ln177_1_fu_363_p1;

assign input_3_0_ce0 = input_3_0_ce0_local;

assign input_4_0_address0 = zext_ln177_1_fu_363_p1;

assign input_4_0_ce0 = input_4_0_ce0_local;

assign input_5_0_address0 = zext_ln177_1_fu_363_p1;

assign input_5_0_ce0 = input_5_0_ce0_local;

assign input_6_0_address0 = zext_ln177_1_fu_363_p1;

assign input_6_0_ce0 = input_6_0_ce0_local;

assign input_7_0_address0 = zext_ln177_1_fu_363_p1;

assign input_7_0_ce0 = input_7_0_ce0_local;

assign input_8_0_address0 = zext_ln177_1_fu_363_p1;

assign input_8_0_ce0 = input_8_0_ce0_local;

assign input_9_0_address0 = zext_ln177_1_fu_363_p1;

assign input_9_0_ce0 = input_9_0_ce0_local;

assign input_ref_0_address0 = zext_ln176_fu_413_p1;

assign input_ref_0_ce0 = input_ref_0_ce0_local;

assign input_ref_0_d0 = shl_ln_fu_481_p3;

assign input_ref_0_we0 = input_ref_0_we0_local;

assign select_ln176_fu_405_p3 = ((icmp_ln176_1_fu_399_p2[0:0] == 1'b1) ? add_ln176_1_fu_393_p2 : 7'd0);

assign sext_ln_fu_421_p27 = 'bx;

assign sext_ln_fu_421_p28 = phi_urem_fu_104[3:0];

assign shl_ln_fu_481_p3 = {{sext_ln_fu_421_p29}, {17'd0}};

assign tmp_fu_343_p4 = {{ap_sig_allocacmp_phi_mul_load[13:11]}};

assign zext_ln176_fu_413_p1 = i_37_reg_516;

assign zext_ln177_1_fu_363_p1 = add_ln177_fu_357_p2;

assign zext_ln177_fu_353_p1 = tmp_fu_343_p4;

endmodule //top_accelerator_360_Pipeline_VITIS_LOOP_176_7
