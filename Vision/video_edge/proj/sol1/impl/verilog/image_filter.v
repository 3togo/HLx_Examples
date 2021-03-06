// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="image_filter,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=6.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=5.250000,HLS_SYN_LAT=151190,HLS_SYN_TPT=151188,HLS_SYN_MEM=24,HLS_SYN_DSP=84,HLS_SYN_FF=7124,HLS_SYN_LUT=8787,HLS_VERSION=2018_3}" *)

module image_filter (
        INPUT_STREAM_TDATA,
        INPUT_STREAM_TKEEP,
        INPUT_STREAM_TSTRB,
        INPUT_STREAM_TUSER,
        INPUT_STREAM_TLAST,
        INPUT_STREAM_TID,
        INPUT_STREAM_TDEST,
        OUTPUT_STREAM_TDATA,
        OUTPUT_STREAM_TKEEP,
        OUTPUT_STREAM_TSTRB,
        OUTPUT_STREAM_TUSER,
        OUTPUT_STREAM_TLAST,
        OUTPUT_STREAM_TID,
        OUTPUT_STREAM_TDEST,
        ap_clk,
        ap_rst_n,
        INPUT_STREAM_TVALID,
        INPUT_STREAM_TREADY,
        ap_start,
        OUTPUT_STREAM_TVALID,
        OUTPUT_STREAM_TREADY,
        ap_done,
        ap_ready,
        ap_idle
);


input  [31:0] INPUT_STREAM_TDATA;
input  [3:0] INPUT_STREAM_TKEEP;
input  [3:0] INPUT_STREAM_TSTRB;
input  [0:0] INPUT_STREAM_TUSER;
input  [0:0] INPUT_STREAM_TLAST;
input  [0:0] INPUT_STREAM_TID;
input  [0:0] INPUT_STREAM_TDEST;
output  [31:0] OUTPUT_STREAM_TDATA;
output  [3:0] OUTPUT_STREAM_TKEEP;
output  [3:0] OUTPUT_STREAM_TSTRB;
output  [0:0] OUTPUT_STREAM_TUSER;
output  [0:0] OUTPUT_STREAM_TLAST;
output  [0:0] OUTPUT_STREAM_TID;
output  [0:0] OUTPUT_STREAM_TDEST;
input   ap_clk;
input   ap_rst_n;
input   INPUT_STREAM_TVALID;
output   INPUT_STREAM_TREADY;
input   ap_start;
output   OUTPUT_STREAM_TVALID;
input   OUTPUT_STREAM_TREADY;
output   ap_done;
output   ap_ready;
output   ap_idle;

 reg    ap_rst_n_inv;
