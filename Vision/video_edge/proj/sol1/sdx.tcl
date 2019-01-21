# ==============================================================
# File generated on Mon Jan 21 18:53:42 HKT 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../checkerboard.bmp -cflags { -Wno-unknown-pragmas}
add_files -tb ../../image_filter_test.cpp -cflags { -Wno-unknown-pragmas}
add_files image_filter.cpp
set_part xc7z020clg484-1
create_clock -name default -period 6
