// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module grad_vertical_Mat_s (
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
        img_in_data_stream_0_V_dout,
        img_in_data_stream_0_V_empty_n,
        img_in_data_stream_0_V_read,
        img_in_data_stream_1_V_dout,
        img_in_data_stream_1_V_empty_n,
        img_in_data_stream_1_V_read,
        img_in_data_stream_2_V_dout,
        img_in_data_stream_2_V_empty_n,
        img_in_data_stream_2_V_read,
        img_out_data_stream_0_V_din,
        img_out_data_stream_0_V_full_n,
        img_out_data_stream_0_V_write,
        img_out_data_stream_1_V_din,
        img_out_data_stream_1_V_full_n,
        img_out_data_stream_1_V_write,
        img_out_data_stream_2_V_din,
        img_out_data_stream_2_V_full_n,
        img_out_data_stream_2_V_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

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
input  [7:0] img_in_data_stream_0_V_dout;
input   img_in_data_stream_0_V_empty_n;
output   img_in_data_stream_0_V_read;
input  [7:0] img_in_data_stream_1_V_dout;
input   img_in_data_stream_1_V_empty_n;
output   img_in_data_stream_1_V_read;
input  [7:0] img_in_data_stream_2_V_dout;
input   img_in_data_stream_2_V_empty_n;
output   img_in_data_stream_2_V_read;
output  [7:0] img_out_data_stream_0_V_din;
input   img_out_data_stream_0_V_full_n;
output   img_out_data_stream_0_V_write;
output  [7:0] img_out_data_stream_1_V_din;
input   img_out_data_stream_1_V_full_n;
output   img_out_data_stream_1_V_write;
output  [7:0] img_out_data_stream_2_V_din;
input   img_out_data_stream_2_V_full_n;
output   img_out_data_stream_2_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg img_in_data_stream_0_V_read;
reg img_in_data_stream_1_V_read;
reg img_in_data_stream_2_V_read;
reg img_out_data_stream_0_V_write;
reg img_out_data_stream_1_V_write;
reg img_out_data_stream_2_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
wire    grp_Filter2D_fu_122_ap_start;
wire    grp_Filter2D_fu_122_ap_done;
wire    grp_Filter2D_fu_122_ap_idle;
wire    grp_Filter2D_fu_122_ap_ready;
wire    grp_Filter2D_fu_122_p_src_data_stream_0_V_read;
wire    grp_Filter2D_fu_122_p_src_data_stream_1_V_read;
wire    grp_Filter2D_fu_122_p_src_data_stream_2_V_read;
wire   [7:0] grp_Filter2D_fu_122_p_dst_data_stream_0_V_din;
wire    grp_Filter2D_fu_122_p_dst_data_stream_0_V_write;
wire   [7:0] grp_Filter2D_fu_122_p_dst_data_stream_1_V_din;
wire    grp_Filter2D_fu_122_p_dst_data_stream_1_V_write;
wire   [7:0] grp_Filter2D_fu_122_p_dst_data_stream_2_V_din;
wire    grp_Filter2D_fu_122_p_dst_data_stream_2_V_write;
reg    grp_Filter2D_fu_122_ap_start_reg;
reg    ap_block_state1_ignore_call6;
wire    ap_CS_fsm_state2;
reg   [1:0] ap_NS_fsm;
reg    ap_block_state1;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_Filter2D_fu_122_ap_start_reg = 1'b0;
end