wire    AXIvideo2Mat_U0_ap_start;
wire    AXIvideo2Mat_U0_ap_done;
wire    AXIvideo2Mat_U0_ap_continue;
wire    AXIvideo2Mat_U0_ap_idle;
wire    AXIvideo2Mat_U0_ap_ready;
wire    AXIvideo2Mat_U0_start_out;
wire    AXIvideo2Mat_U0_start_write;
wire    AXIvideo2Mat_U0_INPUT_STREAM_TREADY;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_0_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_0_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_1_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_1_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_2_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_2_V_write;
wire    replicate_by2_U0_ap_start;
wire    replicate_by2_U0_start_full_n;
wire    replicate_by2_U0_ap_done;
wire    replicate_by2_U0_ap_continue;
wire    replicate_by2_U0_ap_idle;
wire    replicate_by2_U0_ap_ready;
wire    replicate_by2_U0_start_out;
wire    replicate_by2_U0_start_write;
wire    replicate_by2_U0_img_in_data_stream_0_V_read;
wire    replicate_by2_U0_img_in_data_stream_1_V_read;
wire    replicate_by2_U0_img_in_data_stream_2_V_read;
wire   [7:0] replicate_by2_U0_img_out0_data_stream_0_V_din;
wire    replicate_by2_U0_img_out0_data_stream_0_V_write;
wire   [7:0] replicate_by2_U0_img_out0_data_stream_1_V_din;
wire    replicate_by2_U0_img_out0_data_stream_1_V_write;
wire   [7:0] replicate_by2_U0_img_out0_data_stream_2_V_din;
wire    replicate_by2_U0_img_out0_data_stream_2_V_write;
wire   [7:0] replicate_by2_U0_img_out1_data_stream_0_V_din;
wire    replicate_by2_U0_img_out1_data_stream_0_V_write;
wire   [7:0] replicate_by2_U0_img_out1_data_stream_1_V_din;
wire    replicate_by2_U0_img_out1_data_stream_1_V_write;
wire   [7:0] replicate_by2_U0_img_out1_data_stream_2_V_din;
wire    replicate_by2_U0_img_out1_data_stream_2_V_write;
wire    grad_vertical_Mat_U0_ap_start;
wire    grad_vertical_Mat_U0_ap_done;
wire    grad_vertical_Mat_U0_ap_continue;
wire    grad_vertical_Mat_U0_ap_idle;
wire    grad_vertical_Mat_U0_ap_ready;
wire    grad_vertical_Mat_U0_start_out;
wire    grad_vertical_Mat_U0_start_write;
wire    grad_vertical_Mat_U0_img_in_data_stream_0_V_read;
wire    grad_vertical_Mat_U0_img_in_data_stream_1_V_read;
wire    grad_vertical_Mat_U0_img_in_data_stream_2_V_read;
wire   [7:0] grad_vertical_Mat_U0_img_out_data_stream_0_V_din;
wire    grad_vertical_Mat_U0_img_out_data_stream_0_V_write;
wire   [7:0] grad_vertical_Mat_U0_img_out_data_stream_1_V_din;
wire    grad_vertical_Mat_U0_img_out_data_stream_1_V_write;
wire   [7:0] grad_vertical_Mat_U0_img_out_data_stream_2_V_din;
wire    grad_vertical_Mat_U0_img_out_data_stream_2_V_write;
wire    grad_horizontal_U0_ap_start;
wire    grad_horizontal_U0_ap_done;
wire    grad_horizontal_U0_ap_continue;
wire    grad_horizontal_U0_ap_idle;
wire    grad_horizontal_U0_ap_ready;
wire    grad_horizontal_U0_img_in_data_stream_0_V_read;
wire    grad_horizontal_U0_img_in_data_stream_1_V_read;
wire    grad_horizontal_U0_img_in_data_stream_2_V_read;
wire   [7:0] grad_horizontal_U0_img_out_data_stream_0_V_din;
wire    grad_horizontal_U0_img_out_data_stream_0_V_write;
wire   [7:0] grad_horizontal_U0_img_out_data_stream_1_V_din;
wire    grad_horizontal_U0_img_out_data_stream_1_V_write;
wire   [7:0] grad_horizontal_U0_img_out_data_stream_2_V_din;
wire    grad_horizontal_U0_img_out_data_stream_2_V_write;
wire    add_with_color_U0_ap_start;
wire    add_with_color_U0_ap_done;
wire    add_with_color_U0_ap_continue;
wire    add_with_color_U0_ap_idle;
wire    add_with_color_U0_ap_ready;
wire    add_with_color_U0_img_in0_data_stream_0_V_read;
wire    add_with_color_U0_img_in0_data_stream_1_V_read;
wire    add_with_color_U0_img_in0_data_stream_2_V_read;
wire    add_with_color_U0_img_in1_data_stream_0_V_read;
wire    add_with_color_U0_img_in1_data_stream_1_V_read;
wire    add_with_color_U0_img_in1_data_stream_2_V_read;
wire   [7:0] add_with_color_U0_img_out_data_stream_0_V_din;
wire    add_with_color_U0_img_out_data_stream_0_V_write;
wire   [7:0] add_with_color_U0_img_out_data_stream_1_V_din;
wire    add_with_color_U0_img_out_data_stream_1_V_write;
wire   [7:0] add_with_color_U0_img_out_data_stream_2_V_din;
wire    add_with_color_U0_img_out_data_stream_2_V_write;
wire    add_with_color_U0_start_out;
wire    add_with_color_U0_start_write;
wire    Mat2AXIvideo_U0_ap_start;
wire    Mat2AXIvideo_U0_ap_done;
wire    Mat2AXIvideo_U0_ap_continue;
wire    Mat2AXIvideo_U0_ap_idle;
wire    Mat2AXIvideo_U0_ap_ready;
wire    Mat2AXIvideo_U0_img_data_stream_0_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_1_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_2_V_read;
wire   [31:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA;
wire    Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID;
wire   [3:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP;
wire   [3:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TID;
wire   [0:0] Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST;
wire    ap_sync_continue;
wire    img_0_data_stream_0_full_n;
wire   [7:0] img_0_data_stream_0_dout;
wire    img_0_data_stream_0_empty_n;
wire    img_0_data_stream_1_full_n;
wire   [7:0] img_0_data_stream_1_dout;
wire    img_0_data_stream_1_empty_n;
wire    img_0_data_stream_2_full_n;
wire   [7:0] img_0_data_stream_2_dout;
wire    img_0_data_stream_2_empty_n;
wire    img_1a_data_stream_0_full_n;
wire   [7:0] img_1a_data_stream_0_dout;
wire    img_1a_data_stream_0_empty_n;
wire    img_1a_data_stream_1_full_n;
wire   [7:0] img_1a_data_stream_1_dout;
wire    img_1a_data_stream_1_empty_n;
wire    img_1a_data_stream_2_full_n;
wire   [7:0] img_1a_data_stream_2_dout;
wire    img_1a_data_stream_2_empty_n;
wire    img_1b_data_stream_0_full_n;
wire   [7:0] img_1b_data_stream_0_dout;
wire    img_1b_data_stream_0_empty_n;
wire    img_1b_data_stream_1_full_n;
wire   [7:0] img_1b_data_stream_1_dout;
wire    img_1b_data_stream_1_empty_n;
wire    img_1b_data_stream_2_full_n;
wire   [7:0] img_1b_data_stream_2_dout;
wire    img_1b_data_stream_2_empty_n;
wire    img_2a_data_stream_0_full_n;
wire   [7:0] img_2a_data_stream_0_dout;
wire    img_2a_data_stream_0_empty_n;
wire    img_2a_data_stream_1_full_n;
wire   [7:0] img_2a_data_stream_1_dout;
wire    img_2a_data_stream_1_empty_n;
wire    img_2a_data_stream_2_full_n;
wire   [7:0] img_2a_data_stream_2_dout;
wire    img_2a_data_stream_2_empty_n;
wire    img_2b_data_stream_0_full_n;
wire   [7:0] img_2b_data_stream_0_dout;
wire    img_2b_data_stream_0_empty_n;
wire    img_2b_data_stream_1_full_n;
wire   [7:0] img_2b_data_stream_1_dout;
wire    img_2b_data_stream_1_empty_n;
wire    img_2b_data_stream_2_full_n;
wire   [7:0] img_2b_data_stream_2_dout;
wire    img_2b_data_stream_2_empty_n;
wire    img_3_data_stream_0_full_n;
wire   [7:0] img_3_data_stream_0_dout;
wire    img_3_data_stream_0_empty_n;
wire    img_3_data_stream_1_full_n;
wire   [7:0] img_3_data_stream_1_dout;
wire    img_3_data_stream_1_empty_n;
wire    img_3_data_stream_2_full_n;
wire   [7:0] img_3_data_stream_2_dout;
wire    img_3_data_stream_2_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire   [0:0] start_for_replicate_by2_U0_din;
wire    start_for_replicate_by2_U0_full_n;
wire   [0:0] start_for_replicate_by2_U0_dout;
wire    start_for_replicate_by2_U0_empty_n;
wire   [0:0] start_for_grad_vertical_Mat_U0_din;
wire    start_for_grad_vertical_Mat_U0_full_n;
wire   [0:0] start_for_grad_vertical_Mat_U0_dout;
wire    start_for_grad_vertical_Mat_U0_empty_n;
wire   [0:0] start_for_grad_horizontal_U0_din;
wire    start_for_grad_horizontal_U0_full_n;
wire   [0:0] start_for_grad_horizontal_U0_dout;
wire    start_for_grad_horizontal_U0_empty_n;
wire   [0:0] start_for_add_with_color_U0_din;
wire    start_for_add_with_color_U0_full_n;
wire   [0:0] start_for_add_with_color_U0_dout;
wire    start_for_add_with_color_U0_empty_n;
wire    grad_horizontal_U0_start_full_n;
wire    grad_horizontal_U0_start_write;
wire   [0:0] start_for_Mat2AXIvideo_U0_din;
wire    start_for_Mat2AXIvideo_U0_full_n;
wire   [0:0] start_for_Mat2AXIvideo_U0_dout;
wire    start_for_Mat2AXIvideo_U0_empty_n;
wire    Mat2AXIvideo_U0_start_full_n;
wire    Mat2AXIvideo_U0_start_write;

AXIvideo2Mat AXIvideo2Mat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIvideo2Mat_U0_ap_start),
    .start_full_n(start_for_replicate_by2_U0_full_n),
    .ap_done(AXIvideo2Mat_U0_ap_done),
    .ap_continue(AXIvideo2Mat_U0_ap_continue),
    .ap_idle(AXIvideo2Mat_U0_ap_idle),
    .ap_ready(AXIvideo2Mat_U0_ap_ready),
    .start_out(AXIvideo2Mat_U0_start_out),
    .start_write(AXIvideo2Mat_U0_start_write),
    .INPUT_STREAM_TDATA(INPUT_STREAM_TDATA),
    .INPUT_STREAM_TVALID(INPUT_STREAM_TVALID),
    .INPUT_STREAM_TREADY(AXIvideo2Mat_U0_INPUT_STREAM_TREADY),
    .INPUT_STREAM_TKEEP(INPUT_STREAM_TKEEP),
    .INPUT_STREAM_TSTRB(INPUT_STREAM_TSTRB),
    .INPUT_STREAM_TUSER(INPUT_STREAM_TUSER),
    .INPUT_STREAM_TLAST(INPUT_STREAM_TLAST),
    .INPUT_STREAM_TID(INPUT_STREAM_TID),
    .INPUT_STREAM_TDEST(INPUT_STREAM_TDEST),
    .img_data_stream_0_V_din(AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .img_data_stream_0_V_full_n(img_0_data_stream_0_full_n),
    .img_data_stream_0_V_write(AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .img_data_stream_1_V_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .img_data_stream_1_V_full_n(img_0_data_stream_1_full_n),
    .img_data_stream_1_V_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .img_data_stream_2_V_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .img_data_stream_2_V_full_n(img_0_data_stream_2_full_n),
    .img_data_stream_2_V_write(AXIvideo2Mat_U0_img_data_stream_2_V_write)
);

replicate_by2 replicate_by2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(replicate_by2_U0_ap_start),
    .start_full_n(replicate_by2_U0_start_full_n),
    .ap_done(replicate_by2_U0_ap_done),
    .ap_continue(replicate_by2_U0_ap_continue),
    .ap_idle(replicate_by2_U0_ap_idle),
    .ap_ready(replicate_by2_U0_ap_ready),
    .start_out(replicate_by2_U0_start_out),
    .start_write(replicate_by2_U0_start_write),
    .img_in_data_stream_0_V_dout(img_0_data_stream_0_dout),
    .img_in_data_stream_0_V_empty_n(img_0_data_stream_0_empty_n),
    .img_in_data_stream_0_V_read(replicate_by2_U0_img_in_data_stream_0_V_read),
    .img_in_data_stream_1_V_dout(img_0_data_stream_1_dout),
    .img_in_data_stream_1_V_empty_n(img_0_data_stream_1_empty_n),
    .img_in_data_stream_1_V_read(replicate_by2_U0_img_in_data_stream_1_V_read),
    .img_in_data_stream_2_V_dout(img_0_data_stream_2_dout),
    .img_in_data_stream_2_V_empty_n(img_0_data_stream_2_empty_n),
    .img_in_data_stream_2_V_read(replicate_by2_U0_img_in_data_stream_2_V_read),
    .img_out0_data_stream_0_V_din(replicate_by2_U0_img_out0_data_stream_0_V_din),
    .img_out0_data_stream_0_V_full_n(img_1a_data_stream_0_full_n),
    .img_out0_data_stream_0_V_write(replicate_by2_U0_img_out0_data_stream_0_V_write),
    .img_out0_data_stream_1_V_din(replicate_by2_U0_img_out0_data_stream_1_V_din),
    .img_out0_data_stream_1_V_full_n(img_1a_data_stream_1_full_n),
    .img_out0_data_stream_1_V_write(replicate_by2_U0_img_out0_data_stream_1_V_write),
    .img_out0_data_stream_2_V_din(replicate_by2_U0_img_out0_data_stream_2_V_din),
    .img_out0_data_stream_2_V_full_n(img_1a_data_stream_2_full_n),
    .img_out0_data_stream_2_V_write(replicate_by2_U0_img_out0_data_stream_2_V_write),
    .img_out1_data_stream_0_V_din(replicate_by2_U0_img_out1_data_stream_0_V_din),
    .img_out1_data_stream_0_V_full_n(img_1b_data_stream_0_full_n),
    .img_out1_data_stream_0_V_write(replicate_by2_U0_img_out1_data_stream_0_V_write),
    .img_out1_data_stream_1_V_din(replicate_by2_U0_img_out1_data_stream_1_V_din),
    .img_out1_data_stream_1_V_full_n(img_1b_data_stream_1_full_n),
    .img_out1_data_stream_1_V_write(replicate_by2_U0_img_out1_data_stream_1_V_write),
    .img_out1_data_stream_2_V_din(replicate_by2_U0_img_out1_data_stream_2_V_din),
    .img_out1_data_stream_2_V_full_n(img_1b_data_stream_2_full_n),
    .img_out1_data_stream_2_V_write(replicate_by2_U0_img_out1_data_stream_2_V_write)
);

grad_vertical_Mat_s grad_vertical_Mat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grad_vertical_Mat_U0_ap_start),
    .start_full_n(start_for_add_with_color_U0_full_n),
    .ap_done(grad_vertical_Mat_U0_ap_done),
    .ap_continue(grad_vertical_Mat_U0_ap_continue),
    .ap_idle(grad_vertical_Mat_U0_ap_idle),
    .ap_ready(grad_vertical_Mat_U0_ap_ready),
    .start_out(grad_vertical_Mat_U0_start_out),
    .start_write(grad_vertical_Mat_U0_start_write),
    .img_in_data_stream_0_V_dout(img_1a_data_stream_0_dout),
    .img_in_data_stream_0_V_empty_n(img_1a_data_stream_0_empty_n),
    .img_in_data_stream_0_V_read(grad_vertical_Mat_U0_img_in_data_stream_0_V_read),
    .img_in_data_stream_1_V_dout(img_1a_data_stream_1_dout),
    .img_in_data_stream_1_V_empty_n(img_1a_data_stream_1_empty_n),
    .img_in_data_stream_1_V_read(grad_vertical_Mat_U0_img_in_data_stream_1_V_read),
    .img_in_data_stream_2_V_dout(img_1a_data_stream_2_dout),
    .img_in_data_stream_2_V_empty_n(img_1a_data_stream_2_empty_n),
    .img_in_data_stream_2_V_read(grad_vertical_Mat_U0_img_in_data_stream_2_V_read),
    .img_out_data_stream_0_V_din(grad_vertical_Mat_U0_img_out_data_stream_0_V_din),
    .img_out_data_stream_0_V_full_n(img_2a_data_stream_0_full_n),
    .img_out_data_stream_0_V_write(grad_vertical_Mat_U0_img_out_data_stream_0_V_write),
    .img_out_data_stream_1_V_din(grad_vertical_Mat_U0_img_out_data_stream_1_V_din),
    .img_out_data_stream_1_V_full_n(img_2a_data_stream_1_full_n),
    .img_out_data_stream_1_V_write(grad_vertical_Mat_U0_img_out_data_stream_1_V_write),
    .img_out_data_stream_2_V_din(grad_vertical_Mat_U0_img_out_data_stream_2_V_din),
    .img_out_data_stream_2_V_full_n(img_2a_data_stream_2_full_n),
    .img_out_data_stream_2_V_write(grad_vertical_Mat_U0_img_out_data_stream_2_V_write)
);

