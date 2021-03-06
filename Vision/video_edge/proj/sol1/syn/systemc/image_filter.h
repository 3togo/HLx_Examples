// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _image_filter_HH_
#define _image_filter_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "AXIvideo2Mat.h"
#include "replicate_by2.h"
#include "grad_vertical_Mat_s.h"
#include "grad_horizontal.h"
#include "add_with_color.h"
#include "Mat2AXIvideo.h"
#include "fifo_w8_d2_A.h"
#include "start_for_replicate_by2_U0.h"
#include "start_for_grad_vertical_Mat_U0.h"
#include "start_for_grad_horizontal_U0.h"
#include "start_for_add_with_color_U0.h"
#include "start_for_Mat2AXIvideo_U0.h"

namespace ap_rtl {

struct image_filter : public sc_module {
    // Port declarations 24
    sc_in< sc_lv<32> > INPUT_STREAM_TDATA;
    sc_in< sc_lv<4> > INPUT_STREAM_TKEEP;
    sc_in< sc_lv<4> > INPUT_STREAM_TSTRB;
    sc_in< sc_lv<1> > INPUT_STREAM_TUSER;
    sc_in< sc_lv<1> > INPUT_STREAM_TLAST;
    sc_in< sc_lv<1> > INPUT_STREAM_TID;
    sc_in< sc_lv<1> > INPUT_STREAM_TDEST;
    sc_out< sc_lv<32> > OUTPUT_STREAM_TDATA;
    sc_out< sc_lv<4> > OUTPUT_STREAM_TKEEP;
    sc_out< sc_lv<4> > OUTPUT_STREAM_TSTRB;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TUSER;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TLAST;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TID;
    sc_out< sc_lv<1> > OUTPUT_STREAM_TDEST;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > INPUT_STREAM_TVALID;
    sc_out< sc_logic > INPUT_STREAM_TREADY;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > OUTPUT_STREAM_TVALID;
    sc_in< sc_logic > OUTPUT_STREAM_TREADY;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    image_filter(sc_module_name name);
    SC_HAS_PROCESS(image_filter);

