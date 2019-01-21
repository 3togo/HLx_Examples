// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _grad_horizontal_HH_
#define _grad_horizontal_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Filter2D.h"

namespace ap_rtl {

struct grad_horizontal : public sc_module {
    // Port declarations 25
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > img_in_data_stream_0_V_dout;
    sc_in< sc_logic > img_in_data_stream_0_V_empty_n;
    sc_out< sc_logic > img_in_data_stream_0_V_read;
    sc_in< sc_lv<8> > img_in_data_stream_1_V_dout;
    sc_in< sc_logic > img_in_data_stream_1_V_empty_n;
    sc_out< sc_logic > img_in_data_stream_1_V_read;
    sc_in< sc_lv<8> > img_in_data_stream_2_V_dout;
    sc_in< sc_logic > img_in_data_stream_2_V_empty_n;
    sc_out< sc_logic > img_in_data_stream_2_V_read;
    sc_out< sc_lv<8> > img_out_data_stream_0_V_din;
    sc_in< sc_logic > img_out_data_stream_0_V_full_n;
    sc_out< sc_logic > img_out_data_stream_0_V_write;
    sc_out< sc_lv<8> > img_out_data_stream_1_V_din;
    sc_in< sc_logic > img_out_data_stream_1_V_full_n;
    sc_out< sc_logic > img_out_data_stream_1_V_write;
    sc_out< sc_lv<8> > img_out_data_stream_2_V_din;
    sc_in< sc_logic > img_out_data_stream_2_V_full_n;
    sc_out< sc_logic > img_out_data_stream_2_V_write;
    sc_signal< sc_lv<6> > ap_var_for_const0;
    sc_signal< sc_lv<7> > ap_var_for_const1;
    sc_signal< sc_lv<8> > ap_var_for_const2;
    sc_signal< sc_lv<8> > ap_var_for_const3;
    sc_signal< sc_lv<8> > ap_var_for_const4;
    sc_signal< sc_lv<7> > ap_var_for_const5;
    sc_signal< sc_lv<8> > ap_var_for_const6;
    sc_signal< sc_lv<8> > ap_var_for_const7;
    sc_signal< sc_lv<7> > ap_var_for_const8;
    sc_signal< sc_lv<8> > ap_var_for_const9;
    sc_signal< sc_lv<6> > ap_var_for_const10;


    // Module declarations
    grad_horizontal(sc_module_name name);
    SC_HAS_PROCESS(grad_horizontal);

    ~grad_horizontal();

    sc_trace_file* mVcdFile;

    Filter2D* grp_Filter2D_fu_118;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > grp_Filter2D_fu_118_ap_start;
    sc_signal< sc_logic > grp_Filter2D_fu_118_ap_done;
    sc_signal< sc_logic > grp_Filter2D_fu_118_ap_idle;
    sc_signal< sc_logic > grp_Filter2D_fu_118_ap_ready;
    sc_signal< sc_logic > grp_Filter2D_fu_118_p_src_data_stream_0_V_read;
    sc_signal< sc_logic > grp_Filter2D_fu_118_p_src_data_stream_1_V_read;
    sc_signal< sc_logic > grp_Filter2D_fu_118_p_src_data_stream_2_V_read;
    sc_signal< sc_lv<8> > grp_Filter2D_fu_118_p_dst_data_stream_0_V_din;
    sc_signal< sc_logic > grp_Filter2D_fu_118_p_dst_data_stream_0_V_write;
    sc_signal< sc_lv<8> > grp_Filter2D_fu_118_p_dst_data_stream_1_V_din;
    sc_signal< sc_logic > grp_Filter2D_fu_118_p_dst_data_stream_1_V_write;
    sc_signal< sc_lv<8> > grp_Filter2D_fu_118_p_dst_data_stream_2_V_din;
    sc_signal< sc_logic > grp_Filter2D_fu_118_p_dst_data_stream_2_V_write;
    sc_signal< sc_logic > grp_Filter2D_fu_118_ap_start_reg;
    sc_signal< bool > ap_block_state1_ignore_call6;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    sc_signal< bool > ap_block_state1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<6> ap_const_lv6_30;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<8> ap_const_lv8_A0;
    static const sc_lv<8> ap_const_lv8_E0;
    static const sc_lv<8> ap_const_lv8_40;
    static const sc_lv<7> ap_const_lv7_60;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<8> ap_const_lv8_20;
    static const sc_lv<7> ap_const_lv7_20;
    static const sc_lv<8> ap_const_lv8_60;
    static const sc_lv<6> ap_const_lv6_10;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_var_for_const5();
    void thread_ap_var_for_const6();
    void thread_ap_var_for_const7();
    void thread_ap_var_for_const8();
    void thread_ap_var_for_const9();
    void thread_ap_var_for_const10();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_block_state1();
    void thread_ap_block_state1_ignore_call6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_Filter2D_fu_118_ap_start();
    void thread_img_in_data_stream_0_V_read();
    void thread_img_in_data_stream_1_V_read();
    void thread_img_in_data_stream_2_V_read();
    void thread_img_out_data_stream_0_V_din();
    void thread_img_out_data_stream_0_V_write();
    void thread_img_out_data_stream_1_V_din();
    void thread_img_out_data_stream_1_V_write();
    void thread_img_out_data_stream_2_V_din();
    void thread_img_out_data_stream_2_V_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