grad_horizontal grad_horizontal_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grad_horizontal_U0_ap_start),
    .ap_done(grad_horizontal_U0_ap_done),
    .ap_continue(grad_horizontal_U0_ap_continue),
    .ap_idle(grad_horizontal_U0_ap_idle),
    .ap_ready(grad_horizontal_U0_ap_ready),
    .img_in_data_stream_0_V_dout(img_1b_data_stream_0_dout),
    .img_in_data_stream_0_V_empty_n(img_1b_data_stream_0_empty_n),
    .img_in_data_stream_0_V_read(grad_horizontal_U0_img_in_data_stream_0_V_read),
    .img_in_data_stream_1_V_dout(img_1b_data_stream_1_dout),
    .img_in_data_stream_1_V_empty_n(img_1b_data_stream_1_empty_n),
    .img_in_data_stream_1_V_read(grad_horizontal_U0_img_in_data_stream_1_V_read),
    .img_in_data_stream_2_V_dout(img_1b_data_stream_2_dout),
    .img_in_data_stream_2_V_empty_n(img_1b_data_stream_2_empty_n),
    .img_in_data_stream_2_V_read(grad_horizontal_U0_img_in_data_stream_2_V_read),
    .img_out_data_stream_0_V_din(grad_horizontal_U0_img_out_data_stream_0_V_din),
    .img_out_data_stream_0_V_full_n(img_2b_data_stream_0_full_n),
    .img_out_data_stream_0_V_write(grad_horizontal_U0_img_out_data_stream_0_V_write),
    .img_out_data_stream_1_V_din(grad_horizontal_U0_img_out_data_stream_1_V_din),
    .img_out_data_stream_1_V_full_n(img_2b_data_stream_1_full_n),
    .img_out_data_stream_1_V_write(grad_horizontal_U0_img_out_data_stream_1_V_write),
    .img_out_data_stream_2_V_din(grad_horizontal_U0_img_out_data_stream_2_V_din),
    .img_out_data_stream_2_V_full_n(img_2b_data_stream_2_full_n),
    .img_out_data_stream_2_V_write(grad_horizontal_U0_img_out_data_stream_2_V_write)
);

