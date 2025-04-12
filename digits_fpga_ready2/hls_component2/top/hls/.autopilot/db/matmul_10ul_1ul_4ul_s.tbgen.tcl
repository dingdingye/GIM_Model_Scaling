set moduleName matmul_10ul_1ul_4ul_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {matmul<10ul, 1ul, 4ul>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict agg_result_0 { MEM_WIDTH 25 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict agg_result_1 { MEM_WIDTH 25 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict agg_result_2 { MEM_WIDTH 25 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict agg_result_3 { MEM_WIDTH 25 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict A_0 { MEM_WIDTH 25 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ agg_result_0 int 25 regular {array 10 { 0 0 } 0 1 }  }
	{ agg_result_1 int 25 regular {array 10 { 0 0 } 0 1 }  }
	{ agg_result_2 int 25 regular {array 10 { 0 0 } 0 1 }  }
	{ agg_result_3 int 25 regular {array 10 { 0 0 } 0 1 }  }
	{ A_0 int 25 regular {array 10 { 1 3 } 1 1 }  }
	{ p_read int 25 regular  }
	{ p_read1 int 25 regular  }
	{ p_read2 int 25 regular  }
	{ p_read3 int 25 regular  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "agg_result_0", "interface" : "memory", "bitwidth" : 25, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_result_1", "interface" : "memory", "bitwidth" : 25, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_result_2", "interface" : "memory", "bitwidth" : 25, "direction" : "WRITEONLY"} , 
 	{ "Name" : "agg_result_3", "interface" : "memory", "bitwidth" : 25, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_0", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 45
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ agg_result_0_address0 sc_out sc_lv 4 signal 0 } 
	{ agg_result_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ agg_result_0_we0 sc_out sc_logic 1 signal 0 } 
	{ agg_result_0_d0 sc_out sc_lv 25 signal 0 } 
	{ agg_result_0_address1 sc_out sc_lv 4 signal 0 } 
	{ agg_result_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ agg_result_0_we1 sc_out sc_logic 1 signal 0 } 
	{ agg_result_0_d1 sc_out sc_lv 25 signal 0 } 
	{ agg_result_1_address0 sc_out sc_lv 4 signal 1 } 
	{ agg_result_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ agg_result_1_we0 sc_out sc_logic 1 signal 1 } 
	{ agg_result_1_d0 sc_out sc_lv 25 signal 1 } 
	{ agg_result_1_address1 sc_out sc_lv 4 signal 1 } 
	{ agg_result_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ agg_result_1_we1 sc_out sc_logic 1 signal 1 } 
	{ agg_result_1_d1 sc_out sc_lv 25 signal 1 } 
	{ agg_result_2_address0 sc_out sc_lv 4 signal 2 } 
	{ agg_result_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ agg_result_2_we0 sc_out sc_logic 1 signal 2 } 
	{ agg_result_2_d0 sc_out sc_lv 25 signal 2 } 
	{ agg_result_2_address1 sc_out sc_lv 4 signal 2 } 
	{ agg_result_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ agg_result_2_we1 sc_out sc_logic 1 signal 2 } 
	{ agg_result_2_d1 sc_out sc_lv 25 signal 2 } 
	{ agg_result_3_address0 sc_out sc_lv 4 signal 3 } 
	{ agg_result_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ agg_result_3_we0 sc_out sc_logic 1 signal 3 } 
	{ agg_result_3_d0 sc_out sc_lv 25 signal 3 } 
	{ agg_result_3_address1 sc_out sc_lv 4 signal 3 } 
	{ agg_result_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ agg_result_3_we1 sc_out sc_logic 1 signal 3 } 
	{ agg_result_3_d1 sc_out sc_lv 25 signal 3 } 
	{ A_0_address0 sc_out sc_lv 4 signal 4 } 
	{ A_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ A_0_q0 sc_in sc_lv 25 signal 4 } 
	{ p_read sc_in sc_lv 25 signal 5 } 
	{ p_read1 sc_in sc_lv 25 signal 6 } 
	{ p_read2 sc_in sc_lv 25 signal 7 } 
	{ p_read3 sc_in sc_lv 25 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "agg_result_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "agg_result_0", "role": "address0" }} , 
 	{ "name": "agg_result_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_0", "role": "ce0" }} , 
 	{ "name": "agg_result_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_0", "role": "we0" }} , 
 	{ "name": "agg_result_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "agg_result_0", "role": "d0" }} , 
 	{ "name": "agg_result_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "agg_result_0", "role": "address1" }} , 
 	{ "name": "agg_result_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_0", "role": "ce1" }} , 
 	{ "name": "agg_result_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_0", "role": "we1" }} , 
 	{ "name": "agg_result_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "agg_result_0", "role": "d1" }} , 
 	{ "name": "agg_result_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "agg_result_1", "role": "address0" }} , 
 	{ "name": "agg_result_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_1", "role": "ce0" }} , 
 	{ "name": "agg_result_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_1", "role": "we0" }} , 
 	{ "name": "agg_result_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "agg_result_1", "role": "d0" }} , 
 	{ "name": "agg_result_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "agg_result_1", "role": "address1" }} , 
 	{ "name": "agg_result_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_1", "role": "ce1" }} , 
 	{ "name": "agg_result_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_1", "role": "we1" }} , 
 	{ "name": "agg_result_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "agg_result_1", "role": "d1" }} , 
 	{ "name": "agg_result_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "agg_result_2", "role": "address0" }} , 
 	{ "name": "agg_result_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_2", "role": "ce0" }} , 
 	{ "name": "agg_result_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_2", "role": "we0" }} , 
 	{ "name": "agg_result_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "agg_result_2", "role": "d0" }} , 
 	{ "name": "agg_result_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "agg_result_2", "role": "address1" }} , 
 	{ "name": "agg_result_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_2", "role": "ce1" }} , 
 	{ "name": "agg_result_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_2", "role": "we1" }} , 
 	{ "name": "agg_result_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "agg_result_2", "role": "d1" }} , 
 	{ "name": "agg_result_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "agg_result_3", "role": "address0" }} , 
 	{ "name": "agg_result_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_3", "role": "ce0" }} , 
 	{ "name": "agg_result_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_3", "role": "we0" }} , 
 	{ "name": "agg_result_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "agg_result_3", "role": "d0" }} , 
 	{ "name": "agg_result_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "agg_result_3", "role": "address1" }} , 
 	{ "name": "agg_result_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_3", "role": "ce1" }} , 
 	{ "name": "agg_result_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agg_result_3", "role": "we1" }} , 
 	{ "name": "agg_result_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "agg_result_3", "role": "d1" }} , 
 	{ "name": "A_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_0", "role": "address0" }} , 
 	{ "name": "A_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "ce0" }} , 
 	{ "name": "A_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "A_0", "role": "q0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matmul_10ul_1ul_4ul_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "agg_result_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmul_10ul_1ul_4ul_Pipeline_VITIS_LOOP_71_1_fu_472", "Port" : "agg_result_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "agg_result_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmul_10ul_1ul_4ul_Pipeline_VITIS_LOOP_71_1_fu_472", "Port" : "agg_result_1", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "agg_result_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmul_10ul_1ul_4ul_Pipeline_VITIS_LOOP_71_1_fu_472", "Port" : "agg_result_2", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "agg_result_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmul_10ul_1ul_4ul_Pipeline_VITIS_LOOP_71_1_fu_472", "Port" : "agg_result_3", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "A_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_matmul_10ul_1ul_4ul_Pipeline_VITIS_LOOP_71_1_fu_472", "Port" : "A_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_10ul_1ul_4ul_Pipeline_VITIS_LOOP_71_1_fu_472", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6"],
		"CDFG" : "matmul_10ul_1ul_4ul_Pipeline_VITIS_LOOP_71_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "agg_result_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "agg_result_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "agg_result_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "agg_result_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv7_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv7_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv7_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv7_i_3", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_71_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_10ul_1ul_4ul_Pipeline_VITIS_LOOP_71_1_fu_472.mul_25s_25s_50_1_1_U734", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_10ul_1ul_4ul_Pipeline_VITIS_LOOP_71_1_fu_472.mul_25s_25s_50_1_1_U735", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_10ul_1ul_4ul_Pipeline_VITIS_LOOP_71_1_fu_472.mul_25s_25s_50_1_1_U736", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_10ul_1ul_4ul_Pipeline_VITIS_LOOP_71_1_fu_472.mul_25s_25s_50_1_1_U737", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_10ul_1ul_4ul_Pipeline_VITIS_LOOP_71_1_fu_472.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	matmul_10ul_1ul_4ul_s {
		agg_result_0 {Type O LastRead -1 FirstWrite 0}
		agg_result_1 {Type O LastRead -1 FirstWrite 0}
		agg_result_2 {Type O LastRead -1 FirstWrite 0}
		agg_result_3 {Type O LastRead -1 FirstWrite 0}
		A_0 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 5 FirstWrite -1}
		p_read1 {Type I LastRead 5 FirstWrite -1}
		p_read2 {Type I LastRead 5 FirstWrite -1}
		p_read3 {Type I LastRead 5 FirstWrite -1}}
	matmul_10ul_1ul_4ul_Pipeline_VITIS_LOOP_71_1 {
		agg_result_3 {Type O LastRead -1 FirstWrite 1}
		agg_result_2 {Type O LastRead -1 FirstWrite 1}
		agg_result_1 {Type O LastRead -1 FirstWrite 1}
		agg_result_0 {Type O LastRead -1 FirstWrite 1}
		A_0 {Type I LastRead 0 FirstWrite -1}
		conv7_i {Type I LastRead 0 FirstWrite -1}
		conv7_i_1 {Type I LastRead 0 FirstWrite -1}
		conv7_i_2 {Type I LastRead 0 FirstWrite -1}
		conv7_i_3 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	agg_result_0 { ap_memory {  { agg_result_0_address0 mem_address 1 4 }  { agg_result_0_ce0 mem_ce 1 1 }  { agg_result_0_we0 mem_we 1 1 }  { agg_result_0_d0 mem_din 1 25 }  { agg_result_0_address1 MemPortADDR2 1 4 }  { agg_result_0_ce1 MemPortCE2 1 1 }  { agg_result_0_we1 MemPortWE2 1 1 }  { agg_result_0_d1 MemPortDIN2 1 25 } } }
	agg_result_1 { ap_memory {  { agg_result_1_address0 mem_address 1 4 }  { agg_result_1_ce0 mem_ce 1 1 }  { agg_result_1_we0 mem_we 1 1 }  { agg_result_1_d0 mem_din 1 25 }  { agg_result_1_address1 MemPortADDR2 1 4 }  { agg_result_1_ce1 MemPortCE2 1 1 }  { agg_result_1_we1 MemPortWE2 1 1 }  { agg_result_1_d1 MemPortDIN2 1 25 } } }
	agg_result_2 { ap_memory {  { agg_result_2_address0 mem_address 1 4 }  { agg_result_2_ce0 mem_ce 1 1 }  { agg_result_2_we0 mem_we 1 1 }  { agg_result_2_d0 mem_din 1 25 }  { agg_result_2_address1 MemPortADDR2 1 4 }  { agg_result_2_ce1 MemPortCE2 1 1 }  { agg_result_2_we1 MemPortWE2 1 1 }  { agg_result_2_d1 MemPortDIN2 1 25 } } }
	agg_result_3 { ap_memory {  { agg_result_3_address0 mem_address 1 4 }  { agg_result_3_ce0 mem_ce 1 1 }  { agg_result_3_we0 mem_we 1 1 }  { agg_result_3_d0 mem_din 1 25 }  { agg_result_3_address1 MemPortADDR2 1 4 }  { agg_result_3_ce1 MemPortCE2 1 1 }  { agg_result_3_we1 MemPortWE2 1 1 }  { agg_result_3_d1 MemPortDIN2 1 25 } } }
	A_0 { ap_memory {  { A_0_address0 mem_address 1 4 }  { A_0_ce0 mem_ce 1 1 }  { A_0_q0 mem_dout 0 25 } } }
	p_read { ap_none {  { p_read in_data 0 25 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 25 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 25 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 25 } } }
}
