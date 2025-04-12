// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module top_backProp_64_8_4_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        w_l_plus1_0_address0,
        w_l_plus1_0_ce0,
        w_l_plus1_0_q0,
        w_l_plus1_1_address0,
        w_l_plus1_1_ce0,
        w_l_plus1_1_q0,
        w_l_plus1_2_address0,
        w_l_plus1_2_ce0,
        w_l_plus1_2_q0,
        w_l_plus1_3_address0,
        w_l_plus1_3_ce0,
        w_l_plus1_3_q0,
        w_l_plus1_4_address0,
        w_l_plus1_4_ce0,
        w_l_plus1_4_q0,
        w_l_plus1_5_address0,
        w_l_plus1_5_ce0,
        w_l_plus1_5_q0,
        w_l_plus1_6_address0,
        w_l_plus1_6_ce0,
        w_l_plus1_6_q0,
        w_l_plus1_7_address0,
        w_l_plus1_7_ce0,
        w_l_plus1_7_q0,
        w_l_plus1_T_address0,
        w_l_plus1_T_ce0,
        w_l_plus1_T_we0,
        w_l_plus1_T_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] w_l_plus1_0_address0;
output   w_l_plus1_0_ce0;
input  [24:0] w_l_plus1_0_q0;
output  [1:0] w_l_plus1_1_address0;
output   w_l_plus1_1_ce0;
input  [24:0] w_l_plus1_1_q0;
output  [1:0] w_l_plus1_2_address0;
output   w_l_plus1_2_ce0;
input  [24:0] w_l_plus1_2_q0;
output  [1:0] w_l_plus1_3_address0;
output   w_l_plus1_3_ce0;
input  [24:0] w_l_plus1_3_q0;
output  [1:0] w_l_plus1_4_address0;
output   w_l_plus1_4_ce0;
input  [24:0] w_l_plus1_4_q0;
output  [1:0] w_l_plus1_5_address0;
output   w_l_plus1_5_ce0;
input  [24:0] w_l_plus1_5_q0;
output  [1:0] w_l_plus1_6_address0;
output   w_l_plus1_6_ce0;
input  [24:0] w_l_plus1_6_q0;
output  [1:0] w_l_plus1_7_address0;
output   w_l_plus1_7_ce0;
input  [24:0] w_l_plus1_7_q0;
output  [4:0] w_l_plus1_T_address0;
output   w_l_plus1_T_ce0;
output   w_l_plus1_T_we0;
output  [24:0] w_l_plus1_T_d0;

reg ap_idle;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln44_fu_221_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [2:0] trunc_ln44_fu_259_p1;
reg   [2:0] trunc_ln44_reg_389;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] select_ln44_2_fu_263_p3;
reg   [2:0] select_ln44_2_reg_395;
wire   [63:0] zext_ln44_fu_271_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln46_fu_320_p1;
reg   [3:0] j_fu_74;
wire   [3:0] j_2_fu_283_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_j_load;
reg   [2:0] i_fu_78;
reg   [2:0] ap_sig_allocacmp_i_load;
reg   [5:0] indvar_flatten_fu_82;
wire   [5:0] add_ln44_fu_227_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten_load;
reg    w_l_plus1_0_ce0_local;
reg    w_l_plus1_1_ce0_local;
reg    w_l_plus1_2_ce0_local;
reg    w_l_plus1_3_ce0_local;
reg    w_l_plus1_4_ce0_local;
reg    w_l_plus1_5_ce0_local;
reg    w_l_plus1_6_ce0_local;
reg    w_l_plus1_7_ce0_local;
reg    w_l_plus1_T_we0_local;
wire   [24:0] tmp_fu_325_p19;
reg    w_l_plus1_T_ce0_local;
wire   [0:0] icmp_ln45_fu_245_p2;
wire   [3:0] select_ln44_fu_251_p3;
wire   [2:0] i_33_fu_239_p2;
wire   [4:0] tmp_2_fu_307_p3;
wire   [4:0] select_ln44_2_cast_fu_304_p1;
wire   [4:0] add_ln46_fu_314_p2;
wire   [24:0] tmp_fu_325_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_fu_325_p1;
wire   [2:0] tmp_fu_325_p3;
wire   [2:0] tmp_fu_325_p5;
wire   [2:0] tmp_fu_325_p7;
wire  signed [2:0] tmp_fu_325_p9;
wire  signed [2:0] tmp_fu_325_p11;
wire  signed [2:0] tmp_fu_325_p13;
wire  signed [2:0] tmp_fu_325_p15;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 j_fu_74 = 4'd0;
#0 i_fu_78 = 3'd0;
#0 indvar_flatten_fu_82 = 6'd0;
#0 ap_done_reg = 1'b0;
end