add_with_color add_with_color_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(add_with_color_U0_ap_start),
    .start_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .ap_done(add_with_color_U0_ap_done),
    .ap_continue(add_with_color_U0_ap_continue),
    .ap_idle(add_with_color_U0_ap_idle),
    .ap_ready(add_with_color_U0_ap_ready),
    .img_in0_data_stream_0_V_dout(img_2a_data_stream_0_dout),
    .img_in0_data_stream_0_V_empty_n(img_2a_data_stream_0_empty_n),
    .img_in0_data_stream_0_V_read(add_with_color_U0_img_in0_data_stream_0_V_read),
    .img_in0_data_stream_1_V_dout(img_2a_data_stream_1_dout),
    .img_in0_data_stream_1_V_empty_n(img_2a_data_stream_1_empty_n),
    .img_in0_data_stream_1_V_read(add_with_color_U0_img_in0_data_stream_1_V_read),
    .img_in0_data_stream_2_V_dout(img_2a_data_stream_2_dout),
    .img_in0_data_stream_2_V_empty_n(img_2a_data_stream_2_empty_n),
    .img_in0_data_stream_2_V_read(add_with_color_U0_img_in0_data_stream_2_V_read),
    .img_in1_data_stream_0_V_dout(img_2b_data_stream_0_dout),
    .img_in1_data_stream_0_V_empty_n(img_2b_data_stream_0_empty_n),
    .img_in1_data_stream_0_V_read(add_with_color_U0_img_in1_data_stream_0_V_read),
    .img_in1_data_stream_1_V_dout(img_2b_data_stream_1_dout),
    .img_in1_data_stream_1_V_empty_n(img_2b_data_stream_1_empty_n),
    .img_in1_data_stream_1_V_read(add_with_color_U0_img_in1_data_stream_1_V_read),
    .img_in1_data_stream_2_V_dout(img_2b_data_stream_2_dout),
    .img_in1_data_stream_2_V_empty_n(img_2b_data_stream_2_empty_n),
    .img_in1_data_stream_2_V_read(add_with_color_U0_img_in1_data_stream_2_V_read),
    .img_out_data_stream_0_V_din(add_with_color_U0_img_out_data_stream_0_V_din),
    .img_out_data_stream_0_V_full_n(img_3_data_stream_0_full_n),
    .img_out_data_stream_0_V_write(add_with_color_U0_img_out_data_stream_0_V_write),
    .img_out_data_stream_1_V_din(add_with_color_U0_img_out_data_stream_1_V_din),
    .img_out_data_stream_1_V_full_n(img_3_data_stream_1_full_n),
    .img_out_data_stream_1_V_write(add_with_color_U0_img_out_data_stream_1_V_write),
    .img_out_data_stream_2_V_din(add_with_color_U0_img_out_data_stream_2_V_din),
    .img_out_data_stream_2_V_full_n(img_3_data_stream_2_full_n),
    .img_out_data_stream_2_V_write(add_with_color_U0_img_out_data_stream_2_V_write),
    .start_out(add_with_color_U0_start_out),
    .start_write(add_with_color_U0_start_write)
);

