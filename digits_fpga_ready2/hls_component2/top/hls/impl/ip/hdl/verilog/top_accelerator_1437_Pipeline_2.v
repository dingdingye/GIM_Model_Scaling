// ==============================================================
// Generated by Vitis HLS v2024.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module top_accelerator_1437_Pipeline_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_result_5,
        add_ln139,
        p_first_assign_6,
        result_l3_address0,
        result_l3_ce0,
        result_l3_q0,
        result_l3_address1,
        result_l3_ce1,
        result_l3_q1,
        add_ln871_out,
        add_ln871_out_ap_vld,
        ap_return
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] p_result_5;
input  [63:0] add_ln139;
input  [5:0] p_first_assign_6;
output  [3:0] result_l3_address0;
output   result_l3_ce0;
input  [24:0] result_l3_q0;
output  [3:0] result_l3_address1;
output   result_l3_ce1;
input  [24:0] result_l3_q1;
output  [5:0] add_ln871_out;
output   add_ln871_out_ap_vld;
output  [1:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg add_ln871_out_ap_vld;
reg[1:0] ap_return;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln880_fu_148_p2;
reg   [0:0] icmp_ln880_reg_221;
wire    ap_CS_fsm_state2;
wire   [5:0] add_ln871_fu_153_p2;
reg   [5:0] add_ln871_reg_225;
wire   [0:0] icmp_ln43_fu_188_p2;
reg   [0:0] icmp_ln43_reg_240;
wire    ap_CS_fsm_state3;
wire   [0:0] xor_ln880_fu_200_p2;
reg   [0:0] idx172_reg_100;
wire   [0:0] icmp_ln43_2_fu_194_p2;
reg   [1:0] ap_phi_mux_UnifiedRetVal_phi_fu_116_p6;
reg   [1:0] UnifiedRetVal_reg_112;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln43_2_fu_168_p1;
wire   [63:0] zext_ln43_fu_183_p1;
reg    result_l3_ce1_local;
reg    result_l3_ce0_local;
wire   [2:0] shl_ln5_fu_127_p3;
wire   [63:0] zext_ln871_fu_135_p1;
wire   [63:0] add_ln871_2_fu_143_p2;
wire   [5:0] zext_ln871_2_fu_139_p1;
wire   [3:0] lshr_ln_fu_158_p4;
wire   [3:0] lshr_ln43_2_fu_173_p4;
reg   [1:0] ap_return_preg;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_return_preg = 2'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 2'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_116_p6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_reg_240 == 1'd1) & (icmp_ln880_reg_221 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        UnifiedRetVal_reg_112 <= 2'd2;
    end else if (((icmp_ln43_reg_240 == 1'd0) & (icmp_ln880_reg_221 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        UnifiedRetVal_reg_112 <= 2'd1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        UnifiedRetVal_reg_112 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln43_2_fu_194_p2 == 1'd0) & (icmp_ln43_fu_188_p2 == 1'd0) & (icmp_ln880_reg_221 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        idx172_reg_100 <= xor_ln880_fu_200_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        idx172_reg_100 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln871_reg_225 <= add_ln871_fu_153_p2;
        icmp_ln880_reg_221 <= icmp_ln880_fu_148_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        icmp_ln43_reg_240 <= icmp_ln43_fu_188_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((icmp_ln43_reg_240 == 1'd1) & (icmp_ln880_reg_221 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln43_reg_240 == 1'd0) & (icmp_ln880_reg_221 == 1'd0) & (1'b1 == ap_CS_fsm_state4)))) begin
        add_ln871_out_ap_vld = 1'b1;
    end else begin
        add_ln871_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln880_reg_221 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        if ((icmp_ln43_reg_240 == 1'd1)) begin
            ap_phi_mux_UnifiedRetVal_phi_fu_116_p6 = 2'd2;
        end else if ((icmp_ln43_reg_240 == 1'd0)) begin
            ap_phi_mux_UnifiedRetVal_phi_fu_116_p6 = 2'd1;
        end else begin
            ap_phi_mux_UnifiedRetVal_phi_fu_116_p6 = UnifiedRetVal_reg_112;
        end
    end else begin
        ap_phi_mux_UnifiedRetVal_phi_fu_116_p6 = UnifiedRetVal_reg_112;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_return = ap_phi_mux_UnifiedRetVal_phi_fu_116_p6;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        result_l3_ce0_local = 1'b1;
    end else begin
        result_l3_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        result_l3_ce1_local = 1'b1;
    end else begin
        result_l3_ce1_local = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln43_2_fu_194_p2 == 1'd0) & (icmp_ln43_fu_188_p2 == 1'd0) & (icmp_ln880_reg_221 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((icmp_ln880_reg_221 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln871_2_fu_143_p2 = (zext_ln871_fu_135_p1 + p_result_5);

assign add_ln871_fu_153_p2 = (zext_ln871_2_fu_139_p1 + p_first_assign_6);

assign add_ln871_out = add_ln871_reg_225;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign icmp_ln43_2_fu_194_p2 = (($signed(result_l3_q0) < $signed(result_l3_q1)) ? 1'b1 : 1'b0);

assign icmp_ln43_fu_188_p2 = (($signed(result_l3_q1) < $signed(result_l3_q0)) ? 1'b1 : 1'b0);

assign icmp_ln880_fu_148_p2 = ((add_ln871_2_fu_143_p2 == add_ln139) ? 1'b1 : 1'b0);

assign lshr_ln43_2_fu_173_p4 = {{add_ln871_fu_153_p2[5:2]}};

assign lshr_ln_fu_158_p4 = {{add_ln871_2_fu_143_p2[5:2]}};

assign result_l3_address0 = zext_ln43_fu_183_p1;

assign result_l3_address1 = zext_ln43_2_fu_168_p1;

assign result_l3_ce0 = result_l3_ce0_local;

assign result_l3_ce1 = result_l3_ce1_local;

assign shl_ln5_fu_127_p3 = {{idx172_reg_100}, {2'd0}};

assign xor_ln880_fu_200_p2 = (idx172_reg_100 ^ 1'd1);

assign zext_ln43_2_fu_168_p1 = lshr_ln_fu_158_p4;

assign zext_ln43_fu_183_p1 = lshr_ln43_2_fu_173_p4;

assign zext_ln871_2_fu_139_p1 = shl_ln5_fu_127_p3;

assign zext_ln871_fu_135_p1 = shl_ln5_fu_127_p3;

endmodule //top_accelerator_1437_Pipeline_2