(* dissolve_hierarchy = "yes" *) top_sparsemux_17_3_25_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .CASE0( 3'h0 ),
    .din0_WIDTH( 25 ),
    .CASE1( 3'h1 ),
    .din1_WIDTH( 25 ),
    .CASE2( 3'h2 ),
    .din2_WIDTH( 25 ),
    .CASE3( 3'h3 ),
    .din3_WIDTH( 25 ),
    .CASE4( 3'h4 ),
    .din4_WIDTH( 25 ),
    .CASE5( 3'h5 ),
    .din5_WIDTH( 25 ),
    .CASE6( 3'h6 ),
    .din6_WIDTH( 25 ),
    .CASE7( 3'h7 ),
    .din7_WIDTH( 25 ),
    .def_WIDTH( 25 ),
    .sel_WIDTH( 3 ),
    .dout_WIDTH( 25 ))
sparsemux_17_3_25_1_1_U547(
    .din0(w_l_plus1_0_q0),
    .din1(w_l_plus1_1_q0),
    .din2(w_l_plus1_2_q0),
    .din3(w_l_plus1_3_q0),
    .din4(w_l_plus1_4_q0),
    .din5(w_l_plus1_5_q0),
    .din6(w_l_plus1_6_q0),
    .din7(w_l_plus1_7_q0),
    .def(tmp_fu_325_p17),
    .sel(trunc_ln44_reg_389),
    .dout(tmp_fu_325_p19)
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
        if (((icmp_ln44_fu_221_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_78 <= select_ln44_2_fu_263_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_78 <= 3'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln44_fu_221_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_82 <= add_ln44_fu_227_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_82 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln44_fu_221_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_74 <= j_2_fu_283_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_74 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln44_2_reg_395 <= select_ln44_2_fu_263_p3;
        trunc_ln44_reg_389 <= trunc_ln44_fu_259_p1;
    end
end

always @ (*) begin
    if (((icmp_ln44_fu_221_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_load = 3'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_78;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_82;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 4'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_74;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w_l_plus1_0_ce0_local = 1'b1;
    end else begin
        w_l_plus1_0_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w_l_plus1_1_ce0_local = 1'b1;
    end else begin
        w_l_plus1_1_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w_l_plus1_2_ce0_local = 1'b1;
    end else begin
        w_l_plus1_2_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w_l_plus1_3_ce0_local = 1'b1;
    end else begin
        w_l_plus1_3_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w_l_plus1_4_ce0_local = 1'b1;
    end else begin
        w_l_plus1_4_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w_l_plus1_5_ce0_local = 1'b1;
    end else begin
        w_l_plus1_5_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w_l_plus1_6_ce0_local = 1'b1;
    end else begin
        w_l_plus1_6_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w_l_plus1_7_ce0_local = 1'b1;
    end else begin
        w_l_plus1_7_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w_l_plus1_T_ce0_local = 1'b1;
    end else begin
        w_l_plus1_T_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        w_l_plus1_T_we0_local = 1'b1;
    end else begin
        w_l_plus1_T_we0_local = 1'b0;
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

assign add_ln44_fu_227_p2 = (ap_sig_allocacmp_indvar_flatten_load + 6'd1);

assign add_ln46_fu_314_p2 = (tmp_2_fu_307_p3 + select_ln44_2_cast_fu_304_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_ready = ap_ready_sig;

assign i_33_fu_239_p2 = (ap_sig_allocacmp_i_load + 3'd1);

assign icmp_ln44_fu_221_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln45_fu_245_p2 = ((ap_sig_allocacmp_j_load == 4'd8) ? 1'b1 : 1'b0);

assign j_2_fu_283_p2 = (select_ln44_fu_251_p3 + 4'd1);

assign select_ln44_2_cast_fu_304_p1 = select_ln44_2_reg_395;

assign select_ln44_2_fu_263_p3 = ((icmp_ln45_fu_245_p2[0:0] == 1'b1) ? i_33_fu_239_p2 : ap_sig_allocacmp_i_load);

assign select_ln44_fu_251_p3 = ((icmp_ln45_fu_245_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_j_load);

assign tmp_2_fu_307_p3 = {{trunc_ln44_reg_389}, {2'd0}};

assign tmp_fu_325_p17 = 'bx;

assign trunc_ln44_fu_259_p1 = select_ln44_fu_251_p3[2:0];

assign w_l_plus1_0_address0 = zext_ln44_fu_271_p1;

assign w_l_plus1_0_ce0 = w_l_plus1_0_ce0_local;

assign w_l_plus1_1_address0 = zext_ln44_fu_271_p1;

assign w_l_plus1_1_ce0 = w_l_plus1_1_ce0_local;

assign w_l_plus1_2_address0 = zext_ln44_fu_271_p1;

assign w_l_plus1_2_ce0 = w_l_plus1_2_ce0_local;

assign w_l_plus1_3_address0 = zext_ln44_fu_271_p1;

assign w_l_plus1_3_ce0 = w_l_plus1_3_ce0_local;

assign w_l_plus1_4_address0 = zext_ln44_fu_271_p1;

assign w_l_plus1_4_ce0 = w_l_plus1_4_ce0_local;

assign w_l_plus1_5_address0 = zext_ln44_fu_271_p1;

assign w_l_plus1_5_ce0 = w_l_plus1_5_ce0_local;

assign w_l_plus1_6_address0 = zext_ln44_fu_271_p1;

assign w_l_plus1_6_ce0 = w_l_plus1_6_ce0_local;

assign w_l_plus1_7_address0 = zext_ln44_fu_271_p1;

assign w_l_plus1_7_ce0 = w_l_plus1_7_ce0_local;

assign w_l_plus1_T_address0 = zext_ln46_fu_320_p1;

assign w_l_plus1_T_ce0 = w_l_plus1_T_ce0_local;

assign w_l_plus1_T_d0 = tmp_fu_325_p19;

assign w_l_plus1_T_we0 = w_l_plus1_T_we0_local;

assign zext_ln44_fu_271_p1 = select_ln44_2_fu_263_p3;

assign zext_ln46_fu_320_p1 = add_ln46_fu_314_p2;

endmodule //top_backProp_64_8_4_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2
