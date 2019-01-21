// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module AXIvideo2Mat (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        INPUT_STREAM_TDATA,
        INPUT_STREAM_TVALID,
        INPUT_STREAM_TREADY,
        INPUT_STREAM_TKEEP,
        INPUT_STREAM_TSTRB,
        INPUT_STREAM_TUSER,
        INPUT_STREAM_TLAST,
        INPUT_STREAM_TID,
        INPUT_STREAM_TDEST,
        img_data_stream_0_V_din,
        img_data_stream_0_V_full_n,
        img_data_stream_0_V_write,
        img_data_stream_1_V_din,
        img_data_stream_1_V_full_n,
        img_data_stream_1_V_write,
        img_data_stream_2_V_din,
        img_data_stream_2_V_full_n,
        img_data_stream_2_V_write
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_pp1_stage0 = 8'd16;
parameter    ap_ST_fsm_state7 = 8'd32;
parameter    ap_ST_fsm_state8 = 8'd64;
parameter    ap_ST_fsm_state9 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] INPUT_STREAM_TDATA;
input   INPUT_STREAM_TVALID;
output   INPUT_STREAM_TREADY;
input  [3:0] INPUT_STREAM_TKEEP;
input  [3:0] INPUT_STREAM_TSTRB;
input  [0:0] INPUT_STREAM_TUSER;
input  [0:0] INPUT_STREAM_TLAST;
input  [0:0] INPUT_STREAM_TID;
input  [0:0] INPUT_STREAM_TDEST;
output  [7:0] img_data_stream_0_V_din;
input   img_data_stream_0_V_full_n;
output   img_data_stream_0_V_write;
output  [7:0] img_data_stream_1_V_din;
input   img_data_stream_1_V_full_n;
output   img_data_stream_1_V_write;
output  [7:0] img_data_stream_2_V_din;
input   img_data_stream_2_V_full_n;
output   img_data_stream_2_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg img_data_stream_0_V_write;
reg img_data_stream_1_V_write;
reg img_data_stream_2_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg   [31:0] AXI_video_strm_V_data_V_0_data_out;
wire    AXI_video_strm_V_data_V_0_vld_in;
wire    AXI_video_strm_V_data_V_0_vld_out;
wire    AXI_video_strm_V_data_V_0_ack_in;
reg    AXI_video_strm_V_data_V_0_ack_out;
reg   [31:0] AXI_video_strm_V_data_V_0_payload_A;
reg   [31:0] AXI_video_strm_V_data_V_0_payload_B;
reg    AXI_video_strm_V_data_V_0_sel_rd;
reg    AXI_video_strm_V_data_V_0_sel_wr;
wire    AXI_video_strm_V_data_V_0_sel;
wire    AXI_video_strm_V_data_V_0_load_A;
wire    AXI_video_strm_V_data_V_0_load_B;
reg   [1:0] AXI_video_strm_V_data_V_0_state;
wire    AXI_video_strm_V_data_V_0_state_cmp_full;
reg   [0:0] AXI_video_strm_V_user_V_0_data_out;
wire    AXI_video_strm_V_user_V_0_vld_in;
wire    AXI_video_strm_V_user_V_0_vld_out;
wire    AXI_video_strm_V_user_V_0_ack_in;
reg    AXI_video_strm_V_user_V_0_ack_out;
reg   [0:0] AXI_video_strm_V_user_V_0_payload_A;
reg   [0:0] AXI_video_strm_V_user_V_0_payload_B;
reg    AXI_video_strm_V_user_V_0_sel_rd;
reg    AXI_video_strm_V_user_V_0_sel_wr;
wire    AXI_video_strm_V_user_V_0_sel;
wire    AXI_video_strm_V_user_V_0_load_A;
wire    AXI_video_strm_V_user_V_0_load_B;
reg   [1:0] AXI_video_strm_V_user_V_0_state;
wire    AXI_video_strm_V_user_V_0_state_cmp_full;
reg   [0:0] AXI_video_strm_V_last_V_0_data_out;
wire    AXI_video_strm_V_last_V_0_vld_in;
wire    AXI_video_strm_V_last_V_0_vld_out;
wire    AXI_video_strm_V_last_V_0_ack_in;
reg    AXI_video_strm_V_last_V_0_ack_out;
reg   [0:0] AXI_video_strm_V_last_V_0_payload_A;
reg   [0:0] AXI_video_strm_V_last_V_0_payload_B;
reg    AXI_video_strm_V_last_V_0_sel_rd;
reg    AXI_video_strm_V_last_V_0_sel_wr;
wire    AXI_video_strm_V_last_V_0_sel;
wire    AXI_video_strm_V_last_V_0_load_A;
wire    AXI_video_strm_V_last_V_0_load_B;
reg   [1:0] AXI_video_strm_V_last_V_0_state;
wire    AXI_video_strm_V_last_V_0_state_cmp_full;
wire    AXI_video_strm_V_dest_V_0_vld_in;
reg    AXI_video_strm_V_dest_V_0_ack_out;
reg   [1:0] AXI_video_strm_V_dest_V_0_state;
reg    INPUT_STREAM_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter0;
wire    ap_block_pp1_stage0;
wire   [0:0] exitcond_fu_331_p2;
wire   [0:0] brmerge_fu_346_p2;
wire    ap_CS_fsm_state8;
wire   [0:0] ap_phi_mux_eol_2_phi_fu_293_p4;
reg    img_data_stream_0_V_blk_n;
reg    ap_enable_reg_pp1_iter1;
reg   [0:0] exitcond_reg_410;
reg    img_data_stream_1_V_blk_n;
reg    img_data_stream_2_V_blk_n;
reg   [0:0] eol_1_reg_196;
reg   [31:0] axi_data_V_1_reg_207;
reg   [7:0] t_V_3_reg_218;
reg   [0:0] eol_reg_229;
reg   [0:0] axi_last_V_2_reg_241;
reg   [31:0] p_Val2_s_reg_254;
reg   [31:0] tmp_data_V_reg_381;
reg   [0:0] tmp_last_V_reg_389;
wire   [0:0] exitcond2_fu_319_p2;
wire    ap_CS_fsm_state4;
wire   [7:0] i_V_fu_325_p2;
reg   [7:0] i_V_reg_405;
reg    ap_predicate_op50_read_state5;
reg    ap_block_state5_pp1_stage0_iter0;
reg    ap_block_state6_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [7:0] j_V_fu_337_p2;
wire   [7:0] tmp_72_fu_352_p1;
reg   [7:0] tmp_72_reg_423;
reg   [7:0] tmp_17_reg_428;
reg   [7:0] tmp_18_reg_433;
reg    ap_block_state8;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state5;
reg   [0:0] axi_last_V_3_reg_266;
reg   [0:0] axi_last_V1_reg_165;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state3;
reg   [31:0] axi_data_V_3_reg_278;
reg   [31:0] axi_data_V1_reg_175;
reg   [7:0] t_V_reg_185;
reg   [0:0] ap_phi_mux_eol_1_phi_fu_199_p4;
reg   [31:0] ap_phi_mux_axi_data_V_1_phi_fu_210_p4;
reg   [0:0] ap_phi_mux_eol_phi_fu_233_p4;
wire   [0:0] ap_phi_reg_pp1_iter0_axi_last_V_2_reg_241;
reg   [31:0] ap_phi_mux_p_Val2_s_phi_fu_258_p4;
wire   [31:0] ap_phi_reg_pp1_iter0_p_Val2_s_reg_254;
wire    ap_CS_fsm_state7;
reg   [0:0] eol_2_reg_290;
reg    ap_block_pp1_stage0_01001;
reg   [0:0] sof_1_fu_122;
wire   [0:0] tmp_user_V_fu_310_p1;
reg   [7:0] ap_NS_fsm;
reg    ap_block_state1;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_condition_638;
reg    ap_condition_559;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 8'd1;
#0 AXI_video_strm_V_data_V_0_sel_rd = 1'b0;
#0 AXI_video_strm_V_data_V_0_sel_wr = 1'b0;
#0 AXI_video_strm_V_data_V_0_state = 2'd0;
#0 AXI_video_strm_V_user_V_0_sel_rd = 1'b0;
#0 AXI_video_strm_V_user_V_0_sel_wr = 1'b0;
#0 AXI_video_strm_V_user_V_0_state = 2'd0;
#0 AXI_video_strm_V_last_V_0_sel_rd = 1'b0;
#0 AXI_video_strm_V_last_V_0_sel_wr = 1'b0;
#0 AXI_video_strm_V_last_V_0_state = 2'd0;
#0 AXI_video_strm_V_dest_V_0_state = 2'd0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_data_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_data_V_0_ack_out) & (1'b1 == AXI_video_strm_V_data_V_0_vld_out))) begin
            AXI_video_strm_V_data_V_0_sel_rd <= ~AXI_video_strm_V_data_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_data_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_data_V_0_ack_in) & (1'b1 == AXI_video_strm_V_data_V_0_vld_in))) begin
            AXI_video_strm_V_data_V_0_sel_wr <= ~AXI_video_strm_V_data_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_data_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == AXI_video_strm_V_data_V_0_state) & (1'b0 == AXI_video_strm_V_data_V_0_vld_in)) | ((2'd3 == AXI_video_strm_V_data_V_0_state) & (1'b0 == AXI_video_strm_V_data_V_0_vld_in) & (1'b1 == AXI_video_strm_V_data_V_0_ack_out)))) begin
            AXI_video_strm_V_data_V_0_state <= 2'd2;
        end else if ((((2'd1 == AXI_video_strm_V_data_V_0_state) & (1'b0 == AXI_video_strm_V_data_V_0_ack_out)) | ((2'd3 == AXI_video_strm_V_data_V_0_state) & (1'b0 == AXI_video_strm_V_data_V_0_ack_out) & (1'b1 == AXI_video_strm_V_data_V_0_vld_in)))) begin
            AXI_video_strm_V_data_V_0_state <= 2'd1;
        end else if (((~((1'b0 == AXI_video_strm_V_data_V_0_vld_in) & (1'b1 == AXI_video_strm_V_data_V_0_ack_out)) & ~((1'b0 == AXI_video_strm_V_data_V_0_ack_out) & (1'b1 == AXI_video_strm_V_data_V_0_vld_in)) & (2'd3 == AXI_video_strm_V_data_V_0_state)) | ((2'd1 == AXI_video_strm_V_data_V_0_state) & (1'b1 == AXI_video_strm_V_data_V_0_ack_out)) | ((2'd2 == AXI_video_strm_V_data_V_0_state) & (1'b1 == AXI_video_strm_V_data_V_0_vld_in)))) begin
            AXI_video_strm_V_data_V_0_state <= 2'd3;
        end else begin
            AXI_video_strm_V_data_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_dest_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == AXI_video_strm_V_dest_V_0_state) & (1'b0 == AXI_video_strm_V_dest_V_0_vld_in)) | ((2'd3 == AXI_video_strm_V_dest_V_0_state) & (1'b0 == AXI_video_strm_V_dest_V_0_vld_in) & (1'b1 == AXI_video_strm_V_dest_V_0_ack_out)))) begin
            AXI_video_strm_V_dest_V_0_state <= 2'd2;
        end else if ((((2'd1 == AXI_video_strm_V_dest_V_0_state) & (1'b0 == AXI_video_strm_V_dest_V_0_ack_out)) | ((2'd3 == AXI_video_strm_V_dest_V_0_state) & (1'b0 == AXI_video_strm_V_dest_V_0_ack_out) & (1'b1 == AXI_video_strm_V_dest_V_0_vld_in)))) begin
            AXI_video_strm_V_dest_V_0_state <= 2'd1;
        end else if (((~((1'b0 == AXI_video_strm_V_dest_V_0_vld_in) & (1'b1 == AXI_video_strm_V_dest_V_0_ack_out)) & ~((1'b0 == AXI_video_strm_V_dest_V_0_ack_out) & (1'b1 == AXI_video_strm_V_dest_V_0_vld_in)) & (2'd3 == AXI_video_strm_V_dest_V_0_state)) | ((2'd1 == AXI_video_strm_V_dest_V_0_state) & (1'b1 == AXI_video_strm_V_dest_V_0_ack_out)) | ((2'd2 == AXI_video_strm_V_dest_V_0_state) & (1'b1 == AXI_video_strm_V_dest_V_0_vld_in)))) begin
            AXI_video_strm_V_dest_V_0_state <= 2'd3;
        end else begin
            AXI_video_strm_V_dest_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_last_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_last_V_0_ack_out) & (1'b1 == AXI_video_strm_V_last_V_0_vld_out))) begin
            AXI_video_strm_V_last_V_0_sel_rd <= ~AXI_video_strm_V_last_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_last_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_last_V_0_ack_in) & (1'b1 == AXI_video_strm_V_last_V_0_vld_in))) begin
            AXI_video_strm_V_last_V_0_sel_wr <= ~AXI_video_strm_V_last_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_last_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == AXI_video_strm_V_last_V_0_state) & (1'b0 == AXI_video_strm_V_last_V_0_vld_in)) | ((2'd3 == AXI_video_strm_V_last_V_0_state) & (1'b0 == AXI_video_strm_V_last_V_0_vld_in) & (1'b1 == AXI_video_strm_V_last_V_0_ack_out)))) begin
            AXI_video_strm_V_last_V_0_state <= 2'd2;
        end else if ((((2'd1 == AXI_video_strm_V_last_V_0_state) & (1'b0 == AXI_video_strm_V_last_V_0_ack_out)) | ((2'd3 == AXI_video_strm_V_last_V_0_state) & (1'b0 == AXI_video_strm_V_last_V_0_ack_out) & (1'b1 == AXI_video_strm_V_last_V_0_vld_in)))) begin
            AXI_video_strm_V_last_V_0_state <= 2'd1;
        end else if (((~((1'b0 == AXI_video_strm_V_last_V_0_vld_in) & (1'b1 == AXI_video_strm_V_last_V_0_ack_out)) & ~((1'b0 == AXI_video_strm_V_last_V_0_ack_out) & (1'b1 == AXI_video_strm_V_last_V_0_vld_in)) & (2'd3 == AXI_video_strm_V_last_V_0_state)) | ((2'd1 == AXI_video_strm_V_last_V_0_state) & (1'b1 == AXI_video_strm_V_last_V_0_ack_out)) | ((2'd2 == AXI_video_strm_V_last_V_0_state) & (1'b1 == AXI_video_strm_V_last_V_0_vld_in)))) begin
            AXI_video_strm_V_last_V_0_state <= 2'd3;
        end else begin
            AXI_video_strm_V_last_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_user_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_user_V_0_ack_out) & (1'b1 == AXI_video_strm_V_user_V_0_vld_out))) begin
            AXI_video_strm_V_user_V_0_sel_rd <= ~AXI_video_strm_V_user_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_user_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == AXI_video_strm_V_user_V_0_ack_in) & (1'b1 == AXI_video_strm_V_user_V_0_vld_in))) begin
            AXI_video_strm_V_user_V_0_sel_wr <= ~AXI_video_strm_V_user_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        AXI_video_strm_V_user_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == AXI_video_strm_V_user_V_0_state) & (1'b0 == AXI_video_strm_V_user_V_0_vld_in)) | ((2'd3 == AXI_video_strm_V_user_V_0_state) & (1'b0 == AXI_video_strm_V_user_V_0_vld_in) & (1'b1 == AXI_video_strm_V_user_V_0_ack_out)))) begin
            AXI_video_strm_V_user_V_0_state <= 2'd2;
        end else if ((((2'd1 == AXI_video_strm_V_user_V_0_state) & (1'b0 == AXI_video_strm_V_user_V_0_ack_out)) | ((2'd3 == AXI_video_strm_V_user_V_0_state) & (1'b0 == AXI_video_strm_V_user_V_0_ack_out) & (1'b1 == AXI_video_strm_V_user_V_0_vld_in)))) begin
            AXI_video_strm_V_user_V_0_state <= 2'd1;
        end else if (((~((1'b0 == AXI_video_strm_V_user_V_0_vld_in) & (1'b1 == AXI_video_strm_V_user_V_0_ack_out)) & ~((1'b0 == AXI_video_strm_V_user_V_0_ack_out) & (1'b1 == AXI_video_strm_V_user_V_0_vld_in)) & (2'd3 == AXI_video_strm_V_user_V_0_state)) | ((2'd1 == AXI_video_strm_V_user_V_0_state) & (1'b1 == AXI_video_strm_V_user_V_0_ack_out)) | ((2'd2 == AXI_video_strm_V_user_V_0_state) & (1'b1 == AXI_video_strm_V_user_V_0_vld_in)))) begin
            AXI_video_strm_V_user_V_0_state <= 2'd3;
        end else begin
            AXI_video_strm_V_user_V_0_state <= 2'd2;
        end
    end
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((exitcond2_fu_319_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state5) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((exitcond2_fu_319_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state5))) begin
            ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state5);
        end else if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if (((exitcond2_fu_319_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        axi_data_V1_reg_175 <= tmp_data_V_reg_381;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        axi_data_V1_reg_175 <= axi_data_V_3_reg_278;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_410 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        axi_data_V_1_reg_207 <= p_Val2_s_reg_254;
    end else if (((exitcond2_fu_319_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        axi_data_V_1_reg_207 <= axi_data_V1_reg_175;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        axi_data_V_3_reg_278 <= axi_data_V_1_reg_207;
    end else if ((~((eol_2_reg_290 == 1'd0) & (1'b0 == AXI_video_strm_V_data_V_0_vld_out)) & (eol_2_reg_290 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        axi_data_V_3_reg_278 <= AXI_video_strm_V_data_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        axi_last_V1_reg_165 <= tmp_last_V_reg_389;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        axi_last_V1_reg_165 <= axi_last_V_3_reg_266;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_559)) begin
        if (((brmerge_fu_346_p2 == 1'd1) & (exitcond_fu_331_p2 == 1'd0))) begin
            axi_last_V_2_reg_241 <= ap_phi_mux_eol_1_phi_fu_199_p4;
        end else if (((brmerge_fu_346_p2 == 1'd0) & (exitcond_fu_331_p2 == 1'd0))) begin
            axi_last_V_2_reg_241 <= AXI_video_strm_V_last_V_0_data_out;
        end else if ((1'b1 == 1'b1)) begin
            axi_last_V_2_reg_241 <= ap_phi_reg_pp1_iter0_axi_last_V_2_reg_241;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        axi_last_V_3_reg_266 <= eol_1_reg_196;
    end else if ((~((eol_2_reg_290 == 1'd0) & (1'b0 == AXI_video_strm_V_data_V_0_vld_out)) & (eol_2_reg_290 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        axi_last_V_3_reg_266 <= AXI_video_strm_V_last_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_410 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        eol_1_reg_196 <= axi_last_V_2_reg_241;
    end else if (((exitcond2_fu_319_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        eol_1_reg_196 <= axi_last_V1_reg_165;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        eol_2_reg_290 <= eol_reg_229;
    end else if ((~((eol_2_reg_290 == 1'd0) & (1'b0 == AXI_video_strm_V_data_V_0_vld_out)) & (eol_2_reg_290 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        eol_2_reg_290 <= AXI_video_strm_V_last_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_410 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        eol_reg_229 <= axi_last_V_2_reg_241;
    end else if (((exitcond2_fu_319_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        eol_reg_229 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_559)) begin
        if (((brmerge_fu_346_p2 == 1'd1) & (exitcond_fu_331_p2 == 1'd0))) begin
            p_Val2_s_reg_254 <= ap_phi_mux_axi_data_V_1_phi_fu_210_p4;
        end else if (((brmerge_fu_346_p2 == 1'd0) & (exitcond_fu_331_p2 == 1'd0))) begin
            p_Val2_s_reg_254 <= AXI_video_strm_V_data_V_0_data_out;
        end else if ((1'b1 == 1'b1)) begin
            p_Val2_s_reg_254 <= ap_phi_reg_pp1_iter0_p_Val2_s_reg_254;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_331_p2 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        sof_1_fu_122 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sof_1_fu_122 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_331_p2 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        t_V_3_reg_218 <= j_V_fu_337_p2;
    end else if (((exitcond2_fu_319_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        t_V_3_reg_218 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        t_V_reg_185 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        t_V_reg_185 <= i_V_reg_405;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AXI_video_strm_V_data_V_0_load_A)) begin
        AXI_video_strm_V_data_V_0_payload_A <= INPUT_STREAM_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AXI_video_strm_V_data_V_0_load_B)) begin
        AXI_video_strm_V_data_V_0_payload_B <= INPUT_STREAM_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AXI_video_strm_V_last_V_0_load_A)) begin
        AXI_video_strm_V_last_V_0_payload_A <= INPUT_STREAM_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AXI_video_strm_V_last_V_0_load_B)) begin
        AXI_video_strm_V_last_V_0_payload_B <= INPUT_STREAM_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AXI_video_strm_V_user_V_0_load_A)) begin
        AXI_video_strm_V_user_V_0_payload_A <= INPUT_STREAM_TUSER;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == AXI_video_strm_V_user_V_0_load_B)) begin
        AXI_video_strm_V_user_V_0_payload_B <= INPUT_STREAM_TUSER;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        exitcond_reg_410 <= exitcond_fu_331_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_V_reg_405 <= i_V_fu_325_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_331_p2 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        tmp_17_reg_428 <= {{ap_phi_mux_p_Val2_s_phi_fu_258_p4[15:8]}};
        tmp_18_reg_433 <= {{ap_phi_mux_p_Val2_s_phi_fu_258_p4[23:16]}};
        tmp_72_reg_423 <= tmp_72_fu_352_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == AXI_video_strm_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_data_V_reg_381 <= AXI_video_strm_V_data_V_0_data_out;
        tmp_last_V_reg_389 <= AXI_video_strm_V_last_V_0_data_out;
    end
end

always @ (*) begin
    if (((~((eol_2_reg_290 == 1'd0) & (1'b0 == AXI_video_strm_V_data_V_0_vld_out)) & (eol_2_reg_290 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_predicate_op50_read_state5 == 1'b1)) | ((1'b1 == AXI_video_strm_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2)))) begin
        AXI_video_strm_V_data_V_0_ack_out = 1'b1;
    end else begin
        AXI_video_strm_V_data_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == AXI_video_strm_V_data_V_0_sel)) begin
        AXI_video_strm_V_data_V_0_data_out = AXI_video_strm_V_data_V_0_payload_B;
    end else begin
        AXI_video_strm_V_data_V_0_data_out = AXI_video_strm_V_data_V_0_payload_A;
    end
end

always @ (*) begin
    if (((~((eol_2_reg_290 == 1'd0) & (1'b0 == AXI_video_strm_V_data_V_0_vld_out)) & (eol_2_reg_290 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_predicate_op50_read_state5 == 1'b1)) | ((1'b1 == AXI_video_strm_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2)))) begin
        AXI_video_strm_V_dest_V_0_ack_out = 1'b1;
    end else begin
        AXI_video_strm_V_dest_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if (((~((eol_2_reg_290 == 1'd0) & (1'b0 == AXI_video_strm_V_data_V_0_vld_out)) & (eol_2_reg_290 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_predicate_op50_read_state5 == 1'b1)) | ((1'b1 == AXI_video_strm_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2)))) begin
        AXI_video_strm_V_last_V_0_ack_out = 1'b1;
    end else begin
        AXI_video_strm_V_last_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == AXI_video_strm_V_last_V_0_sel)) begin
        AXI_video_strm_V_last_V_0_data_out = AXI_video_strm_V_last_V_0_payload_B;
    end else begin
        AXI_video_strm_V_last_V_0_data_out = AXI_video_strm_V_last_V_0_payload_A;
    end
end

always @ (*) begin
    if (((~((eol_2_reg_290 == 1'd0) & (1'b0 == AXI_video_strm_V_data_V_0_vld_out)) & (eol_2_reg_290 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_predicate_op50_read_state5 == 1'b1)) | ((1'b1 == AXI_video_strm_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2)))) begin
        AXI_video_strm_V_user_V_0_ack_out = 1'b1;
    end else begin
        AXI_video_strm_V_user_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == AXI_video_strm_V_user_V_0_sel)) begin
        AXI_video_strm_V_user_V_0_data_out = AXI_video_strm_V_user_V_0_payload_B;
    end else begin
        AXI_video_strm_V_user_V_0_data_out = AXI_video_strm_V_user_V_0_payload_A;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((eol_2_reg_290 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((brmerge_fu_346_p2 == 1'd0) & (exitcond_fu_331_p2 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        INPUT_STREAM_TDATA_blk_n = AXI_video_strm_V_data_V_0_state[1'd0];
    end else begin
        INPUT_STREAM_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((exitcond_fu_331_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state5 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state5 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond2_fu_319_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_410 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_axi_data_V_1_phi_fu_210_p4 = p_Val2_s_reg_254;
    end else begin
        ap_phi_mux_axi_data_V_1_phi_fu_210_p4 = axi_data_V_1_reg_207;
    end
end

always @ (*) begin
    if (((exitcond_reg_410 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_eol_1_phi_fu_199_p4 = axi_last_V_2_reg_241;
    end else begin
        ap_phi_mux_eol_1_phi_fu_199_p4 = eol_1_reg_196;
    end
end

always @ (*) begin
    if (((exitcond_reg_410 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_eol_phi_fu_233_p4 = axi_last_V_2_reg_241;
    end else begin
        ap_phi_mux_eol_phi_fu_233_p4 = eol_reg_229;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_638)) begin
        if ((brmerge_fu_346_p2 == 1'd1)) begin
            ap_phi_mux_p_Val2_s_phi_fu_258_p4 = ap_phi_mux_axi_data_V_1_phi_fu_210_p4;
        end else if ((brmerge_fu_346_p2 == 1'd0)) begin
            ap_phi_mux_p_Val2_s_phi_fu_258_p4 = AXI_video_strm_V_data_V_0_data_out;
        end else begin
            ap_phi_mux_p_Val2_s_phi_fu_258_p4 = ap_phi_reg_pp1_iter0_p_Val2_s_reg_254;
        end
    end else begin
        ap_phi_mux_p_Val2_s_phi_fu_258_p4 = ap_phi_reg_pp1_iter0_p_Val2_s_reg_254;
    end
end

always @ (*) begin
    if (((exitcond_reg_410 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        img_data_stream_0_V_blk_n = img_data_stream_0_V_full_n;
    end else begin
        img_data_stream_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_410 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        img_data_stream_0_V_write = 1'b1;
    end else begin
        img_data_stream_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_410 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        img_data_stream_1_V_blk_n = img_data_stream_1_V_full_n;
    end else begin
        img_data_stream_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_410 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        img_data_stream_1_V_write = 1'b1;
    end else begin
        img_data_stream_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_410 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        img_data_stream_2_V_blk_n = img_data_stream_2_V_full_n;
    end else begin
        img_data_stream_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_reg_410 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        img_data_stream_2_V_write = 1'b1;
    end else begin
        img_data_stream_2_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond2_fu_319_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_user_V_fu_310_p1 == 1'd0) & (1'b1 == AXI_video_strm_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((tmp_user_V_fu_310_p1 == 1'd1) & (1'b1 == AXI_video_strm_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond2_fu_319_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((exitcond_fu_331_p2 == 1'd1) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((exitcond_fu_331_p2 == 1'd1) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if ((~((eol_2_reg_290 == 1'd0) & (1'b0 == AXI_video_strm_V_data_V_0_vld_out)) & (eol_2_reg_290 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else if ((~((eol_2_reg_290 == 1'd0) & (1'b0 == AXI_video_strm_V_data_V_0_vld_out)) & (ap_phi_mux_eol_2_phi_fu_293_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign AXI_video_strm_V_data_V_0_ack_in = AXI_video_strm_V_data_V_0_state[1'd1];

assign AXI_video_strm_V_data_V_0_load_A = (~AXI_video_strm_V_data_V_0_sel_wr & AXI_video_strm_V_data_V_0_state_cmp_full);

assign AXI_video_strm_V_data_V_0_load_B = (AXI_video_strm_V_data_V_0_state_cmp_full & AXI_video_strm_V_data_V_0_sel_wr);

assign AXI_video_strm_V_data_V_0_sel = AXI_video_strm_V_data_V_0_sel_rd;

assign AXI_video_strm_V_data_V_0_state_cmp_full = ((AXI_video_strm_V_data_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign AXI_video_strm_V_data_V_0_vld_in = INPUT_STREAM_TVALID;

assign AXI_video_strm_V_data_V_0_vld_out = AXI_video_strm_V_data_V_0_state[1'd0];

assign AXI_video_strm_V_dest_V_0_vld_in = INPUT_STREAM_TVALID;

assign AXI_video_strm_V_last_V_0_ack_in = AXI_video_strm_V_last_V_0_state[1'd1];

assign AXI_video_strm_V_last_V_0_load_A = (~AXI_video_strm_V_last_V_0_sel_wr & AXI_video_strm_V_last_V_0_state_cmp_full);

assign AXI_video_strm_V_last_V_0_load_B = (AXI_video_strm_V_last_V_0_state_cmp_full & AXI_video_strm_V_last_V_0_sel_wr);

assign AXI_video_strm_V_last_V_0_sel = AXI_video_strm_V_last_V_0_sel_rd;

assign AXI_video_strm_V_last_V_0_state_cmp_full = ((AXI_video_strm_V_last_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign AXI_video_strm_V_last_V_0_vld_in = INPUT_STREAM_TVALID;

assign AXI_video_strm_V_last_V_0_vld_out = AXI_video_strm_V_last_V_0_state[1'd0];

assign AXI_video_strm_V_user_V_0_ack_in = AXI_video_strm_V_user_V_0_state[1'd1];

assign AXI_video_strm_V_user_V_0_load_A = (~AXI_video_strm_V_user_V_0_sel_wr & AXI_video_strm_V_user_V_0_state_cmp_full);

assign AXI_video_strm_V_user_V_0_load_B = (AXI_video_strm_V_user_V_0_state_cmp_full & AXI_video_strm_V_user_V_0_sel_wr);

assign AXI_video_strm_V_user_V_0_sel = AXI_video_strm_V_user_V_0_sel_rd;

assign AXI_video_strm_V_user_V_0_state_cmp_full = ((AXI_video_strm_V_user_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign AXI_video_strm_V_user_V_0_vld_in = INPUT_STREAM_TVALID;

assign AXI_video_strm_V_user_V_0_vld_out = AXI_video_strm_V_user_V_0_state[1'd0];

assign INPUT_STREAM_TREADY = AXI_video_strm_V_dest_V_0_state[1'd1];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd7];

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = (((ap_enable_reg_pp1_iter1 == 1'b1) & (((exitcond_reg_410 == 1'd0) & (img_data_stream_2_V_full_n == 1'b0)) | ((exitcond_reg_410 == 1'd0) & (img_data_stream_1_V_full_n == 1'b0)) | ((exitcond_reg_410 == 1'd0) & (img_data_stream_0_V_full_n == 1'b0)))) | ((1'b0 == AXI_video_strm_V_data_V_0_vld_out) & (ap_enable_reg_pp1_iter0 == 1'b1) & (ap_predicate_op50_read_state5 == 1'b1)));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = (((ap_enable_reg_pp1_iter1 == 1'b1) & (((exitcond_reg_410 == 1'd0) & (img_data_stream_2_V_full_n == 1'b0)) | ((exitcond_reg_410 == 1'd0) & (img_data_stream_1_V_full_n == 1'b0)) | ((exitcond_reg_410 == 1'd0) & (img_data_stream_0_V_full_n == 1'b0)))) | ((1'b0 == AXI_video_strm_V_data_V_0_vld_out) & (ap_enable_reg_pp1_iter0 == 1'b1) & (ap_predicate_op50_read_state5 == 1'b1)));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = (((ap_enable_reg_pp1_iter1 == 1'b1) & (((exitcond_reg_410 == 1'd0) & (img_data_stream_2_V_full_n == 1'b0)) | ((exitcond_reg_410 == 1'd0) & (img_data_stream_1_V_full_n == 1'b0)) | ((exitcond_reg_410 == 1'd0) & (img_data_stream_0_V_full_n == 1'b0)))) | ((1'b0 == AXI_video_strm_V_data_V_0_vld_out) & (ap_enable_reg_pp1_iter0 == 1'b1) & (ap_predicate_op50_read_state5 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state5_pp1_stage0_iter0 = ((1'b0 == AXI_video_strm_V_data_V_0_vld_out) & (ap_predicate_op50_read_state5 == 1'b1));
end

always @ (*) begin
    ap_block_state6_pp1_stage0_iter1 = (((exitcond_reg_410 == 1'd0) & (img_data_stream_2_V_full_n == 1'b0)) | ((exitcond_reg_410 == 1'd0) & (img_data_stream_1_V_full_n == 1'b0)) | ((exitcond_reg_410 == 1'd0) & (img_data_stream_0_V_full_n == 1'b0)));
end

always @ (*) begin
    ap_block_state8 = ((eol_2_reg_290 == 1'd0) & (1'b0 == AXI_video_strm_V_data_V_0_vld_out));
end

always @ (*) begin
    ap_condition_559 = ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0));
end

always @ (*) begin
    ap_condition_638 = ((exitcond_fu_331_p2 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0));
end

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_phi_mux_eol_2_phi_fu_293_p4 = eol_2_reg_290;

assign ap_phi_reg_pp1_iter0_axi_last_V_2_reg_241 = 'bx;

assign ap_phi_reg_pp1_iter0_p_Val2_s_reg_254 = 'bx;

always @ (*) begin
    ap_predicate_op50_read_state5 = ((brmerge_fu_346_p2 == 1'd0) & (exitcond_fu_331_p2 == 1'd0));
end

assign ap_ready = internal_ap_ready;

assign brmerge_fu_346_p2 = (sof_1_fu_122 | ap_phi_mux_eol_phi_fu_233_p4);

assign exitcond2_fu_319_p2 = ((t_V_reg_185 == 8'd220) ? 1'b1 : 1'b0);

assign exitcond_fu_331_p2 = ((t_V_3_reg_218 == 8'd220) ? 1'b1 : 1'b0);

assign i_V_fu_325_p2 = (t_V_reg_185 + 8'd1);

assign img_data_stream_0_V_din = tmp_72_reg_423;

assign img_data_stream_1_V_din = tmp_17_reg_428;

assign img_data_stream_2_V_din = tmp_18_reg_433;

assign j_V_fu_337_p2 = (t_V_3_reg_218 + 8'd1);

assign start_out = real_start;

assign tmp_72_fu_352_p1 = ap_phi_mux_p_Val2_s_phi_fu_258_p4[7:0];

assign tmp_user_V_fu_310_p1 = AXI_video_strm_V_user_V_0_data_out;

endmodule //AXIvideo2Mat