    ~image_filter();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    AXIvideo2Mat* AXIvideo2Mat_U0;
    replicate_by2* replicate_by2_U0;
    grad_vertical_Mat_s* grad_vertical_Mat_U0;
    grad_horizontal* grad_horizontal_U0;
    add_with_color* add_with_color_U0;
    Mat2AXIvideo* Mat2AXIvideo_U0;
    fifo_w8_d2_A* img_0_data_stream_0_U;
    fifo_w8_d2_A* img_0_data_stream_1_U;
    fifo_w8_d2_A* img_0_data_stream_2_U;
    fifo_w8_d2_A* img_1a_data_stream_0_U;
    fifo_w8_d2_A* img_1a_data_stream_1_U;
    fifo_w8_d2_A* img_1a_data_stream_2_U;
    fifo_w8_d2_A* img_1b_data_stream_0_U;
    fifo_w8_d2_A* img_1b_data_stream_1_U;
    fifo_w8_d2_A* img_1b_data_stream_2_U;
    fifo_w8_d2_A* img_2a_data_stream_0_U;
    fifo_w8_d2_A* img_2a_data_stream_1_U;
    fifo_w8_d2_A* img_2a_data_stream_2_U;
    fifo_w8_d2_A* img_2b_data_stream_0_U;
    fifo_w8_d2_A* img_2b_data_stream_1_U;
    fifo_w8_d2_A* img_2b_data_stream_2_U;
    fifo_w8_d2_A* img_3_data_stream_0_U;
    fifo_w8_d2_A* img_3_data_stream_1_U;
    fifo_w8_d2_A* img_3_data_stream_2_U;
    start_for_replicate_by2_U0* start_for_replicate_by2_U0_U;
    start_for_grad_vertical_Mat_U0* start_for_grad_vertical_Mat_U0_U;
    start_for_grad_horizontal_U0* start_for_grad_horizontal_U0_U;
    start_for_add_with_color_U0* start_for_add_with_color_U0_U;
    start_for_Mat2AXIvideo_U0* start_for_Mat2AXIvideo_U0_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_start;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_done;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_continue;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_idle;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_ready;
    sc_signal< sc_logic > AXIvideo2Mat_U0_start_out;
    sc_signal< sc_logic > AXIvideo2Mat_U0_start_write;
    sc_signal< sc_logic > AXIvideo2Mat_U0_INPUT_STREAM_TREADY;
    sc_signal< sc_lv<8> > AXIvideo2Mat_U0_img_data_stream_0_V_din;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_data_stream_0_V_write;
    sc_signal< sc_lv<8> > AXIvideo2Mat_U0_img_data_stream_1_V_din;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_data_stream_1_V_write;
    sc_signal< sc_lv<8> > AXIvideo2Mat_U0_img_data_stream_2_V_din;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_data_stream_2_V_write;
    sc_signal< sc_logic > replicate_by2_U0_ap_start;
    sc_signal< sc_logic > replicate_by2_U0_start_full_n;
    sc_signal< sc_logic > replicate_by2_U0_ap_done;
    sc_signal< sc_logic > replicate_by2_U0_ap_continue;
    sc_signal< sc_logic > replicate_by2_U0_ap_idle;
    sc_signal< sc_logic > replicate_by2_U0_ap_ready;
    sc_signal< sc_logic > replicate_by2_U0_start_out;
    sc_signal< sc_logic > replicate_by2_U0_start_write;
    sc_signal< sc_logic > replicate_by2_U0_img_in_data_stream_0_V_read;
    sc_signal< sc_logic > replicate_by2_U0_img_in_data_stream_1_V_read;
    sc_signal< sc_logic > replicate_by2_U0_img_in_data_stream_2_V_read;
    sc_signal< sc_lv<8> > replicate_by2_U0_img_out0_data_stream_0_V_din;
    sc_signal< sc_logic > replicate_by2_U0_img_out0_data_stream_0_V_write;
    sc_signal< sc_lv<8> > replicate_by2_U0_img_out0_data_stream_1_V_din;
    sc_signal< sc_logic > replicate_by2_U0_img_out0_data_stream_1_V_write;
    sc_signal< sc_lv<8> > replicate_by2_U0_img_out0_data_stream_2_V_din;
    sc_signal< sc_logic > replicate_by2_U0_img_out0_data_stream_2_V_write;
    sc_signal< sc_lv<8> > replicate_by2_U0_img_out1_data_stream_0_V_din;
    sc_signal< sc_logic > replicate_by2_U0_img_out1_data_stream_0_V_write;
    sc_signal< sc_lv<8> > replicate_by2_U0_img_out1_data_stream_1_V_din;
    sc_signal< sc_logic > replicate_by2_U0_img_out1_data_stream_1_V_write;
    sc_signal< sc_lv<8> > replicate_by2_U0_img_out1_data_stream_2_V_din;
    sc_signal< sc_logic > replicate_by2_U0_img_out1_data_stream_2_V_write;
    sc_signal< sc_logic > grad_vertical_Mat_U0_ap_start;
    sc_signal< sc_logic > grad_vertical_Mat_U0_ap_done;
    sc_signal< sc_logic > grad_vertical_Mat_U0_ap_continue;
    sc_signal< sc_logic > grad_vertical_Mat_U0_ap_idle;
    sc_signal< sc_logic > grad_vertical_Mat_U0_ap_ready;
    sc_signal< sc_logic > grad_vertical_Mat_U0_start_out;
    sc_signal< sc_logic > grad_vertical_Mat_U0_start_write;
    sc_signal< sc_logic > grad_vertical_Mat_U0_img_in_data_stream_0_V_read;
    sc_signal< sc_logic > grad_vertical_Mat_U0_img_in_data_stream_1_V_read;
    sc_signal< sc_logic > grad_vertical_Mat_U0_img_in_data_stream_2_V_read;
    sc_signal< sc_lv<8> > grad_vertical_Mat_U0_img_out_data_stream_0_V_din;
    sc_signal< sc_logic > grad_vertical_Mat_U0_img_out_data_stream_0_V_write;
    sc_signal< sc_lv<8> > grad_vertical_Mat_U0_img_out_data_stream_1_V_din;
    sc_signal< sc_logic > grad_vertical_Mat_U0_img_out_data_stream_1_V_write;
    sc_signal< sc_lv<8> > grad_vertical_Mat_U0_img_out_data_stream_2_V_din;
    sc_signal< sc_logic > grad_vertical_Mat_U0_img_out_data_stream_2_V_write;
    sc_signal< sc_logic > grad_horizontal_U0_ap_start;
    sc_signal< sc_logic > grad_horizontal_U0_ap_done;
    sc_signal< sc_logic > grad_horizontal_U0_ap_continue;
    sc_signal< sc_logic > grad_horizontal_U0_ap_idle;
    sc_signal< sc_logic > grad_horizontal_U0_ap_ready;
    sc_signal< sc_logic > grad_horizontal_U0_img_in_data_stream_0_V_read;
    sc_signal< sc_logic > grad_horizontal_U0_img_in_data_stream_1_V_read;
    sc_signal< sc_logic > grad_horizontal_U0_img_in_data_stream_2_V_read;
    sc_signal< sc_lv<8> > grad_horizontal_U0_img_out_data_stream_0_V_din;
    sc_signal< sc_logic > grad_horizontal_U0_img_out_data_stream_0_V_write;
    sc_signal< sc_lv<8> > grad_horizontal_U0_img_out_data_stream_1_V_din;
    sc_signal< sc_logic > grad_horizontal_U0_img_out_data_stream_1_V_write;
    sc_signal< sc_lv<8> > grad_horizontal_U0_img_out_data_stream_2_V_din;
    sc_signal< sc_logic > grad_horizontal_U0_img_out_data_stream_2_V_write;
    sc_signal< sc_logic > add_with_color_U0_ap_start;
    sc_signal< sc_logic > add_with_color_U0_ap_done;
    sc_signal< sc_logic > add_with_color_U0_ap_continue;
    sc_signal< sc_logic > add_with_color_U0_ap_idle;
    sc_signal< sc_logic > add_with_color_U0_ap_ready;
    sc_signal< sc_logic > add_with_color_U0_img_in0_data_stream_0_V_read;
    sc_signal< sc_logic > add_with_color_U0_img_in0_data_stream_1_V_read;
    sc_signal< sc_logic > add_with_color_U0_img_in0_data_stream_2_V_read;
    sc_signal< sc_logic > add_with_color_U0_img_in1_data_stream_0_V_read;
    sc_signal< sc_logic > add_with_color_U0_img_in1_data_stream_1_V_read;
    sc_signal< sc_logic > add_with_color_U0_img_in1_data_stream_2_V_read;
    sc_signal< sc_lv<8> > add_with_color_U0_img_out_data_stream_0_V_din;
    sc_signal< sc_logic > add_with_color_U0_img_out_data_stream_0_V_write;
    sc_signal< sc_lv<8> > add_with_color_U0_img_out_data_stream_1_V_din;
    sc_signal< sc_logic > add_with_color_U0_img_out_data_stream_1_V_write;
    sc_signal< sc_lv<8> > add_with_color_U0_img_out_data_stream_2_V_din;
    sc_signal< sc_logic > add_with_color_U0_img_out_data_stream_2_V_write;
    sc_signal< sc_logic > add_with_color_U0_start_out;
    sc_signal< sc_logic > add_with_color_U0_start_write;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_start;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_done;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_continue;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_idle;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_ready;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_0_V_read;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_1_V_read;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_2_V_read;
    sc_signal< sc_lv<32> > Mat2AXIvideo_U0_OUTPUT_STREAM_TDATA;
    sc_signal< sc_logic > Mat2AXIvideo_U0_OUTPUT_STREAM_TVALID;
    sc_signal< sc_lv<4> > Mat2AXIvideo_U0_OUTPUT_STREAM_TKEEP;
    sc_signal< sc_lv<4> > Mat2AXIvideo_U0_OUTPUT_STREAM_TSTRB;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_OUTPUT_STREAM_TUSER;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_OUTPUT_STREAM_TLAST;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_OUTPUT_STREAM_TID;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_OUTPUT_STREAM_TDEST;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > img_0_data_stream_0_full_n;
    sc_signal< sc_lv<8> > img_0_data_stream_0_dout;
    sc_signal< sc_logic > img_0_data_stream_0_empty_n;
    sc_signal< sc_logic > img_0_data_stream_1_full_n;
    sc_signal< sc_lv<8> > img_0_data_stream_1_dout;
    sc_signal< sc_logic > img_0_data_stream_1_empty_n;
    sc_signal< sc_logic > img_0_data_stream_2_full_n;
    sc_signal< sc_lv<8> > img_0_data_stream_2_dout;
    sc_signal< sc_logic > img_0_data_stream_2_empty_n;
    sc_signal< sc_logic > img_1a_data_stream_0_full_n;
    sc_signal< sc_lv<8> > img_1a_data_stream_0_dout;
    sc_signal< sc_logic > img_1a_data_stream_0_empty_n;
    sc_signal< sc_logic > img_1a_data_stream_1_full_n;
    sc_signal< sc_lv<8> > img_1a_data_stream_1_dout;
    sc_signal< sc_logic > img_1a_data_stream_1_empty_n;
    sc_signal< sc_logic > img_1a_data_stream_2_full_n;
    sc_signal< sc_lv<8> > img_1a_data_stream_2_dout;
    sc_signal< sc_logic > img_1a_data_stream_2_empty_n;
    sc_signal< sc_logic > img_1b_data_stream_0_full_n;
    sc_signal< sc_lv<8> > img_1b_data_stream_0_dout;
    sc_signal< sc_logic > img_1b_data_stream_0_empty_n;
    sc_signal< sc_logic > img_1b_data_stream_1_full_n;
    sc_signal< sc_lv<8> > img_1b_data_stream_1_dout;
    sc_signal< sc_logic > img_1b_data_stream_1_empty_n;
    sc_signal< sc_logic > img_1b_data_stream_2_full_n;
    sc_signal< sc_lv<8> > img_1b_data_stream_2_dout;
    sc_signal< sc_logic > img_1b_data_stream_2_empty_n;
    sc_signal< sc_logic > img_2a_data_stream_0_full_n;
    sc_signal< sc_lv<8> > img_2a_data_stream_0_dout;
    sc_signal< sc_logic > img_2a_data_stream_0_empty_n;
    sc_signal< sc_logic > img_2a_data_stream_1_full_n;
    sc_signal< sc_lv<8> > img_2a_data_stream_1_dout;
    sc_signal< sc_logic > img_2a_data_stream_1_empty_n;
    sc_signal< sc_logic > img_2a_data_stream_2_full_n;
    sc_signal< sc_lv<8> > img_2a_data_stream_2_dout;
    sc_signal< sc_logic > img_2a_data_stream_2_empty_n;
    sc_signal< sc_logic > img_2b_data_stream_0_full_n;
    sc_signal< sc_lv<8> > img_2b_data_stream_0_dout;
    sc_signal< sc_logic > img_2b_data_stream_0_empty_n;
    sc_signal< sc_logic > img_2b_data_stream_1_full_n;
    sc_signal< sc_lv<8> > img_2b_data_stream_1_dout;
    sc_signal< sc_logic > img_2b_data_stream_1_empty_n;
    sc_signal< sc_logic > img_2b_data_stream_2_full_n;
    sc_signal< sc_lv<8> > img_2b_data_stream_2_dout;
    sc_signal< sc_logic > img_2b_data_stream_2_empty_n;
    sc_signal< sc_logic > img_3_data_stream_0_full_n;
    sc_signal< sc_lv<8> > img_3_data_stream_0_dout;
    sc_signal< sc_logic > img_3_data_stream_0_empty_n;
    sc_signal< sc_logic > img_3_data_stream_1_full_n;
    sc_signal< sc_lv<8> > img_3_data_stream_1_dout;
    sc_signal< sc_logic > img_3_data_stream_1_empty_n;
    sc_signal< sc_logic > img_3_data_stream_2_full_n;
    sc_signal< sc_lv<8> > img_3_data_stream_2_dout;
    sc_signal< sc_logic > img_3_data_stream_2_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_lv<1> > start_for_replicate_by2_U0_din;
    sc_signal< sc_logic > start_for_replicate_by2_U0_full_n;
    sc_signal< sc_lv<1> > start_for_replicate_by2_U0_dout;
    sc_signal< sc_logic > start_for_replicate_by2_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_grad_vertical_Mat_U0_din;
    sc_signal< sc_logic > start_for_grad_vertical_Mat_U0_full_n;
    sc_signal< sc_lv<1> > start_for_grad_vertical_Mat_U0_dout;
    sc_signal< sc_logic > start_for_grad_vertical_Mat_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_grad_horizontal_U0_din;
    sc_signal< sc_logic > start_for_grad_horizontal_U0_full_n;
    sc_signal< sc_lv<1> > start_for_grad_horizontal_U0_dout;
    sc_signal< sc_logic > start_for_grad_horizontal_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_add_with_color_U0_din;
    sc_signal< sc_logic > start_for_add_with_color_U0_full_n;
    sc_signal< sc_lv<1> > start_for_add_with_color_U0_dout;
    sc_signal< sc_logic > start_for_add_with_color_U0_empty_n;
    sc_signal< sc_logic > grad_horizontal_U0_start_full_n;
    sc_signal< sc_logic > grad_horizontal_U0_start_write;
    sc_signal< sc_lv<1> > start_for_Mat2AXIvideo_U0_din;
    sc_signal< sc_logic > start_for_Mat2AXIvideo_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Mat2AXIvideo_U0_dout;
    sc_signal< sc_logic > start_for_Mat2AXIvideo_U0_empty_n;
    sc_signal< sc_logic > Mat2AXIvideo_U0_start_full_n;
    sc_signal< sc_logic > Mat2AXIvideo_U0_start_write;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_AXIvideo2Mat_U0_ap_continue();
    void thread_AXIvideo2Mat_U0_ap_start();
    void thread_INPUT_STREAM_TREADY();
    void thread_Mat2AXIvideo_U0_ap_continue();
    void thread_Mat2AXIvideo_U0_ap_start();
    void thread_Mat2AXIvideo_U0_start_full_n();
    void thread_Mat2AXIvideo_U0_start_write();
    void thread_OUTPUT_STREAM_TDATA();
    void thread_OUTPUT_STREAM_TDEST();
    void thread_OUTPUT_STREAM_TID();
    void thread_OUTPUT_STREAM_TKEEP();
    void thread_OUTPUT_STREAM_TLAST();
    void thread_OUTPUT_STREAM_TSTRB();
    void thread_OUTPUT_STREAM_TUSER();
    void thread_OUTPUT_STREAM_TVALID();
    void thread_add_with_color_U0_ap_continue();
    void thread_add_with_color_U0_ap_start();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_grad_horizontal_U0_ap_continue();
    void thread_grad_horizontal_U0_ap_start();
    void thread_grad_horizontal_U0_start_full_n();
    void thread_grad_horizontal_U0_start_write();
    void thread_grad_vertical_Mat_U0_ap_continue();
    void thread_grad_vertical_Mat_U0_ap_start();
    void thread_replicate_by2_U0_ap_continue();
    void thread_replicate_by2_U0_ap_start();
    void thread_replicate_by2_U0_start_full_n();
    void thread_start_for_Mat2AXIvideo_U0_din();
    void thread_start_for_add_with_color_U0_din();
    void thread_start_for_grad_horizontal_U0_din();
    void thread_start_for_grad_vertical_Mat_U0_din();
    void thread_start_for_replicate_by2_U0_din();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
