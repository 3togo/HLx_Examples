set moduleName Filter2D
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
set C_modelName {Filter2D}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ p_src_data_stream_1_V int 8 regular {fifo 0 volatile }  }
	{ p_src_data_stream_2_V int 8 regular {fifo 0 volatile }  }
	{ p_dst_data_stream_0_V int 8 regular {fifo 1 volatile }  }
	{ p_dst_data_stream_1_V int 8 regular {fifo 1 volatile }  }
	{ p_dst_data_stream_2_V int 8 regular {fifo 1 volatile }  }
	{ p_kernel_val_0_V_0_read int 6 regular  }
	{ p_kernel_val_0_V_1_read int 7 regular  }
	{ p_kernel_val_0_V_2_read int 8 regular  }
	{ p_kernel_val_0_V_3_read int 7 regular  }
	{ p_kernel_val_1_V_0_read int 8 regular  }
	{ p_kernel_val_1_V_2_read int 8 regular  }
	{ p_kernel_val_1_V_4_read int 7 regular  }
	{ p_kernel_val_2_V_0_read int 8 regular  }
	{ p_kernel_val_2_V_1_read int 8 regular  }
	{ p_kernel_val_2_V_3_read int 8 regular  }
	{ p_kernel_val_2_V_4_read int 8 regular  }
	{ p_kernel_val_3_V_0_read int 8 regular  }
	{ p_kernel_val_3_V_2_read int 7 regular  }
	{ p_kernel_val_3_V_4_read int 7 regular  }
	{ p_kernel_val_4_V_1_read int 8 regular  }
	{ p_kernel_val_4_V_2_read int 8 regular  }
	{ p_kernel_val_4_V_3_read int 8 regular  }
	{ p_kernel_val_4_V_4_read int 6 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_src_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_dst_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_dst_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_kernel_val_0_V_0_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_0_V_1_read", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_0_V_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_0_V_3_read", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_1_V_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_1_V_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_1_V_4_read", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_2_V_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_2_V_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_2_V_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_2_V_4_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_3_V_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_3_V_2_read", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_3_V_4_read", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_4_V_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_4_V_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_4_V_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_val_4_V_4_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_src_data_stream_0_V_dout sc_in sc_lv 8 signal 0 } 
	{ p_src_data_stream_0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_data_stream_0_V_read sc_out sc_logic 1 signal 0 } 
	{ p_src_data_stream_1_V_dout sc_in sc_lv 8 signal 1 } 
	{ p_src_data_stream_1_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_src_data_stream_1_V_read sc_out sc_logic 1 signal 1 } 
	{ p_src_data_stream_2_V_dout sc_in sc_lv 8 signal 2 } 
	{ p_src_data_stream_2_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_data_stream_2_V_read sc_out sc_logic 1 signal 2 } 
	{ p_dst_data_stream_0_V_din sc_out sc_lv 8 signal 3 } 
	{ p_dst_data_stream_0_V_full_n sc_in sc_logic 1 signal 3 } 
	{ p_dst_data_stream_0_V_write sc_out sc_logic 1 signal 3 } 
	{ p_dst_data_stream_1_V_din sc_out sc_lv 8 signal 4 } 
	{ p_dst_data_stream_1_V_full_n sc_in sc_logic 1 signal 4 } 
	{ p_dst_data_stream_1_V_write sc_out sc_logic 1 signal 4 } 
	{ p_dst_data_stream_2_V_din sc_out sc_lv 8 signal 5 } 
	{ p_dst_data_stream_2_V_full_n sc_in sc_logic 1 signal 5 } 
	{ p_dst_data_stream_2_V_write sc_out sc_logic 1 signal 5 } 
	{ p_kernel_val_0_V_0_read sc_in sc_lv 6 signal 6 } 
	{ p_kernel_val_0_V_1_read sc_in sc_lv 7 signal 7 } 
	{ p_kernel_val_0_V_2_read sc_in sc_lv 8 signal 8 } 
	{ p_kernel_val_0_V_3_read sc_in sc_lv 7 signal 9 } 
	{ p_kernel_val_1_V_0_read sc_in sc_lv 8 signal 10 } 
	{ p_kernel_val_1_V_2_read sc_in sc_lv 8 signal 11 } 
	{ p_kernel_val_1_V_4_read sc_in sc_lv 7 signal 12 } 
	{ p_kernel_val_2_V_0_read sc_in sc_lv 8 signal 13 } 
	{ p_kernel_val_2_V_1_read sc_in sc_lv 8 signal 14 } 
	{ p_kernel_val_2_V_3_read sc_in sc_lv 8 signal 15 } 
	{ p_kernel_val_2_V_4_read sc_in sc_lv 8 signal 16 } 
	{ p_kernel_val_3_V_0_read sc_in sc_lv 8 signal 17 } 
	{ p_kernel_val_3_V_2_read sc_in sc_lv 7 signal 18 } 
	{ p_kernel_val_3_V_4_read sc_in sc_lv 7 signal 19 } 
	{ p_kernel_val_4_V_1_read sc_in sc_lv 8 signal 20 } 
	{ p_kernel_val_4_V_2_read sc_in sc_lv 8 signal 21 } 
	{ p_kernel_val_4_V_3_read sc_in sc_lv 8 signal 22 } 
	{ p_kernel_val_4_V_4_read sc_in sc_lv 6 signal 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_src_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "p_src_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "p_src_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_0_V", "role": "read" }} , 
 	{ "name": "p_src_data_stream_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_data_stream_1_V", "role": "dout" }} , 
 	{ "name": "p_src_data_stream_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_1_V", "role": "empty_n" }} , 
 	{ "name": "p_src_data_stream_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_1_V", "role": "read" }} , 
 	{ "name": "p_src_data_stream_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_src_data_stream_2_V", "role": "dout" }} , 
 	{ "name": "p_src_data_stream_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_2_V", "role": "empty_n" }} , 
 	{ "name": "p_src_data_stream_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_data_stream_2_V", "role": "read" }} , 
 	{ "name": "p_dst_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_data_stream_0_V", "role": "din" }} , 
 	{ "name": "p_dst_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "p_dst_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_stream_0_V", "role": "write" }} , 
 	{ "name": "p_dst_data_stream_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_data_stream_1_V", "role": "din" }} , 
 	{ "name": "p_dst_data_stream_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_stream_1_V", "role": "full_n" }} , 
 	{ "name": "p_dst_data_stream_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_stream_1_V", "role": "write" }} , 
 	{ "name": "p_dst_data_stream_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_dst_data_stream_2_V", "role": "din" }} , 
 	{ "name": "p_dst_data_stream_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_stream_2_V", "role": "full_n" }} , 
 	{ "name": "p_dst_data_stream_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_dst_data_stream_2_V", "role": "write" }} , 
 	{ "name": "p_kernel_val_0_V_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_kernel_val_0_V_0_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_0_V_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_kernel_val_0_V_1_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_0_V_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_val_0_V_2_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_0_V_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_kernel_val_0_V_3_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_1_V_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_val_1_V_0_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_1_V_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_val_1_V_2_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_1_V_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_kernel_val_1_V_4_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_2_V_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_val_2_V_0_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_2_V_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_val_2_V_1_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_2_V_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_val_2_V_3_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_2_V_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_val_2_V_4_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_3_V_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_val_3_V_0_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_3_V_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_kernel_val_3_V_2_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_3_V_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "p_kernel_val_3_V_4_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_4_V_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_val_4_V_1_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_4_V_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_val_4_V_2_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_4_V_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_val_4_V_3_read", "role": "default" }} , 
 	{ "name": "p_kernel_val_4_V_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p_kernel_val_4_V_4_read", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_0_val_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_0_val_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_0_val_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_0_val_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_1_val_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_1_val_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_1_val_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_1_val_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_2_val_0_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_2_val_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_2_val_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_2_val_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_6s_8ns_15s_16_3_1_U20", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_6s_8ns_15s_16_3_1_U21", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_6s_8ns_15s_16_3_1_U22", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8s_8ns_16s_17_3_1_U23", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_7s_8ns_13s_16_3_1_U24", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8ns_8ns_15ns_15_3_1_U25", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8s_8ns_16s_17_3_1_U26", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8ns_8ns_15ns_15_3_1_U27", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8s_8ns_16s_17_3_1_U28", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8s_8ns_17s_17_3_1_U29", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8ns_8ns_15ns_16_3_1_U30", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_7s_8ns_13s_16_3_1_U31", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8s_8ns_17s_17_3_1_U32", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8ns_8ns_15ns_16_3_1_U33", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8s_8ns_17s_17_3_1_U34", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8ns_8ns_15ns_15_3_1_U35", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_7s_8ns_16ns_16_3_1_U36", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8s_8ns_17s_18_3_1_U37", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_7s_8ns_12ns_15_3_1_U38", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_6s_8ns_16ns_16_3_1_U39", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_7s_8ns_13s_16_3_1_U40", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8ns_8ns_15ns_16_3_1_U41", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8ns_8ns_16s_17_3_1_U42", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_7s_8ns_15s_16_3_1_U43", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_7s_8ns_16ns_16_3_1_U44", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8s_8ns_17s_18_3_1_U45", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_7s_8ns_12ns_15_3_1_U46", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_6s_8ns_16ns_16_3_1_U47", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8ns_8ns_16s_17_3_1_U48", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_7s_8ns_15s_16_3_1_U49", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_7s_8ns_16ns_16_3_1_U50", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8s_8ns_17s_18_3_1_U51", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_7s_8ns_12ns_15_3_1_U52", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_6s_8ns_16ns_16_3_1_U53", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8s_8ns_19ns_19_3_1_U54", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8ns_8ns_16s_17_3_1_U55", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_7s_8ns_15s_16_3_1_U56", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8s_8ns_19ns_19_3_1_U57", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8s_8ns_19ns_19_3_1_U58", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8ns_8ns_20ns_20_3_1_U59", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8ns_8ns_20ns_20_3_1_U60", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_mac_muladd_8ns_8ns_20ns_20_3_1_U61", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "151186", "Max" : "151186"}
	, {"Name" : "Interval", "Min" : "151186", "Max" : "151186"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_src_data_stream_0_V { ap_fifo {  { p_src_data_stream_0_V_dout fifo_data 0 8 }  { p_src_data_stream_0_V_empty_n fifo_status 0 1 }  { p_src_data_stream_0_V_read fifo_update 1 1 } } }
	p_src_data_stream_1_V { ap_fifo {  { p_src_data_stream_1_V_dout fifo_data 0 8 }  { p_src_data_stream_1_V_empty_n fifo_status 0 1 }  { p_src_data_stream_1_V_read fifo_update 1 1 } } }
	p_src_data_stream_2_V { ap_fifo {  { p_src_data_stream_2_V_dout fifo_data 0 8 }  { p_src_data_stream_2_V_empty_n fifo_status 0 1 }  { p_src_data_stream_2_V_read fifo_update 1 1 } } }
	p_dst_data_stream_0_V { ap_fifo {  { p_dst_data_stream_0_V_din fifo_data 1 8 }  { p_dst_data_stream_0_V_full_n fifo_status 0 1 }  { p_dst_data_stream_0_V_write fifo_update 1 1 } } }
	p_dst_data_stream_1_V { ap_fifo {  { p_dst_data_stream_1_V_din fifo_data 1 8 }  { p_dst_data_stream_1_V_full_n fifo_status 0 1 }  { p_dst_data_stream_1_V_write fifo_update 1 1 } } }
	p_dst_data_stream_2_V { ap_fifo {  { p_dst_data_stream_2_V_din fifo_data 1 8 }  { p_dst_data_stream_2_V_full_n fifo_status 0 1 }  { p_dst_data_stream_2_V_write fifo_update 1 1 } } }
	p_kernel_val_0_V_0_read { ap_none {  { p_kernel_val_0_V_0_read in_data 0 6 } } }
	p_kernel_val_0_V_1_read { ap_none {  { p_kernel_val_0_V_1_read in_data 0 7 } } }
	p_kernel_val_0_V_2_read { ap_none {  { p_kernel_val_0_V_2_read in_data 0 8 } } }
	p_kernel_val_0_V_3_read { ap_none {  { p_kernel_val_0_V_3_read in_data 0 7 } } }
	p_kernel_val_1_V_0_read { ap_none {  { p_kernel_val_1_V_0_read in_data 0 8 } } }
	p_kernel_val_1_V_2_read { ap_none {  { p_kernel_val_1_V_2_read in_data 0 8 } } }
	p_kernel_val_1_V_4_read { ap_none {  { p_kernel_val_1_V_4_read in_data 0 7 } } }
	p_kernel_val_2_V_0_read { ap_none {  { p_kernel_val_2_V_0_read in_data 0 8 } } }
	p_kernel_val_2_V_1_read { ap_none {  { p_kernel_val_2_V_1_read in_data 0 8 } } }
	p_kernel_val_2_V_3_read { ap_none {  { p_kernel_val_2_V_3_read in_data 0 8 } } }
	p_kernel_val_2_V_4_read { ap_none {  { p_kernel_val_2_V_4_read in_data 0 8 } } }
	p_kernel_val_3_V_0_read { ap_none {  { p_kernel_val_3_V_0_read in_data 0 8 } } }
	p_kernel_val_3_V_2_read { ap_none {  { p_kernel_val_3_V_2_read in_data 0 7 } } }
	p_kernel_val_3_V_4_read { ap_none {  { p_kernel_val_3_V_4_read in_data 0 7 } } }
	p_kernel_val_4_V_1_read { ap_none {  { p_kernel_val_4_V_1_read in_data 0 8 } } }
	p_kernel_val_4_V_2_read { ap_none {  { p_kernel_val_4_V_2_read in_data 0 8 } } }
	p_kernel_val_4_V_3_read { ap_none {  { p_kernel_val_4_V_3_read in_data 0 8 } } }
	p_kernel_val_4_V_4_read { ap_none {  { p_kernel_val_4_V_4_read in_data 0 6 } } }
}