Mat2AXIvideo Mat2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Mat2AXIvideo_U0_ap_start),
    .ap_done(Mat2AXIvideo_U0_ap_done),
    .ap_continue(Mat2AXIvideo_U0_ap_continue),
    .ap_idle(Mat2AXIvideo_U0_ap_idle),
    .ap_ready(Mat2AXIvideo_U0_ap_ready),
    .img_data_stream_0_V_dout(img_3_data_stream_0_dout),
    .img_data_stream_0_V_empty_n(img_3_data_stream_0_empty_n),
    .img_data_stream_0_V_read(Mat2AXIvideo_U0_img_data_stream_0_V_read),
    .img_data_stream_1_V_dout(img_3_data_stream_1_dout),
    .img_data_stream_1_V_empty_n(img_3_data_stream_1_empty_n),
    .img_data_stream_1_V_read(Mat2AXIvideo_U0_img_data_stream_1_V_read),
    .img_data_stream_2_V_dout(img_3_data_stream_2_dout),
    .img_data_stream_2_V_empty_n(img_3_data_stream_2_empty_n),
    .img_data_stream_2_V_read(Mat2AXIvideo_U0_img_data_stream_2_V_read),
    .OUTPUT_STREAM_TDATA(Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA),
    .OUTPUT_STREAM_TVALID(Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID),
    .OUTPUT_STREAM_TREADY(OUTPUT_STREAM_TREADY),
    .OUTPUT_STREAM_TKEEP(Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP),
    .OUTPUT_STREAM_TSTRB(Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB),
    .OUTPUT_STREAM_TUSER(Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER),
    .OUTPUT_STREAM_TLAST(Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST),
    .OUTPUT_STREAM_TID(Mat2AXIvideo_U0_OUTPUT_STREAM_TID),
    .OUTPUT_STREAM_TDEST(Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST)
);

