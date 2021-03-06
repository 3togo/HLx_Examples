// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _add_with_color_HH_
#define _add_with_color_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct add_with_color : public sc_module {
    // Port declarations 37
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > img_in0_data_stream_0_V_dout;
    sc_in< sc_logic > img_in0_data_stream_0_V_empty_n;
    sc_out< sc_logic > img_in0_data_stream_0_V_read;
    sc_in< sc_lv<8> > img_in0_data_stream_1_V_dout;
    sc_in< sc_logic > img_in0_data_stream_1_V_empty_n;
    sc_out< sc_logic > img_in0_data_stream_1_V_read;
    sc_in< sc_lv<8> > img_in0_data_stream_2_V_dout;
    sc_in< sc_logic > img_in0_data_stream_2_V_empty_n;
    sc_out< sc_logic > img_in0_data_stream_2_V_read;
    sc_in< sc_lv<8> > img_in1_data_stream_0_V_dout;
    sc_in< sc_logic > img_in1_data_stream_0_V_empty_n;
    sc_out< sc_logic > img_in1_data_stream_0_V_read;
    sc_in< sc_lv<8> > img_in1_data_stream_1_V_dout;
    sc_in< sc_logic > img_in1_data_stream_1_V_empty_n;
    sc_out< sc_logic > img_in1_data_stream_1_V_read;
    sc_in< sc_lv<8> > img_in1_data_stream_2_V_dout;
    sc_in< sc_logic > img_in1_data_stream_2_V_empty_n;
    sc_out< sc_logic > img_in1_data_stream_2_V_read;
    sc_out< sc_lv<8> > img_out_data_stream_0_V_din;
    sc_in< sc_logic > img_out_data_stream_0_V_full_n;
    sc_out< sc_logic > img_out_data_stream_0_V_write;
    sc_out< sc_lv<8> > img_out_data_stream_1_V_din;
    sc_in< sc_logic > img_out_data_stream_1_V_full_n;
    sc_out< sc_logic > img_out_data_stream_1_V_write;
    sc_out< sc_lv<8> > img_out_data_stream_2_V_din;
    sc_in< sc_logic > img_out_data_stream_2_V_full_n;
    sc_out< sc_logic > img_out_data_stream_2_V_write;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;


    // Module declarations
    add_with_color(sc_module_name name);
    SC_HAS_PROCESS(add_with_color);

    ~add_with_color();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_300_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_logic > img_in0_data_stream_0_V_blk_n;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > img_in0_data_stream_1_V_blk_n;
    sc_signal< sc_logic > img_in0_data_stream_2_V_blk_n;
    sc_signal< sc_logic > img_in1_data_stream_0_V_blk_n;
    sc_signal< sc_logic > img_in1_data_stream_1_V_blk_n;
    sc_signal< sc_logic > img_in1_data_stream_2_V_blk_n;
    sc_signal< sc_logic > img_out_data_stream_0_V_blk_n;
    sc_signal< sc_logic > img_out_data_stream_1_V_blk_n;
    sc_signal< sc_logic > img_out_data_stream_2_V_blk_n;
    sc_signal< sc_lv<16> > indvar_flatten2_reg_244;
    sc_signal< sc_lv<1> > tmp_s_fu_258_p2;
    sc_signal< sc_lv<1> > tmp_s_reg_381;
    sc_signal< sc_lv<1> > tmp_4_fu_264_p2;
    sc_signal< sc_lv<1> > tmp_4_reg_386;
    sc_signal< sc_lv<1> > tmp_5_fu_270_p2;
    sc_signal< sc_lv<1> > tmp_5_reg_391;
    sc_signal< sc_lv<1> > tmp_9_fu_276_p2;
    sc_signal< sc_lv<1> > tmp_9_reg_396;
    sc_signal< sc_lv<1> > tmp_10_fu_282_p2;
    sc_signal< sc_lv<1> > tmp_10_reg_401;
    sc_signal< sc_lv<1> > tmp_11_fu_288_p2;
    sc_signal< sc_lv<1> > tmp_11_reg_406;
    sc_signal< sc_lv<16> > indvar_flatten_next_fu_294_p2;
    sc_signal< sc_lv<16> > indvar_flatten_next_reg_411;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_416;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_416_pp0_iter1_reg;
    sc_signal< sc_lv<1> > tmp_8_fu_323_p2;
    sc_signal< sc_lv<1> > tmp_8_reg_420;
    sc_signal< sc_lv<1> > not_tmp_s_fu_346_p2;
    sc_signal< sc_lv<1> > not_tmp_s_reg_426;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_lv<16> > ap_phi_mux_indvar_flatten2_phi_fu_248_p6;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<1> > tmp1_fu_306_p2;
    sc_signal< sc_lv<1> > tmp_6_fu_310_p2;
    sc_signal< sc_lv<32> > tmp_7_fu_315_p3;
    sc_signal< sc_lv<1> > tmp2_fu_329_p2;
    sc_signal< sc_lv<1> > tmp_12_fu_333_p2;
    sc_signal< sc_lv<32> > tmp_13_fu_338_p3;
    sc_signal< sc_lv<1> > tmp_14_fu_352_p2;
    sc_signal< sc_lv<1> > tmp_15_fu_357_p2;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0_0to1;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_172;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_pp0_stage0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<8> ap_const_lv8_64;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<16> ap_const_lv16_BD0F;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<8> ap_const_lv8_FF;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_condition_172();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp0_0to1();
    void thread_ap_phi_mux_indvar_flatten2_phi_fu_248_p6();
    void thread_ap_ready();
    void thread_ap_reset_idle_pp0();
    void thread_exitcond_flatten_fu_300_p2();
    void thread_img_in0_data_stream_0_V_blk_n();
    void thread_img_in0_data_stream_0_V_read();
    void thread_img_in0_data_stream_1_V_blk_n();
    void thread_img_in0_data_stream_1_V_read();
    void thread_img_in0_data_stream_2_V_blk_n();
    void thread_img_in0_data_stream_2_V_read();
    void thread_img_in1_data_stream_0_V_blk_n();
    void thread_img_in1_data_stream_0_V_read();
    void thread_img_in1_data_stream_1_V_blk_n();
    void thread_img_in1_data_stream_1_V_read();
    void thread_img_in1_data_stream_2_V_blk_n();
    void thread_img_in1_data_stream_2_V_read();
    void thread_img_out_data_stream_0_V_blk_n();
    void thread_img_out_data_stream_0_V_din();
    void thread_img_out_data_stream_0_V_write();
    void thread_img_out_data_stream_1_V_blk_n();
    void thread_img_out_data_stream_1_V_din();
    void thread_img_out_data_stream_1_V_write();
    void thread_img_out_data_stream_2_V_blk_n();
    void thread_img_out_data_stream_2_V_din();
    void thread_img_out_data_stream_2_V_write();
    void thread_indvar_flatten_next_fu_294_p2();
    void thread_internal_ap_ready();
    void thread_not_tmp_s_fu_346_p2();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp1_fu_306_p2();
    void thread_tmp2_fu_329_p2();
    void thread_tmp_10_fu_282_p2();
    void thread_tmp_11_fu_288_p2();
    void thread_tmp_12_fu_333_p2();
    void thread_tmp_13_fu_338_p3();
    void thread_tmp_14_fu_352_p2();
    void thread_tmp_15_fu_357_p2();
    void thread_tmp_4_fu_264_p2();
    void thread_tmp_5_fu_270_p2();
    void thread_tmp_6_fu_310_p2();
    void thread_tmp_7_fu_315_p3();
    void thread_tmp_8_fu_323_p2();
    void thread_tmp_9_fu_276_p2();
    void thread_tmp_s_fu_258_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
