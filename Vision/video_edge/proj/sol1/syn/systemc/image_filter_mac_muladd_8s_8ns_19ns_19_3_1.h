// ==============================================================
// File generated on Mon Jan 21 18:53:41 HKT 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __image_filter_mac_muladd_8s_8ns_19ns_19_3_1__HH__
#define __image_filter_mac_muladd_8s_8ns_19ns_19_3_1__HH__
#include "simcore_mac_12.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(image_filter_mac_muladd_8s_8ns_19ns_19_3_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    simcore_mac_12<ID, 3, din0_WIDTH, din1_WIDTH, din2_WIDTH, dout_WIDTH> simcore_mac_12_U;

    SC_CTOR(image_filter_mac_muladd_8s_8ns_19ns_19_3_1):  simcore_mac_12_U ("simcore_mac_12_U") {
        simcore_mac_12_U.clk(clk);
        simcore_mac_12_U.reset(reset);
        simcore_mac_12_U.ce(ce);
        simcore_mac_12_U.din0(din0);
        simcore_mac_12_U.din1(din1);
        simcore_mac_12_U.din2(din2);
        simcore_mac_12_U.dout(dout);

    }

};

#endif //
