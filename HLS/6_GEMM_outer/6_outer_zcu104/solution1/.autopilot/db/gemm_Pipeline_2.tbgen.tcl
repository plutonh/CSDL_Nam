set moduleName gemm_Pipeline_2
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
set C_modelName {gemm_Pipeline_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ b_port int 32 regular {axi_master 0}  }
	{ sext_ln41 int 62 regular  }
	{ b_buff float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ b_buff_1 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ b_buff_2 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ b_buff_3 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ b_buff_4 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ b_buff_5 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ b_buff_6 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ b_buff_7 float 32 regular {array 8 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b_port", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "b","offset": { "type": "dynamic","port_name": "b","bundle": "CONTROL_BUS"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln41", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "b_buff", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_buff_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_buff_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_buff_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_buff_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_buff_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_buff_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "b_buff_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 85
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_b_port_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_b_port_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_b_port_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_b_port_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_b_port_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_b_port_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_b_port_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_b_port_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_b_port_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_b_port_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_b_port_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_b_port_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_b_port_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_b_port_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_b_port_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_b_port_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_b_port_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_b_port_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_b_port_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_b_port_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_b_port_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_b_port_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_b_port_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_b_port_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_b_port_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_b_port_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_b_port_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_b_port_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_b_port_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_b_port_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_b_port_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_b_port_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_b_port_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_b_port_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_b_port_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_b_port_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_b_port_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_b_port_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_b_port_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_b_port_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_b_port_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_b_port_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_b_port_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_b_port_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_b_port_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_b_port_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln41 sc_in sc_lv 62 signal 1 } 
	{ b_buff_address0 sc_out sc_lv 3 signal 2 } 
	{ b_buff_ce0 sc_out sc_logic 1 signal 2 } 
	{ b_buff_we0 sc_out sc_logic 1 signal 2 } 
	{ b_buff_d0 sc_out sc_lv 32 signal 2 } 
	{ b_buff_1_address0 sc_out sc_lv 3 signal 3 } 
	{ b_buff_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ b_buff_1_we0 sc_out sc_logic 1 signal 3 } 
	{ b_buff_1_d0 sc_out sc_lv 32 signal 3 } 
	{ b_buff_2_address0 sc_out sc_lv 3 signal 4 } 
	{ b_buff_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ b_buff_2_we0 sc_out sc_logic 1 signal 4 } 
	{ b_buff_2_d0 sc_out sc_lv 32 signal 4 } 
	{ b_buff_3_address0 sc_out sc_lv 3 signal 5 } 
	{ b_buff_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ b_buff_3_we0 sc_out sc_logic 1 signal 5 } 
	{ b_buff_3_d0 sc_out sc_lv 32 signal 5 } 
	{ b_buff_4_address0 sc_out sc_lv 3 signal 6 } 
	{ b_buff_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ b_buff_4_we0 sc_out sc_logic 1 signal 6 } 
	{ b_buff_4_d0 sc_out sc_lv 32 signal 6 } 
	{ b_buff_5_address0 sc_out sc_lv 3 signal 7 } 
	{ b_buff_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ b_buff_5_we0 sc_out sc_logic 1 signal 7 } 
	{ b_buff_5_d0 sc_out sc_lv 32 signal 7 } 
	{ b_buff_6_address0 sc_out sc_lv 3 signal 8 } 
	{ b_buff_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ b_buff_6_we0 sc_out sc_logic 1 signal 8 } 
	{ b_buff_6_d0 sc_out sc_lv 32 signal 8 } 
	{ b_buff_7_address0 sc_out sc_lv 3 signal 9 } 
	{ b_buff_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ b_buff_7_we0 sc_out sc_logic 1 signal 9 } 
	{ b_buff_7_d0 sc_out sc_lv 32 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_b_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_b_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_b_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_b_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "AWID" }} , 
 	{ "name": "m_axi_b_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_port", "role": "AWLEN" }} , 
 	{ "name": "m_axi_b_port_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_port", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_b_port_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_port", "role": "AWBURST" }} , 
 	{ "name": "m_axi_b_port_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_port", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_b_port_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_port", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_b_port_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_port", "role": "AWPROT" }} , 
 	{ "name": "m_axi_b_port_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_port", "role": "AWQOS" }} , 
 	{ "name": "m_axi_b_port_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_port", "role": "AWREGION" }} , 
 	{ "name": "m_axi_b_port_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "AWUSER" }} , 
 	{ "name": "m_axi_b_port_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "WVALID" }} , 
 	{ "name": "m_axi_b_port_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "WREADY" }} , 
 	{ "name": "m_axi_b_port_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_port", "role": "WDATA" }} , 
 	{ "name": "m_axi_b_port_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_port", "role": "WSTRB" }} , 
 	{ "name": "m_axi_b_port_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "WLAST" }} , 
 	{ "name": "m_axi_b_port_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "WID" }} , 
 	{ "name": "m_axi_b_port_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "WUSER" }} , 
 	{ "name": "m_axi_b_port_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "ARVALID" }} , 
 	{ "name": "m_axi_b_port_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "ARREADY" }} , 
 	{ "name": "m_axi_b_port_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_port", "role": "ARADDR" }} , 
 	{ "name": "m_axi_b_port_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "ARID" }} , 
 	{ "name": "m_axi_b_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_port", "role": "ARLEN" }} , 
 	{ "name": "m_axi_b_port_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_port", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_b_port_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_port", "role": "ARBURST" }} , 
 	{ "name": "m_axi_b_port_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_port", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_b_port_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_port", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_b_port_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_port", "role": "ARPROT" }} , 
 	{ "name": "m_axi_b_port_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_port", "role": "ARQOS" }} , 
 	{ "name": "m_axi_b_port_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "b_port", "role": "ARREGION" }} , 
 	{ "name": "m_axi_b_port_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "ARUSER" }} , 
 	{ "name": "m_axi_b_port_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "RVALID" }} , 
 	{ "name": "m_axi_b_port_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "RREADY" }} , 
 	{ "name": "m_axi_b_port_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_port", "role": "RDATA" }} , 
 	{ "name": "m_axi_b_port_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "RLAST" }} , 
 	{ "name": "m_axi_b_port_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "RID" }} , 
 	{ "name": "m_axi_b_port_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "b_port", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_b_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_b_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_b_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_b_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_b_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_b_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "BID" }} , 
 	{ "name": "m_axi_b_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "BUSER" }} , 
 	{ "name": "sext_ln41", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln41", "role": "default" }} , 
 	{ "name": "b_buff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_buff", "role": "address0" }} , 
 	{ "name": "b_buff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff", "role": "ce0" }} , 
 	{ "name": "b_buff_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff", "role": "we0" }} , 
 	{ "name": "b_buff_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_buff", "role": "d0" }} , 
 	{ "name": "b_buff_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_buff_1", "role": "address0" }} , 
 	{ "name": "b_buff_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_1", "role": "ce0" }} , 
 	{ "name": "b_buff_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_1", "role": "we0" }} , 
 	{ "name": "b_buff_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_buff_1", "role": "d0" }} , 
 	{ "name": "b_buff_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_buff_2", "role": "address0" }} , 
 	{ "name": "b_buff_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_2", "role": "ce0" }} , 
 	{ "name": "b_buff_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_2", "role": "we0" }} , 
 	{ "name": "b_buff_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_buff_2", "role": "d0" }} , 
 	{ "name": "b_buff_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_buff_3", "role": "address0" }} , 
 	{ "name": "b_buff_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_3", "role": "ce0" }} , 
 	{ "name": "b_buff_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_3", "role": "we0" }} , 
 	{ "name": "b_buff_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_buff_3", "role": "d0" }} , 
 	{ "name": "b_buff_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_buff_4", "role": "address0" }} , 
 	{ "name": "b_buff_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_4", "role": "ce0" }} , 
 	{ "name": "b_buff_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_4", "role": "we0" }} , 
 	{ "name": "b_buff_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_buff_4", "role": "d0" }} , 
 	{ "name": "b_buff_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_buff_5", "role": "address0" }} , 
 	{ "name": "b_buff_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_5", "role": "ce0" }} , 
 	{ "name": "b_buff_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_5", "role": "we0" }} , 
 	{ "name": "b_buff_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_buff_5", "role": "d0" }} , 
 	{ "name": "b_buff_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_buff_6", "role": "address0" }} , 
 	{ "name": "b_buff_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_6", "role": "ce0" }} , 
 	{ "name": "b_buff_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_6", "role": "we0" }} , 
 	{ "name": "b_buff_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_buff_6", "role": "d0" }} , 
 	{ "name": "b_buff_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "b_buff_7", "role": "address0" }} , 
 	{ "name": "b_buff_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_7", "role": "ce0" }} , 
 	{ "name": "b_buff_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_buff_7", "role": "we0" }} , 
 	{ "name": "b_buff_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_buff_7", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "gemm_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "b_port", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "b_port_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln41", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_buff", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_buff_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_buff_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_buff_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_buff_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_buff_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_buff_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "b_buff_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gemm_Pipeline_2 {
		b_port {Type I LastRead 1 FirstWrite -1}
		sext_ln41 {Type I LastRead 0 FirstWrite -1}
		b_buff {Type O LastRead -1 FirstWrite 2}
		b_buff_1 {Type O LastRead -1 FirstWrite 2}
		b_buff_2 {Type O LastRead -1 FirstWrite 2}
		b_buff_3 {Type O LastRead -1 FirstWrite 2}
		b_buff_4 {Type O LastRead -1 FirstWrite 2}
		b_buff_5 {Type O LastRead -1 FirstWrite 2}
		b_buff_6 {Type O LastRead -1 FirstWrite 2}
		b_buff_7 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "67", "Max" : "67"}
	, {"Name" : "Interval", "Min" : "67", "Max" : "67"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_b_port_AWVALID VALID 1 1 }  { m_axi_b_port_AWREADY READY 0 1 }  { m_axi_b_port_AWADDR ADDR 1 64 }  { m_axi_b_port_AWID ID 1 1 }  { m_axi_b_port_AWLEN SIZE 1 32 }  { m_axi_b_port_AWSIZE BURST 1 3 }  { m_axi_b_port_AWBURST LOCK 1 2 }  { m_axi_b_port_AWLOCK CACHE 1 2 }  { m_axi_b_port_AWCACHE PROT 1 4 }  { m_axi_b_port_AWPROT QOS 1 3 }  { m_axi_b_port_AWQOS REGION 1 4 }  { m_axi_b_port_AWREGION USER 1 4 }  { m_axi_b_port_AWUSER DATA 1 1 }  { m_axi_b_port_WVALID VALID 1 1 }  { m_axi_b_port_WREADY READY 0 1 }  { m_axi_b_port_WDATA FIFONUM 1 32 }  { m_axi_b_port_WSTRB STRB 1 4 }  { m_axi_b_port_WLAST LAST 1 1 }  { m_axi_b_port_WID ID 1 1 }  { m_axi_b_port_WUSER DATA 1 1 }  { m_axi_b_port_ARVALID VALID 1 1 }  { m_axi_b_port_ARREADY READY 0 1 }  { m_axi_b_port_ARADDR ADDR 1 64 }  { m_axi_b_port_ARID ID 1 1 }  { m_axi_b_port_ARLEN SIZE 1 32 }  { m_axi_b_port_ARSIZE BURST 1 3 }  { m_axi_b_port_ARBURST LOCK 1 2 }  { m_axi_b_port_ARLOCK CACHE 1 2 }  { m_axi_b_port_ARCACHE PROT 1 4 }  { m_axi_b_port_ARPROT QOS 1 3 }  { m_axi_b_port_ARQOS REGION 1 4 }  { m_axi_b_port_ARREGION USER 1 4 }  { m_axi_b_port_ARUSER DATA 1 1 }  { m_axi_b_port_RVALID VALID 0 1 }  { m_axi_b_port_RREADY READY 1 1 }  { m_axi_b_port_RDATA FIFONUM 0 32 }  { m_axi_b_port_RLAST LAST 0 1 }  { m_axi_b_port_RID ID 0 1 }  { m_axi_b_port_RFIFONUM LEN 0 9 }  { m_axi_b_port_RUSER DATA 0 1 }  { m_axi_b_port_RRESP RESP 0 2 }  { m_axi_b_port_BVALID VALID 0 1 }  { m_axi_b_port_BREADY READY 1 1 }  { m_axi_b_port_BRESP RESP 0 2 }  { m_axi_b_port_BID ID 0 1 }  { m_axi_b_port_BUSER DATA 0 1 } } }
	sext_ln41 { ap_none {  { sext_ln41 in_data 0 62 } } }
	b_buff { ap_memory {  { b_buff_address0 mem_address 1 3 }  { b_buff_ce0 mem_ce 1 1 }  { b_buff_we0 mem_we 1 1 }  { b_buff_d0 mem_din 1 32 } } }
	b_buff_1 { ap_memory {  { b_buff_1_address0 mem_address 1 3 }  { b_buff_1_ce0 mem_ce 1 1 }  { b_buff_1_we0 mem_we 1 1 }  { b_buff_1_d0 mem_din 1 32 } } }
	b_buff_2 { ap_memory {  { b_buff_2_address0 mem_address 1 3 }  { b_buff_2_ce0 mem_ce 1 1 }  { b_buff_2_we0 mem_we 1 1 }  { b_buff_2_d0 mem_din 1 32 } } }
	b_buff_3 { ap_memory {  { b_buff_3_address0 mem_address 1 3 }  { b_buff_3_ce0 mem_ce 1 1 }  { b_buff_3_we0 mem_we 1 1 }  { b_buff_3_d0 mem_din 1 32 } } }
	b_buff_4 { ap_memory {  { b_buff_4_address0 mem_address 1 3 }  { b_buff_4_ce0 mem_ce 1 1 }  { b_buff_4_we0 mem_we 1 1 }  { b_buff_4_d0 mem_din 1 32 } } }
	b_buff_5 { ap_memory {  { b_buff_5_address0 mem_address 1 3 }  { b_buff_5_ce0 mem_ce 1 1 }  { b_buff_5_we0 mem_we 1 1 }  { b_buff_5_d0 mem_din 1 32 } } }
	b_buff_6 { ap_memory {  { b_buff_6_address0 mem_address 1 3 }  { b_buff_6_ce0 mem_ce 1 1 }  { b_buff_6_we0 mem_we 1 1 }  { b_buff_6_d0 mem_din 1 32 } } }
	b_buff_7 { ap_memory {  { b_buff_7_address0 mem_address 1 3 }  { b_buff_7_ce0 mem_ce 1 1 }  { b_buff_7_we0 mem_we 1 1 }  { b_buff_7_d0 mem_din 1 32 } } }
}
