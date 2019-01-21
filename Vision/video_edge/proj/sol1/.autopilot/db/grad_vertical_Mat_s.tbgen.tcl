set moduleName grad_vertical_Mat_s
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {grad_vertical<Mat >}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_in_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ img_in_data_stream_1_V int 8 regular {fifo 0 volatile }  }
	{ img_in_data_stream_2_V int 8 regular {fifo 0 volatile }  }
	{ img_out_data_stream_0_V int 8 regular {fifo 1 volatile }  }
	{ img_out_data_stream_1_V int 8 regular {fifo 1 volatile }  }
	{ img_out_data_stream_2_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_in_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "img_in_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "img_in_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "img_out_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_out_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_out_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ img_in_data_stream_0_V_dout sc_in sc_lv 8 signal 0 } 
	{ img_in_data_stream_0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ img_in_data_stream_0_V_read sc_out sc_logic 1 signal 0 } 
	{ img_in_data_stream_1_V_dout sc_in sc_lv 8 signal 1 } 
	{ img_in_data_stream_1_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ img_in_data_stream_1_V_read sc_out sc_logic 1 signal 1 } 
	{ img_in_data_stream_2_V_dout sc_in sc_lv 8 signal 2 } 
	{ img_in_data_stream_2_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ img_in_data_stream_2_V_read sc_out sc_logic 1 signal 2 } 
	{ img_out_data_stream_0_V_din sc_out sc_lv 8 signal 3 } 
	{ img_out_data_stream_0_V_full_n sc_in sc_logic 1 signal 3 } 
	{ img_out_data_stream_0_V_write sc_out sc_logic 1 signal 3 } 
	{ img_out_data_stream_1_V_din sc_out sc_lv 8 signal 4 } 
	{ img_out_data_stream_1_V_full_n sc_in sc_logic 1 signal 4 } 
	{ img_out_data_stream_1_V_write sc_out sc_logic 1 signal 4 } 
	{ img_out_data_stream_2_V_din sc_out sc_lv 8 signal 5 } 
	{ img_out_data_stream_2_V_full_n sc_in sc_logic 1 signal 5 } 
	{ img_out_data_stream_2_V_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "img_in_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_in_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "img_in_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "img_in_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_stream_0_V", "role": "read" }} , 
 	{ "name": "img_in_data_stream_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_in_data_stream_1_V", "role": "dout" }} , 
 	{ "name": "img_in_data_stream_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_stream_1_V", "role": "empty_n" }} , 
 	{ "name": "img_in_data_stream_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_stream_1_V", "role": "read" }} , 
 	{ "name": "img_in_data_stream_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_in_data_stream_2_V", "role": "dout" }} , 
 	{ "name": "img_in_data_stream_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_stream_2_V", "role": "empty_n" }} , 
 	{ "name": "img_in_data_stream_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data_stream_2_V", "role": "read" }} , 
 	{ "name": "img_out_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_out_data_stream_0_V", "role": "din" }} , 
 	{ "name": "img_out_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "img_out_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_stream_0_V", "role": "write" }} , 
 	{ "name": "img_out_data_stream_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_out_data_stream_1_V", "role": "din" }} , 
 	{ "name": "img_out_data_stream_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_stream_1_V", "role": "full_n" }} , 
 	{ "name": "img_out_data_stream_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_stream_1_V", "role": "write" }} , 
 	{ "name": "img_out_data_stream_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "img_out_data_stream_2_V", "role": "din" }} , 
 	{ "name": "img_out_data_stream_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_stream_2_V", "role": "full_n" }} , 
 	{ "name": "img_out_data_stream_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_out_data_stream_2_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "grad_vertical_Mat_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "151187", "EstimateLatencyMax" : "151187",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Filter2D_fu_122"}],
		"Port" : [
			{"Name" : "img_in_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Filter2D_fu_122", "Port" : "p_src_data_stream_0_V"}]},
			{"Name" : "img_in_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Filter2D_fu_122", "Port" : "p_src_data_stream_1_V"}]},
			{"Name" : "img_in_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Filter2D_fu_122", "Port" : "p_src_data_stream_2_V"}]},
			{"Name" : "img_out_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Filter2D_fu_122", "Port" : "p_dst_data_stream_0_V"}]},
			{"Name" : "img_out_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Filter2D_fu_122", "Port" : "p_dst_data_stream_1_V"}]},
			{"Name" : "img_out_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_Filter2D_fu_122", "Port" : "p_dst_data_stream_2_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "Filter2D",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "151186", "EstimateLatencyMax" : "151186",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_kernel_val_0_V_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_0_V_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_0_V_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_0_V_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_1_V_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_1_V_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_1_V_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_2_V_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_2_V_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_2_V_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_2_V_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_3_V_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_3_V_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_3_V_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_4_V_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_4_V_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_4_V_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_val_4_V_4_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.k_buf_0_val_0_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.k_buf_0_val_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.k_buf_0_val_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.k_buf_0_val_3_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.k_buf_1_val_0_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.k_buf_1_val_1_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.k_buf_1_val_2_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.k_buf_1_val_3_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.k_buf_2_val_0_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.k_buf_2_val_1_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.k_buf_2_val_2_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.k_buf_2_val_3_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_6s_8ns_15s_16_3_1_U20", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_6s_8ns_15s_16_3_1_U21", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_6s_8ns_15s_16_3_1_U22", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_16s_17_3_1_U23", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_13s_16_3_1_U24", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_15ns_15_3_1_U25", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_16s_17_3_1_U26", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_15ns_15_3_1_U27", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_16s_17_3_1_U28", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_17s_17_3_1_U29", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_15ns_16_3_1_U30", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_13s_16_3_1_U31", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_17s_17_3_1_U32", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_15ns_16_3_1_U33", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_17s_17_3_1_U34", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_15ns_15_3_1_U35", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_16ns_16_3_1_U36", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_17s_18_3_1_U37", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_12ns_15_3_1_U38", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_6s_8ns_16ns_16_3_1_U39", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_13s_16_3_1_U40", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_15ns_16_3_1_U41", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_16s_17_3_1_U42", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_15s_16_3_1_U43", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_16ns_16_3_1_U44", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_17s_18_3_1_U45", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_12ns_15_3_1_U46", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_6s_8ns_16ns_16_3_1_U47", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_16s_17_3_1_U48", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_15s_16_3_1_U49", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_16ns_16_3_1_U50", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_17s_18_3_1_U51", "Parent" : "1"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_12ns_15_3_1_U52", "Parent" : "1"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_6s_8ns_16ns_16_3_1_U53", "Parent" : "1"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_19ns_19_3_1_U54", "Parent" : "1"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_16s_17_3_1_U55", "Parent" : "1"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_15s_16_3_1_U56", "Parent" : "1"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_19ns_19_3_1_U57", "Parent" : "1"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_19ns_19_3_1_U58", "Parent" : "1"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_20ns_20_3_1_U59", "Parent" : "1"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_20ns_20_3_1_U60", "Parent" : "1"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_20ns_20_3_1_U61", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	grad_vertical_Mat_s {
		img_in_data_stream_0_V {Type I LastRead 4 FirstWrite -1}
		img_in_data_stream_1_V {Type I LastRead 5 FirstWrite -1}
		img_in_data_stream_2_V {Type I LastRead 6 FirstWrite -1}
		img_out_data_stream_0_V {Type O LastRead -1 FirstWrite 17}
		img_out_data_stream_1_V {Type O LastRead -1 FirstWrite 17}
		img_out_data_stream_2_V {Type O LastRead -1 FirstWrite 18}}
	Filter2D {
		p_src_data_stream_0_V {Type I LastRead 4 FirstWrite -1}
		p_src_data_stream_1_V {Type I LastRead 5 FirstWrite -1}
		p_src_data_stream_2_V {Type I LastRead 6 FirstWrite -1}
		p_dst_data_stream_0_V {Type O LastRead -1 FirstWrite 17}
		p_dst_data_stream_1_V {Type O LastRead -1 FirstWrite 17}
		p_dst_data_stream_2_V {Type O LastRead -1 FirstWrite 18}
		p_kernel_val_0_V_0_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_0_V_1_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_0_V_2_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_0_V_3_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_1_V_0_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_1_V_2_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_1_V_4_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_2_V_0_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_2_V_1_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_2_V_3_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_2_V_4_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_3_V_0_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_3_V_2_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_3_V_4_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_4_V_1_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_4_V_2_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_4_V_3_read {Type I LastRead 0 FirstWrite -1}
		p_kernel_val_4_V_4_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "151187", "Max" : "151187"}
	, {"Name" : "Interval", "Min" : "151187", "Max" : "151187"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_in_data_stream_0_V { ap_fifo {  { img_in_data_stream_0_V_dout fifo_data 0 8 }  { img_in_data_stream_0_V_empty_n fifo_status 0 1 }  { img_in_data_stream_0_V_read fifo_update 1 1 } } }
	img_in_data_stream_1_V { ap_fifo {  { img_in_data_stream_1_V_dout fifo_data 0 8 }  { img_in_data_stream_1_V_empty_n fifo_status 0 1 }  { img_in_data_stream_1_V_read fifo_update 1 1 } } }
	img_in_data_stream_2_V { ap_fifo {  { img_in_data_stream_2_V_dout fifo_data 0 8 }  { img_in_data_stream_2_V_empty_n fifo_status 0 1 }  { img_in_data_stream_2_V_read fifo_update 1 1 } } }
	img_out_data_stream_0_V { ap_fifo {  { img_out_data_stream_0_V_din fifo_data 1 8 }  { img_out_data_stream_0_V_full_n fifo_status 0 1 }  { img_out_data_stream_0_V_write fifo_update 1 1 } } }
	img_out_data_stream_1_V { ap_fifo {  { img_out_data_stream_1_V_din fifo_data 1 8 }  { img_out_data_stream_1_V_full_n fifo_status 0 1 }  { img_out_data_stream_1_V_write fifo_update 1 1 } } }
	img_out_data_stream_2_V { ap_fifo {  { img_out_data_stream_2_V_din fifo_data 1 8 }  { img_out_data_stream_2_V_full_n fifo_status 0 1 }  { img_out_data_stream_2_V_write fifo_update 1 1 } } }
}
