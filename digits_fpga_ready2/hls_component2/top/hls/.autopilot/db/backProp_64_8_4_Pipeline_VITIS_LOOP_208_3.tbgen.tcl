set moduleName backProp_64_8_4_Pipeline_VITIS_LOOP_208_3
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
set C_modelName {backProp<64, 8, 4>_Pipeline_VITIS_LOOP_208_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict d_activation_0 { MEM_WIDTH 18 MEM_SIZE 24 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict agg_result_0 { MEM_WIDTH 25 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ d_activation_0 int 18 regular {array 8 { 1 3 } 1 1 }  }
	{ agg_result_0 int 25 regular {array 8 { 0 1 } 1 1 }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "d_activation_0", "interface" : "memory", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "agg_result_0", "interface" : "memory", "bitwidth" : 25, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ d_activation_0_address0 sc_out sc_lv 3 signal 0 } 
	{ d_activation_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ d_activation_0_q0 sc_in sc_lv 18 signal 0 } 
	{ agg_result_0_address0 sc_out sc_lv 3 signal 1 } 
	{ agg_result_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ agg_result_0_we0 sc_out sc_logic 1 signal 1 } 
	{ agg_result_0_d0 sc_out sc_lv 25 signal 1 } 
	{ agg_result_0_address1 sc_out sc_lv 3 signal 1 } 
	{ agg_result_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ agg_result_0_q1 sc_in sc_lv 25 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "d_activation_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "d_activation_0", "role": "address0" }} , 
 	{ "name": "d_activation_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_activation_0", "role": "ce0" }} , 
 	{ "name": "d_activation_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "d_activation_0", "role": "q0" }} , 
 	{ "name": "agg_result_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "agg_result_0", "role": "address0" }} , 
 	{ "name": "agg_result_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_0", "role": "ce0" }} , 
 	{ "name": "agg_result_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_0", "role": "we0" }} , 
 	{ "name": "agg_result_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "agg_result_0", "role": "d0" }} , 
 	{ "name": "agg_result_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "agg_result_0", "role": "address1" }} , 
 	{ "name": "agg_result_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_0", "role": "ce1" }} , 
 	{ "name": "agg_result_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "agg_result_0", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "backProp_64_8_4_Pipeline_VITIS_LOOP_208_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_activation_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "agg_result_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_208_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_18ns_25s_42_1_1_U640", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	backProp_64_8_4_Pipeline_VITIS_LOOP_208_3 {
		d_activation_0 {Type I LastRead 0 FirstWrite -1}
		agg_result_0 {Type IO LastRead 0 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	d_activation_0 { ap_memory {  { d_activation_0_address0 mem_address 1 3 }  { d_activation_0_ce0 mem_ce 1 1 }  { d_activation_0_q0 mem_dout 0 18 } } }
	agg_result_0 { ap_memory {  { agg_result_0_address0 mem_address 1 3 }  { agg_result_0_ce0 mem_ce 1 1 }  { agg_result_0_we0 mem_we 1 1 }  { agg_result_0_d0 mem_din 1 25 }  { agg_result_0_address1 MemPortADDR2 1 3 }  { agg_result_0_ce1 MemPortCE2 1 1 }  { agg_result_0_q1 MemPortDOUT2 0 25 } } }
}
