set moduleName image_filter
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {image_filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ VIDEO_IN_V_data_V int 32 regular {axi_s 0 volatile  { INPUT_STREAM Data } }  }
	{ VIDEO_IN_V_keep_V int 4 regular {axi_s 0 volatile  { INPUT_STREAM Keep } }  }
	{ VIDEO_IN_V_strb_V int 4 regular {axi_s 0 volatile  { INPUT_STREAM Strb } }  }
	{ VIDEO_IN_V_user_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM User } }  }
	{ VIDEO_IN_V_last_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM Last } }  }
	{ VIDEO_IN_V_id_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM ID } }  }
	{ VIDEO_IN_V_dest_V int 1 regular {axi_s 0 volatile  { INPUT_STREAM Dest } }  }
	{ VIDEO_OUT_V_data_V int 32 regular {axi_s 1 volatile  { OUTPUT_STREAM Data } }  }
	{ VIDEO_OUT_V_keep_V int 4 regular {axi_s 1 volatile  { OUTPUT_STREAM Keep } }  }
	{ VIDEO_OUT_V_strb_V int 4 regular {axi_s 1 volatile  { OUTPUT_STREAM Strb } }  }
	{ VIDEO_OUT_V_user_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM User } }  }
	{ VIDEO_OUT_V_last_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Last } }  }
	{ VIDEO_OUT_V_id_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM ID } }  }
	{ VIDEO_OUT_V_dest_V int 1 regular {axi_s 1 volatile  { OUTPUT_STREAM Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "VIDEO_IN_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "INPUT_STREAM.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_IN_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "INPUT_STREAM.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_IN_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "INPUT_STREAM.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_IN_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_IN_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_IN_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_IN_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "INPUT_STREAM.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "OUTPUT_STREAM.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "OUTPUT_STREAM.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "OUTPUT_STREAM.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "VIDEO_OUT_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "OUTPUT_STREAM.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ INPUT_STREAM_TDATA sc_in sc_lv 32 signal 0 } 
	{ INPUT_STREAM_TKEEP sc_in sc_lv 4 signal 1 } 
	{ INPUT_STREAM_TSTRB sc_in sc_lv 4 signal 2 } 
	{ INPUT_STREAM_TUSER sc_in sc_lv 1 signal 3 } 
	{ INPUT_STREAM_TLAST sc_in sc_lv 1 signal 4 } 
	{ INPUT_STREAM_TID sc_in sc_lv 1 signal 5 } 
	{ INPUT_STREAM_TDEST sc_in sc_lv 1 signal 6 } 
	{ OUTPUT_STREAM_TDATA sc_out sc_lv 32 signal 7 } 
	{ OUTPUT_STREAM_TKEEP sc_out sc_lv 4 signal 8 } 
	{ OUTPUT_STREAM_TSTRB sc_out sc_lv 4 signal 9 } 
	{ OUTPUT_STREAM_TUSER sc_out sc_lv 1 signal 10 } 
	{ OUTPUT_STREAM_TLAST sc_out sc_lv 1 signal 11 } 
	{ OUTPUT_STREAM_TID sc_out sc_lv 1 signal 12 } 
	{ OUTPUT_STREAM_TDEST sc_out sc_lv 1 signal 13 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ INPUT_STREAM_TVALID sc_in sc_logic 1 invld 6 } 
	{ INPUT_STREAM_TREADY sc_out sc_logic 1 inacc 6 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ OUTPUT_STREAM_TVALID sc_out sc_logic 1 outvld 13 } 
	{ OUTPUT_STREAM_TREADY sc_in sc_logic 1 outacc 13 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "INPUT_STREAM_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "VIDEO_IN_V_data_V", "role": "" }} , 
 	{ "name": "INPUT_STREAM_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "VIDEO_IN_V_keep_V", "role": "" }} , 
 	{ "name": "INPUT_STREAM_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "VIDEO_IN_V_strb_V", "role": "" }} , 
 	{ "name": "INPUT_STREAM_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_IN_V_user_V", "role": "" }} , 
 	{ "name": "INPUT_STREAM_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_IN_V_last_V", "role": "" }} , 
 	{ "name": "INPUT_STREAM_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_IN_V_id_V", "role": "" }} , 
 	{ "name": "INPUT_STREAM_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_IN_V_dest_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_data_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_keep_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_strb_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_user_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_last_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_id_V", "role": "" }} , 
 	{ "name": "OUTPUT_STREAM_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "VIDEO_OUT_V_dest_V", "role": "" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "INPUT_STREAM_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "VIDEO_IN_V_dest_V", "role": "D" }} , 
 	{ "name": "INPUT_STREAM_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "VIDEO_IN_V_dest_V", "role": "Y" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "OUTPUT_STREAM_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "VIDEO_OUT_V_dest_V", "role": "D" }} , 
 	{ "name": "OUTPUT_STREAM_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "VIDEO_OUT_V_dest_V", "role": "Y" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "59", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139"],
		"CDFG" : "image_filter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "151190", "EstimateLatencyMax" : "151190",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "AXIvideo2Mat_U0"}],
		"OutputProcess" : [
			{"ID" : "116", "Name" : "Mat2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "VIDEO_IN_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "VIDEO_IN_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "VIDEO_IN_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "VIDEO_IN_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "VIDEO_IN_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "VIDEO_IN_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "VIDEO_IN_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "VIDEO_OUT_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "VIDEO_OUT_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "VIDEO_OUT_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "VIDEO_OUT_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "VIDEO_OUT_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "VIDEO_OUT_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "VIDEO_OUT_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0", "Parent" : "0",
		"CDFG" : "AXIvideo2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49503", "EstimateLatencyMax" : "49503",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "INPUT_STREAM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.replicate_by2_U0", "Parent" : "0",
		"CDFG" : "replicate_by2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "48399", "EstimateLatencyMax" : "48400",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_replicate_by2_U0_U",
		"Port" : [
			{"Name" : "img_in_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "img_in_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "img_in_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "img_in_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out0_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "120",
				"BlockSignal" : [
					{"Name" : "img_out0_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out0_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "121",
				"BlockSignal" : [
					{"Name" : "img_out0_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out0_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "122",
				"BlockSignal" : [
					{"Name" : "img_out0_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out1_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "123",
				"BlockSignal" : [
					{"Name" : "img_out1_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out1_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "124",
				"BlockSignal" : [
					{"Name" : "img_out1_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out1_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "125",
				"BlockSignal" : [
					{"Name" : "img_out1_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0", "Parent" : "0", "Child" : ["4"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_grad_vertical_Mat_U0_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Filter2D_fu_122"}],
		"Port" : [
			{"Name" : "img_in_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "120",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Filter2D_fu_122", "Port" : "p_src_data_stream_0_V"}]},
			{"Name" : "img_in_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "121",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Filter2D_fu_122", "Port" : "p_src_data_stream_1_V"}]},
			{"Name" : "img_in_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "122",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Filter2D_fu_122", "Port" : "p_src_data_stream_2_V"}]},
			{"Name" : "img_out_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "126",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Filter2D_fu_122", "Port" : "p_dst_data_stream_0_V"}]},
			{"Name" : "img_out_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "127",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Filter2D_fu_122", "Port" : "p_dst_data_stream_1_V"}]},
			{"Name" : "img_out_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "128",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Filter2D_fu_122", "Port" : "p_dst_data_stream_2_V"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122", "Parent" : "3", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.k_buf_0_val_0_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.k_buf_0_val_1_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.k_buf_0_val_2_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.k_buf_0_val_3_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.k_buf_1_val_0_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.k_buf_1_val_1_U", "Parent" : "4"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.k_buf_1_val_2_U", "Parent" : "4"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.k_buf_1_val_3_U", "Parent" : "4"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.k_buf_2_val_0_U", "Parent" : "4"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.k_buf_2_val_1_U", "Parent" : "4"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.k_buf_2_val_2_U", "Parent" : "4"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.k_buf_2_val_3_U", "Parent" : "4"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_6s_8ns_15s_16_3_1_U20", "Parent" : "4"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_6s_8ns_15s_16_3_1_U21", "Parent" : "4"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_6s_8ns_15s_16_3_1_U22", "Parent" : "4"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_16s_17_3_1_U23", "Parent" : "4"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_13s_16_3_1_U24", "Parent" : "4"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_15ns_15_3_1_U25", "Parent" : "4"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_16s_17_3_1_U26", "Parent" : "4"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_15ns_15_3_1_U27", "Parent" : "4"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_16s_17_3_1_U28", "Parent" : "4"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_17s_17_3_1_U29", "Parent" : "4"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_15ns_16_3_1_U30", "Parent" : "4"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_13s_16_3_1_U31", "Parent" : "4"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_17s_17_3_1_U32", "Parent" : "4"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_15ns_16_3_1_U33", "Parent" : "4"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_17s_17_3_1_U34", "Parent" : "4"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_15ns_15_3_1_U35", "Parent" : "4"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_16ns_16_3_1_U36", "Parent" : "4"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_17s_18_3_1_U37", "Parent" : "4"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_12ns_15_3_1_U38", "Parent" : "4"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_6s_8ns_16ns_16_3_1_U39", "Parent" : "4"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_13s_16_3_1_U40", "Parent" : "4"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_15ns_16_3_1_U41", "Parent" : "4"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_16s_17_3_1_U42", "Parent" : "4"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_15s_16_3_1_U43", "Parent" : "4"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_16ns_16_3_1_U44", "Parent" : "4"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_17s_18_3_1_U45", "Parent" : "4"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_12ns_15_3_1_U46", "Parent" : "4"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_6s_8ns_16ns_16_3_1_U47", "Parent" : "4"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_16s_17_3_1_U48", "Parent" : "4"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_15s_16_3_1_U49", "Parent" : "4"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_16ns_16_3_1_U50", "Parent" : "4"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_17s_18_3_1_U51", "Parent" : "4"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_12ns_15_3_1_U52", "Parent" : "4"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_6s_8ns_16ns_16_3_1_U53", "Parent" : "4"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_19ns_19_3_1_U54", "Parent" : "4"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_16s_17_3_1_U55", "Parent" : "4"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_7s_8ns_15s_16_3_1_U56", "Parent" : "4"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_19ns_19_3_1_U57", "Parent" : "4"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8s_8ns_19ns_19_3_1_U58", "Parent" : "4"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_20ns_20_3_1_U59", "Parent" : "4"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_20ns_20_3_1_U60", "Parent" : "4"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_vertical_Mat_U0.grp_Filter2D_fu_122.image_filter_mac_muladd_8ns_8ns_20ns_20_3_1_U61", "Parent" : "4"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0", "Parent" : "0", "Child" : ["60"],
		"CDFG" : "grad_horizontal",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_grad_horizontal_U0_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Filter2D_fu_118"}],
		"Port" : [
			{"Name" : "img_in_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "123",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_Filter2D_fu_118", "Port" : "p_src_data_stream_0_V"}]},
			{"Name" : "img_in_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "124",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_Filter2D_fu_118", "Port" : "p_src_data_stream_1_V"}]},
			{"Name" : "img_in_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "125",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_Filter2D_fu_118", "Port" : "p_src_data_stream_2_V"}]},
			{"Name" : "img_out_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "129",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_Filter2D_fu_118", "Port" : "p_dst_data_stream_0_V"}]},
			{"Name" : "img_out_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "130",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_Filter2D_fu_118", "Port" : "p_dst_data_stream_1_V"}]},
			{"Name" : "img_out_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "115", "DependentChan" : "131",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "grp_Filter2D_fu_118", "Port" : "p_dst_data_stream_2_V"}]}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118", "Parent" : "59", "Child" : ["61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114"],
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
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.k_buf_0_val_0_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.k_buf_0_val_1_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.k_buf_0_val_2_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.k_buf_0_val_3_U", "Parent" : "60"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.k_buf_1_val_0_U", "Parent" : "60"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.k_buf_1_val_1_U", "Parent" : "60"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.k_buf_1_val_2_U", "Parent" : "60"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.k_buf_1_val_3_U", "Parent" : "60"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.k_buf_2_val_0_U", "Parent" : "60"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.k_buf_2_val_1_U", "Parent" : "60"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.k_buf_2_val_2_U", "Parent" : "60"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.k_buf_2_val_3_U", "Parent" : "60"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_6s_8ns_15s_16_3_1_U20", "Parent" : "60"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_6s_8ns_15s_16_3_1_U21", "Parent" : "60"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_6s_8ns_15s_16_3_1_U22", "Parent" : "60"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8s_8ns_16s_17_3_1_U23", "Parent" : "60"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_7s_8ns_13s_16_3_1_U24", "Parent" : "60"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8ns_8ns_15ns_15_3_1_U25", "Parent" : "60"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8s_8ns_16s_17_3_1_U26", "Parent" : "60"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8ns_8ns_15ns_15_3_1_U27", "Parent" : "60"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8s_8ns_16s_17_3_1_U28", "Parent" : "60"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8s_8ns_17s_17_3_1_U29", "Parent" : "60"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8ns_8ns_15ns_16_3_1_U30", "Parent" : "60"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_7s_8ns_13s_16_3_1_U31", "Parent" : "60"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8s_8ns_17s_17_3_1_U32", "Parent" : "60"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8ns_8ns_15ns_16_3_1_U33", "Parent" : "60"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8s_8ns_17s_17_3_1_U34", "Parent" : "60"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8ns_8ns_15ns_15_3_1_U35", "Parent" : "60"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_7s_8ns_16ns_16_3_1_U36", "Parent" : "60"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8s_8ns_17s_18_3_1_U37", "Parent" : "60"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_7s_8ns_12ns_15_3_1_U38", "Parent" : "60"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_6s_8ns_16ns_16_3_1_U39", "Parent" : "60"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_7s_8ns_13s_16_3_1_U40", "Parent" : "60"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8ns_8ns_15ns_16_3_1_U41", "Parent" : "60"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8ns_8ns_16s_17_3_1_U42", "Parent" : "60"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_7s_8ns_15s_16_3_1_U43", "Parent" : "60"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_7s_8ns_16ns_16_3_1_U44", "Parent" : "60"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8s_8ns_17s_18_3_1_U45", "Parent" : "60"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_7s_8ns_12ns_15_3_1_U46", "Parent" : "60"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_6s_8ns_16ns_16_3_1_U47", "Parent" : "60"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8ns_8ns_16s_17_3_1_U48", "Parent" : "60"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_7s_8ns_15s_16_3_1_U49", "Parent" : "60"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_7s_8ns_16ns_16_3_1_U50", "Parent" : "60"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8s_8ns_17s_18_3_1_U51", "Parent" : "60"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_7s_8ns_12ns_15_3_1_U52", "Parent" : "60"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_6s_8ns_16ns_16_3_1_U53", "Parent" : "60"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8s_8ns_19ns_19_3_1_U54", "Parent" : "60"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8ns_8ns_16s_17_3_1_U55", "Parent" : "60"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_7s_8ns_15s_16_3_1_U56", "Parent" : "60"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8s_8ns_19ns_19_3_1_U57", "Parent" : "60"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8s_8ns_19ns_19_3_1_U58", "Parent" : "60"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8ns_8ns_20ns_20_3_1_U59", "Parent" : "60"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8ns_8ns_20ns_20_3_1_U60", "Parent" : "60"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grad_horizontal_U0.grp_Filter2D_fu_118.image_filter_mac_muladd_8ns_8ns_20ns_20_3_1_U61", "Parent" : "60"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_with_color_U0", "Parent" : "0",
		"CDFG" : "add_with_color",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "48401", "EstimateLatencyMax" : "48402",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_add_with_color_U0_U",
		"Port" : [
			{"Name" : "img_in0_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "126",
				"BlockSignal" : [
					{"Name" : "img_in0_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in0_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "127",
				"BlockSignal" : [
					{"Name" : "img_in0_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in0_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "128",
				"BlockSignal" : [
					{"Name" : "img_in0_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in1_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "129",
				"BlockSignal" : [
					{"Name" : "img_in1_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in1_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "130",
				"BlockSignal" : [
					{"Name" : "img_in1_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in1_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "131",
				"BlockSignal" : [
					{"Name" : "img_in1_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "132",
				"BlockSignal" : [
					{"Name" : "img_out_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "133",
				"BlockSignal" : [
					{"Name" : "img_out_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_out_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "116", "DependentChan" : "134",
				"BlockSignal" : [
					{"Name" : "img_out_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0", "Parent" : "0",
		"CDFG" : "Mat2AXIvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49281", "EstimateLatencyMax" : "49281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "115",
		"StartFifo" : "start_for_Mat2AXIvideo_U0_U",
		"Port" : [
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "132",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "133",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "115", "DependentChan" : "134",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "OUTPUT_STREAM_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_data_stream_0_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_data_stream_1_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_data_stream_2_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_1a_data_stream_0_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_1a_data_stream_1_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_1a_data_stream_2_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_1b_data_stream_0_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_1b_data_stream_1_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_1b_data_stream_2_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_2a_data_stream_0_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_2a_data_stream_1_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_2a_data_stream_2_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_2b_data_stream_0_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_2b_data_stream_1_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_2b_data_stream_2_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_3_data_stream_0_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_3_data_stream_1_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_3_data_stream_2_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_replicate_by2_U0_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_grad_vertical_Mat_U0_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_grad_horizontal_U0_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_add_with_color_U0_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Mat2AXIvideo_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	image_filter {
		VIDEO_IN_V_data_V {Type I LastRead 6 FirstWrite -1}
		VIDEO_IN_V_keep_V {Type I LastRead 6 FirstWrite -1}
		VIDEO_IN_V_strb_V {Type I LastRead 6 FirstWrite -1}
		VIDEO_IN_V_user_V {Type I LastRead 6 FirstWrite -1}
		VIDEO_IN_V_last_V {Type I LastRead 6 FirstWrite -1}
		VIDEO_IN_V_id_V {Type I LastRead 6 FirstWrite -1}
		VIDEO_IN_V_dest_V {Type I LastRead 6 FirstWrite -1}
		VIDEO_OUT_V_data_V {Type O LastRead -1 FirstWrite 3}
		VIDEO_OUT_V_keep_V {Type O LastRead -1 FirstWrite 3}
		VIDEO_OUT_V_strb_V {Type O LastRead -1 FirstWrite 3}
		VIDEO_OUT_V_user_V {Type O LastRead -1 FirstWrite 3}
		VIDEO_OUT_V_last_V {Type O LastRead -1 FirstWrite 3}
		VIDEO_OUT_V_id_V {Type O LastRead -1 FirstWrite 3}
		VIDEO_OUT_V_dest_V {Type O LastRead -1 FirstWrite 3}}
	AXIvideo2Mat {
		AXI_video_strm_V_data_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_keep_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_strb_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_user_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_last_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_id_V {Type I LastRead 6 FirstWrite -1}
		AXI_video_strm_V_dest_V {Type I LastRead 6 FirstWrite -1}
		img_data_stream_0_V {Type O LastRead -1 FirstWrite 5}
		img_data_stream_1_V {Type O LastRead -1 FirstWrite 5}
		img_data_stream_2_V {Type O LastRead -1 FirstWrite 5}}
	replicate_by2 {
		img_in_data_stream_0_V {Type I LastRead 1 FirstWrite -1}
		img_in_data_stream_1_V {Type I LastRead 1 FirstWrite -1}
		img_in_data_stream_2_V {Type I LastRead 1 FirstWrite -1}
		img_out0_data_stream_0_V {Type O LastRead -1 FirstWrite 1}
		img_out0_data_stream_1_V {Type O LastRead -1 FirstWrite 1}
		img_out0_data_stream_2_V {Type O LastRead -1 FirstWrite 1}
		img_out1_data_stream_0_V {Type O LastRead -1 FirstWrite 1}
		img_out1_data_stream_1_V {Type O LastRead -1 FirstWrite 1}
		img_out1_data_stream_2_V {Type O LastRead -1 FirstWrite 1}}
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
		p_kernel_val_4_V_4_read {Type I LastRead 0 FirstWrite -1}}
	grad_horizontal {
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
		p_kernel_val_4_V_4_read {Type I LastRead 0 FirstWrite -1}}
	add_with_color {
		img_in0_data_stream_0_V {Type I LastRead 1 FirstWrite -1}
		img_in0_data_stream_1_V {Type I LastRead 1 FirstWrite -1}
		img_in0_data_stream_2_V {Type I LastRead 1 FirstWrite -1}
		img_in1_data_stream_0_V {Type I LastRead 1 FirstWrite -1}
		img_in1_data_stream_1_V {Type I LastRead 1 FirstWrite -1}
		img_in1_data_stream_2_V {Type I LastRead 1 FirstWrite -1}
		img_out_data_stream_0_V {Type O LastRead -1 FirstWrite 3}
		img_out_data_stream_1_V {Type O LastRead -1 FirstWrite 3}
		img_out_data_stream_2_V {Type O LastRead -1 FirstWrite 3}}
	Mat2AXIvideo {
		img_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_2_V {Type I LastRead 3 FirstWrite -1}
		AXI_video_strm_V_data_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_keep_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_strb_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_user_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_last_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_id_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_dest_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "151190", "Max" : "151190"}
	, {"Name" : "Interval", "Min" : "151188", "Max" : "151188"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	VIDEO_IN_V_data_V { axis {  { INPUT_STREAM_TDATA in_data 0 32 } } }
	VIDEO_IN_V_keep_V { axis {  { INPUT_STREAM_TKEEP in_data 0 4 } } }
	VIDEO_IN_V_strb_V { axis {  { INPUT_STREAM_TSTRB in_data 0 4 } } }
	VIDEO_IN_V_user_V { axis {  { INPUT_STREAM_TUSER in_data 0 1 } } }
	VIDEO_IN_V_last_V { axis {  { INPUT_STREAM_TLAST in_data 0 1 } } }
	VIDEO_IN_V_id_V { axis {  { INPUT_STREAM_TID in_data 0 1 } } }
	VIDEO_IN_V_dest_V { axis {  { INPUT_STREAM_TDEST in_data 0 1 }  { INPUT_STREAM_TVALID in_vld 0 1 }  { INPUT_STREAM_TREADY in_acc 1 1 } } }
	VIDEO_OUT_V_data_V { axis {  { OUTPUT_STREAM_TDATA out_data 1 32 } } }
	VIDEO_OUT_V_keep_V { axis {  { OUTPUT_STREAM_TKEEP out_data 1 4 } } }
	VIDEO_OUT_V_strb_V { axis {  { OUTPUT_STREAM_TSTRB out_data 1 4 } } }
	VIDEO_OUT_V_user_V { axis {  { OUTPUT_STREAM_TUSER out_data 1 1 } } }
	VIDEO_OUT_V_last_V { axis {  { OUTPUT_STREAM_TLAST out_data 1 1 } } }
	VIDEO_OUT_V_id_V { axis {  { OUTPUT_STREAM_TID out_data 1 1 } } }
	VIDEO_OUT_V_dest_V { axis {  { OUTPUT_STREAM_TDEST out_data 1 1 }  { OUTPUT_STREAM_TVALID out_vld 1 1 }  { OUTPUT_STREAM_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
