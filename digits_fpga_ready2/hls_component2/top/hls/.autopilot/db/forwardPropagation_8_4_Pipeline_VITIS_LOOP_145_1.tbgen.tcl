set moduleName forwardPropagation_8_4_Pipeline_VITIS_LOOP_145_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {forwardPropagation<8, 4>_Pipeline_VITIS_LOOP_145_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ C_load_reload int 25 regular  }
	{ C_12_load_reload int 25 regular  }
	{ C_14_load_reload int 25 regular  }
	{ C_16_load_reload int 25 regular  }
	{ p_read4 int 25 regular  }
	{ p_read11 int 25 regular  }
	{ p_read12 int 25 regular  }
	{ p_read13 int 25 regular  }
	{ net_load_out int 25 regular {pointer 1}  }
	{ net_1_load_out int 25 regular {pointer 1}  }
	{ net_2_load_out int 25 regular {pointer 1}  }
	{ net_3_load_out int 25 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "C_load_reload", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "C_12_load_reload", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "C_14_load_reload", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "C_16_load_reload", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "net_load_out", "interface" : "wire", "bitwidth" : 25, "direction" : "WRITEONLY"} , 
 	{ "Name" : "net_1_load_out", "interface" : "wire", "bitwidth" : 25, "direction" : "WRITEONLY"} , 
 	{ "Name" : "net_2_load_out", "interface" : "wire", "bitwidth" : 25, "direction" : "WRITEONLY"} , 
 	{ "Name" : "net_3_load_out", "interface" : "wire", "bitwidth" : 25, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ C_load_reload sc_in sc_lv 25 signal 0 } 
	{ C_12_load_reload sc_in sc_lv 25 signal 1 } 
	{ C_14_load_reload sc_in sc_lv 25 signal 2 } 
	{ C_16_load_reload sc_in sc_lv 25 signal 3 } 
	{ p_read4 sc_in sc_lv 25 signal 4 } 
	{ p_read11 sc_in sc_lv 25 signal 5 } 
	{ p_read12 sc_in sc_lv 25 signal 6 } 
	{ p_read13 sc_in sc_lv 25 signal 7 } 
	{ net_load_out sc_out sc_lv 25 signal 8 } 
	{ net_load_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ net_1_load_out sc_out sc_lv 25 signal 9 } 
	{ net_1_load_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ net_2_load_out sc_out sc_lv 25 signal 10 } 
	{ net_2_load_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ net_3_load_out sc_out sc_lv 25 signal 11 } 
	{ net_3_load_out_ap_vld sc_out sc_logic 1 outvld 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "C_load_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "C_load_reload", "role": "default" }} , 
 	{ "name": "C_12_load_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "C_12_load_reload", "role": "default" }} , 
 	{ "name": "C_14_load_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "C_14_load_reload", "role": "default" }} , 
 	{ "name": "C_16_load_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "C_16_load_reload", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "net_load_out", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "net_load_out", "role": "default" }} , 
 	{ "name": "net_load_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "net_load_out", "role": "ap_vld" }} , 
 	{ "name": "net_1_load_out", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "net_1_load_out", "role": "default" }} , 
 	{ "name": "net_1_load_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "net_1_load_out", "role": "ap_vld" }} , 
 	{ "name": "net_2_load_out", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "net_2_load_out", "role": "default" }} , 
 	{ "name": "net_2_load_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "net_2_load_out", "role": "ap_vld" }} , 
 	{ "name": "net_3_load_out", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "net_3_load_out", "role": "default" }} , 
 	{ "name": "net_3_load_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "net_3_load_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "forwardPropagation_8_4_Pipeline_VITIS_LOOP_145_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C_load_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_12_load_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_14_load_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_16_load_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "net_load_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "net_1_load_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "net_2_load_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "net_3_load_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_145_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_25_1_1_U358", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_25_1_1_U359", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	forwardPropagation_8_4_Pipeline_VITIS_LOOP_145_1 {
		C_load_reload {Type I LastRead 0 FirstWrite -1}
		C_12_load_reload {Type I LastRead 0 FirstWrite -1}
		C_14_load_reload {Type I LastRead 0 FirstWrite -1}
		C_16_load_reload {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		net_load_out {Type O LastRead -1 FirstWrite 0}
		net_1_load_out {Type O LastRead -1 FirstWrite 0}
		net_2_load_out {Type O LastRead -1 FirstWrite 0}
		net_3_load_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	C_load_reload { ap_none {  { C_load_reload in_data 0 25 } } }
	C_12_load_reload { ap_none {  { C_12_load_reload in_data 0 25 } } }
	C_14_load_reload { ap_none {  { C_14_load_reload in_data 0 25 } } }
	C_16_load_reload { ap_none {  { C_16_load_reload in_data 0 25 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 25 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 25 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 25 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 25 } } }
	net_load_out { ap_vld {  { net_load_out out_data 1 25 }  { net_load_out_ap_vld out_vld 1 1 } } }
	net_1_load_out { ap_vld {  { net_1_load_out out_data 1 25 }  { net_1_load_out_ap_vld out_vld 1 1 } } }
	net_2_load_out { ap_vld {  { net_2_load_out out_data 1 25 }  { net_2_load_out_ap_vld out_vld 1 1 } } }
	net_3_load_out { ap_vld {  { net_3_load_out out_data 1 25 }  { net_3_load_out_ap_vld out_vld 1 1 } } }
}