fifo_w8_d2_A img_0_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .if_full_n(img_0_data_stream_0_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .if_dout(img_0_data_stream_0_dout),
    .if_empty_n(img_0_data_stream_0_empty_n),
    .if_read(replicate_by2_U0_img_in_data_stream_0_V_read)
);

fifo_w8_d2_A img_0_data_stream_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .if_full_n(img_0_data_stream_1_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .if_dout(img_0_data_stream_1_dout),
    .if_empty_n(img_0_data_stream_1_empty_n),
    .if_read(replicate_by2_U0_img_in_data_stream_1_V_read)
);

fifo_w8_d2_A img_0_data_stream_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .if_full_n(img_0_data_stream_2_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_2_V_write),
    .if_dout(img_0_data_stream_2_dout),
    .if_empty_n(img_0_data_stream_2_empty_n),
    .if_read(replicate_by2_U0_img_in_data_stream_2_V_read)
);

fifo_w8_d2_A img_1a_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(replicate_by2_U0_img_out0_data_stream_0_V_din),
    .if_full_n(img_1a_data_stream_0_full_n),
    .if_write(replicate_by2_U0_img_out0_data_stream_0_V_write),
    .if_dout(img_1a_data_stream_0_dout),
    .if_empty_n(img_1a_data_stream_0_empty_n),
    .if_read(grad_vertical_Mat_U0_img_in_data_stream_0_V_read)
);

fifo_w8_d2_A img_1a_data_stream_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(replicate_by2_U0_img_out0_data_stream_1_V_din),
    .if_full_n(img_1a_data_stream_1_full_n),
    .if_write(replicate_by2_U0_img_out0_data_stream_1_V_write),
    .if_dout(img_1a_data_stream_1_dout),
    .if_empty_n(img_1a_data_stream_1_empty_n),
    .if_read(grad_vertical_Mat_U0_img_in_data_stream_1_V_read)
);

fifo_w8_d2_A img_1a_data_stream_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(replicate_by2_U0_img_out0_data_stream_2_V_din),
    .if_full_n(img_1a_data_stream_2_full_n),
    .if_write(replicate_by2_U0_img_out0_data_stream_2_V_write),
    .if_dout(img_1a_data_stream_2_dout),
    .if_empty_n(img_1a_data_stream_2_empty_n),
    .if_read(grad_vertical_Mat_U0_img_in_data_stream_2_V_read)
);

fifo_w8_d2_A img_1b_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(replicate_by2_U0_img_out1_data_stream_0_V_din),
    .if_full_n(img_1b_data_stream_0_full_n),
    .if_write(replicate_by2_U0_img_out1_data_stream_0_V_write),
    .if_dout(img_1b_data_stream_0_dout),
    .if_empty_n(img_1b_data_stream_0_empty_n),
    .if_read(grad_horizontal_U0_img_in_data_stream_0_V_read)
);