Filter2D grp_Filter2D_fu_122(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_Filter2D_fu_122_ap_start),
    .ap_done(grp_Filter2D_fu_122_ap_done),
    .ap_idle(grp_Filter2D_fu_122_ap_idle),
    .ap_ready(grp_Filter2D_fu_122_ap_ready),
    .p_src_data_stream_0_V_dout(img_in_data_stream_0_V_dout),
    .p_src_data_stream_0_V_empty_n(img_in_data_stream_0_V_empty_n),
    .p_src_data_stream_0_V_read(grp_Filter2D_fu_122_p_src_data_stream_0_V_read),
    .p_src_data_stream_1_V_dout(img_in_data_stream_1_V_dout),
    .p_src_data_stream_1_V_empty_n(img_in_data_stream_1_V_empty_n),
    .p_src_data_stream_1_V_read(grp_Filter2D_fu_122_p_src_data_stream_1_V_read),
    .p_src_data_stream_2_V_dout(img_in_data_stream_2_V_dout),
    .p_src_data_stream_2_V_empty_n(img_in_data_stream_2_V_empty_n),
    .p_src_data_stream_2_V_read(grp_Filter2D_fu_122_p_src_data_stream_2_V_read),
    .p_dst_data_stream_0_V_din(grp_Filter2D_fu_122_p_dst_data_stream_0_V_din),
    .p_dst_data_stream_0_V_full_n(img_out_data_stream_0_V_full_n),
    .p_dst_data_stream_0_V_write(grp_Filter2D_fu_122_p_dst_data_stream_0_V_write),
    .p_dst_data_stream_1_V_din(grp_Filter2D_fu_122_p_dst_data_stream_1_V_din),
    .p_dst_data_stream_1_V_full_n(img_out_data_stream_1_V_full_n),
    .p_dst_data_stream_1_V_write(grp_Filter2D_fu_122_p_dst_data_stream_1_V_write),
    .p_dst_data_stream_2_V_din(grp_Filter2D_fu_122_p_dst_data_stream_2_V_din),
    .p_dst_data_stream_2_V_full_n(img_out_data_stream_2_V_full_n),
    .p_dst_data_stream_2_V_write(grp_Filter2D_fu_122_p_dst_data_stream_2_V_write),
    .p_kernel_val_0_V_0_read(6'd16),
    .p_kernel_val_0_V_1_read(7'd32),
    .p_kernel_val_0_V_2_read(8'd0),
    .p_kernel_val_0_V_3_read(7'd96),
    .p_kernel_val_1_V_0_read(8'd64),
    .p_kernel_val_1_V_2_read(8'd0),
    .p_kernel_val_1_V_4_read(7'd64),
    .p_kernel_val_2_V_0_read(8'd96),
    .p_kernel_val_2_V_1_read(8'd192),
    .p_kernel_val_2_V_3_read(8'd64),
    .p_kernel_val_2_V_4_read(8'd160),
    .p_kernel_val_3_V_0_read(8'd64),
    .p_kernel_val_3_V_2_read(7'd0),
    .p_kernel_val_3_V_4_read(7'd64),
    .p_kernel_val_4_V_1_read(8'd32),
    .p_kernel_val_4_V_2_read(8'd0),
    .p_kernel_val_4_V_3_read(8'd224),
    .p_kernel_val_4_V_4_read(6'd48)
);

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
        end else if (((grp_Filter2D_fu_122_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Filter2D_fu_122_ap_start_reg <= 1'b0;
    end else begin
        if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_Filter2D_fu_122_ap_start_reg <= 1'b1;
        end else if ((grp_Filter2D_fu_122_ap_ready == 1'b1)) begin
            grp_Filter2D_fu_122_ap_start_reg <= 1'b0;
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

always @ (*) begin
    if (((grp_Filter2D_fu_122_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_in_data_stream_0_V_read = grp_Filter2D_fu_122_p_src_data_stream_0_V_read;
    end else begin
        img_in_data_stream_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_in_data_stream_1_V_read = grp_Filter2D_fu_122_p_src_data_stream_1_V_read;
    end else begin
        img_in_data_stream_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_in_data_stream_2_V_read = grp_Filter2D_fu_122_p_src_data_stream_2_V_read;
    end else begin
        img_in_data_stream_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_out_data_stream_0_V_write = grp_Filter2D_fu_122_p_dst_data_stream_0_V_write;
    end else begin
        img_out_data_stream_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_out_data_stream_1_V_write = grp_Filter2D_fu_122_p_dst_data_stream_1_V_write;
    end else begin
        img_out_data_stream_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        img_out_data_stream_2_V_write = grp_Filter2D_fu_122_p_dst_data_stream_2_V_write;
    end else begin
        img_out_data_stream_2_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((grp_Filter2D_fu_122_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
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
            if (((grp_Filter2D_fu_122_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call6 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign grp_Filter2D_fu_122_ap_start = grp_Filter2D_fu_122_ap_start_reg;

assign img_out_data_stream_0_V_din = grp_Filter2D_fu_122_p_dst_data_stream_0_V_din;

assign img_out_data_stream_1_V_din = grp_Filter2D_fu_122_p_dst_data_stream_1_V_din;

assign img_out_data_stream_2_V_din = grp_Filter2D_fu_122_p_dst_data_stream_2_V_din;

assign start_out = real_start;

endmodule //grad_vertical_Mat_s