fifo_w8_d2_A img_1b_data_stream_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(replicate_by2_U0_img_out1_data_stream_1_V_din),
    .if_full_n(img_1b_data_stream_1_full_n),
    .if_write(replicate_by2_U0_img_out1_data_stream_1_V_write),
    .if_dout(img_1b_data_stream_1_dout),
    .if_empty_n(img_1b_data_stream_1_empty_n),
    .if_read(grad_horizontal_U0_img_in_data_stream_1_V_read)
);

fifo_w8_d2_A img_1b_data_stream_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(replicate_by2_U0_img_out1_data_stream_2_V_din),
    .if_full_n(img_1b_data_stream_2_full_n),
    .if_write(replicate_by2_U0_img_out1_data_stream_2_V_write),
    .if_dout(img_1b_data_stream_2_dout),
    .if_empty_n(img_1b_data_stream_2_empty_n),
    .if_read(grad_horizontal_U0_img_in_data_stream_2_V_read)
);

fifo_w8_d2_A img_2a_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(grad_vertical_Mat_U0_img_out_data_stream_0_V_din),
    .if_full_n(img_2a_data_stream_0_full_n),
    .if_write(grad_vertical_Mat_U0_img_out_data_stream_0_V_write),
    .if_dout(img_2a_data_stream_0_dout),
    .if_empty_n(img_2a_data_stream_0_empty_n),
    .if_read(add_with_color_U0_img_in0_data_stream_0_V_read)
);

fifo_w8_d2_A img_2a_data_stream_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(grad_vertical_Mat_U0_img_out_data_stream_1_V_din),
    .if_full_n(img_2a_data_stream_1_full_n),
    .if_write(grad_vertical_Mat_U0_img_out_data_stream_1_V_write),
    .if_dout(img_2a_data_stream_1_dout),
    .if_empty_n(img_2a_data_stream_1_empty_n),
    .if_read(add_with_color_U0_img_in0_data_stream_1_V_read)
);

fifo_w8_d2_A img_2a_data_stream_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(grad_vertical_Mat_U0_img_out_data_stream_2_V_din),
    .if_full_n(img_2a_data_stream_2_full_n),
    .if_write(grad_vertical_Mat_U0_img_out_data_stream_2_V_write),
    .if_dout(img_2a_data_stream_2_dout),
    .if_empty_n(img_2a_data_stream_2_empty_n),
    .if_read(add_with_color_U0_img_in0_data_stream_2_V_read)
);

fifo_w8_d2_A img_2b_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(grad_horizontal_U0_img_out_data_stream_0_V_din),
    .if_full_n(img_2b_data_stream_0_full_n),
    .if_write(grad_horizontal_U0_img_out_data_stream_0_V_write),
    .if_dout(img_2b_data_stream_0_dout),
    .if_empty_n(img_2b_data_stream_0_empty_n),
    .if_read(add_with_color_U0_img_in1_data_stream_0_V_read)
);

fifo_w8_d2_A img_2b_data_stream_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(grad_horizontal_U0_img_out_data_stream_1_V_din),
    .if_full_n(img_2b_data_stream_1_full_n),
    .if_write(grad_horizontal_U0_img_out_data_stream_1_V_write),
    .if_dout(img_2b_data_stream_1_dout),
    .if_empty_n(img_2b_data_stream_1_empty_n),
    .if_read(add_with_color_U0_img_in1_data_stream_1_V_read)
);

fifo_w8_d2_A img_2b_data_stream_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(grad_horizontal_U0_img_out_data_stream_2_V_din),
    .if_full_n(img_2b_data_stream_2_full_n),
    .if_write(grad_horizontal_U0_img_out_data_stream_2_V_write),
    .if_dout(img_2b_data_stream_2_dout),
    .if_empty_n(img_2b_data_stream_2_empty_n),
    .if_read(add_with_color_U0_img_in1_data_stream_2_V_read)
);

fifo_w8_d2_A img_3_data_stream_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(add_with_color_U0_img_out_data_stream_0_V_din),
    .if_full_n(img_3_data_stream_0_full_n),
    .if_write(add_with_color_U0_img_out_data_stream_0_V_write),
    .if_dout(img_3_data_stream_0_dout),
    .if_empty_n(img_3_data_stream_0_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_0_V_read)
);

fifo_w8_d2_A img_3_data_stream_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(add_with_color_U0_img_out_data_stream_1_V_din),
    .if_full_n(img_3_data_stream_1_full_n),
    .if_write(add_with_color_U0_img_out_data_stream_1_V_write),
    .if_dout(img_3_data_stream_1_dout),
    .if_empty_n(img_3_data_stream_1_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_1_V_read)
);

fifo_w8_d2_A img_3_data_stream_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(add_with_color_U0_img_out_data_stream_2_V_din),
    .if_full_n(img_3_data_stream_2_full_n),
    .if_write(add_with_color_U0_img_out_data_stream_2_V_write),
    .if_dout(img_3_data_stream_2_dout),
    .if_empty_n(img_3_data_stream_2_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_2_V_read)
);

start_for_replicate_by2_U0 start_for_replicate_by2_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_replicate_by2_U0_din),
    .if_full_n(start_for_replicate_by2_U0_full_n),
    .if_write(AXIvideo2Mat_U0_start_write),
    .if_dout(start_for_replicate_by2_U0_dout),
    .if_empty_n(start_for_replicate_by2_U0_empty_n),
    .if_read(replicate_by2_U0_ap_ready)
);

start_for_grad_vertical_Mat_U0 start_for_grad_vertical_Mat_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_grad_vertical_Mat_U0_din),
    .if_full_n(start_for_grad_vertical_Mat_U0_full_n),
    .if_write(replicate_by2_U0_start_write),
    .if_dout(start_for_grad_vertical_Mat_U0_dout),
    .if_empty_n(start_for_grad_vertical_Mat_U0_empty_n),
    .if_read(grad_vertical_Mat_U0_ap_ready)
);

start_for_grad_horizontal_U0 start_for_grad_horizontal_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_grad_horizontal_U0_din),
    .if_full_n(start_for_grad_horizontal_U0_full_n),
    .if_write(replicate_by2_U0_start_write),
    .if_dout(start_for_grad_horizontal_U0_dout),
    .if_empty_n(start_for_grad_horizontal_U0_empty_n),
    .if_read(grad_horizontal_U0_ap_ready)
);

start_for_add_with_color_U0 start_for_add_with_color_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_add_with_color_U0_din),
    .if_full_n(start_for_add_with_color_U0_full_n),
    .if_write(grad_vertical_Mat_U0_start_write),
    .if_dout(start_for_add_with_color_U0_dout),
    .if_empty_n(start_for_add_with_color_U0_empty_n),
    .if_read(add_with_color_U0_ap_ready)
);

start_for_Mat2AXIvideo_U0 start_for_Mat2AXIvideo_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Mat2AXIvideo_U0_din),
    .if_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .if_write(add_with_color_U0_start_write),
    .if_dout(start_for_Mat2AXIvideo_U0_dout),
    .if_empty_n(start_for_Mat2AXIvideo_U0_empty_n),
    .if_read(Mat2AXIvideo_U0_ap_ready)
);

assign AXIvideo2Mat_U0_ap_continue = 1'b1;

assign AXIvideo2Mat_U0_ap_start = ap_start;

assign INPUT_STREAM_TREADY = AXIvideo2Mat_U0_INPUT_STREAM_TREADY;

assign Mat2AXIvideo_U0_ap_continue = 1'b1;

assign Mat2AXIvideo_U0_ap_start = start_for_Mat2AXIvideo_U0_empty_n;

assign Mat2AXIvideo_U0_start_full_n = 1'b1;

assign Mat2AXIvideo_U0_start_write = 1'b0;

assign OUTPUT_STREAM_TDATA = Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA;

assign OUTPUT_STREAM_TDEST = Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST;

assign OUTPUT_STREAM_TID = Mat2AXIvideo_U0_OUTPUT_STREAM_TID;

assign OUTPUT_STREAM_TKEEP = Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP;

assign OUTPUT_STREAM_TLAST = Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST;

assign OUTPUT_STREAM_TSTRB = Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB;

assign OUTPUT_STREAM_TUSER = Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER;

assign OUTPUT_STREAM_TVALID = Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID;

assign add_with_color_U0_ap_continue = 1'b1;

assign add_with_color_U0_ap_start = start_for_add_with_color_U0_empty_n;

assign ap_done = Mat2AXIvideo_U0_ap_done;

assign ap_idle = (replicate_by2_U0_ap_idle & grad_vertical_Mat_U0_ap_idle & grad_horizontal_U0_ap_idle & add_with_color_U0_ap_idle & Mat2AXIvideo_U0_ap_idle & AXIvideo2Mat_U0_ap_idle);

assign ap_ready = AXIvideo2Mat_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Mat2AXIvideo_U0_ap_done;

assign ap_sync_ready = AXIvideo2Mat_U0_ap_ready;

assign grad_horizontal_U0_ap_continue = 1'b1;

assign grad_horizontal_U0_ap_start = start_for_grad_horizontal_U0_empty_n;

assign grad_horizontal_U0_start_full_n = 1'b1;

assign grad_horizontal_U0_start_write = 1'b0;

assign grad_vertical_Mat_U0_ap_continue = 1'b1;

assign grad_vertical_Mat_U0_ap_start = start_for_grad_vertical_Mat_U0_empty_n;

assign replicate_by2_U0_ap_continue = 1'b1;

assign replicate_by2_U0_ap_start = start_for_replicate_by2_U0_empty_n;

assign replicate_by2_U0_start_full_n = (start_for_grad_vertical_Mat_U0_full_n & start_for_grad_horizontal_U0_full_n);

assign start_for_Mat2AXIvideo_U0_din = 1'b1;

assign start_for_add_with_color_U0_din = 1'b1;

assign start_for_grad_horizontal_U0_din = 1'b1;

assign start_for_grad_vertical_Mat_U0_din = 1'b1;

assign start_for_replicate_by2_U0_din = 1'b1;

endmodule //image_filter
