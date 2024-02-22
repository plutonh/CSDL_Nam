set moduleName mm_Pipeline_4
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
set C_modelName {mm_Pipeline_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ AB_port int 32 regular {axi_master 1}  }
	{ sext_ln53 int 62 regular  }
	{ AB_buff int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ AB_buff_1 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ AB_buff_2 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ AB_buff_3 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ AB_buff_4 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ AB_buff_5 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ AB_buff_6 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ AB_buff_7 int 32 regular {array 8 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AB_port", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "AB","offset": { "type": "dynamic","port_name": "AB","bundle": "CONTROL_BUS"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln53", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "AB_buff", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_buff_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_buff_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_buff_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_buff_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_buff_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_buff_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_buff_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 77
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_AB_port_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AB_port_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AB_port_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_AB_port_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AB_port_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_AB_port_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_AB_port_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_AB_port_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_AB_port_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_AB_port_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_AB_port_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_AB_port_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_AB_port_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_AB_port_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AB_port_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AB_port_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_AB_port_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_AB_port_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_AB_port_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AB_port_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_AB_port_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_AB_port_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_AB_port_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_AB_port_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_AB_port_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_AB_port_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_AB_port_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_AB_port_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_AB_port_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_AB_port_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_AB_port_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_AB_port_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_AB_port_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_AB_port_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_AB_port_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_AB_port_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_AB_port_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_AB_port_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_AB_port_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_AB_port_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_AB_port_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_AB_port_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_AB_port_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_AB_port_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_AB_port_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_AB_port_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln53 sc_in sc_lv 62 signal 1 } 
	{ AB_buff_address0 sc_out sc_lv 3 signal 2 } 
	{ AB_buff_ce0 sc_out sc_logic 1 signal 2 } 
	{ AB_buff_q0 sc_in sc_lv 32 signal 2 } 
	{ AB_buff_1_address0 sc_out sc_lv 3 signal 3 } 
	{ AB_buff_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ AB_buff_1_q0 sc_in sc_lv 32 signal 3 } 
	{ AB_buff_2_address0 sc_out sc_lv 3 signal 4 } 
	{ AB_buff_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ AB_buff_2_q0 sc_in sc_lv 32 signal 4 } 
	{ AB_buff_3_address0 sc_out sc_lv 3 signal 5 } 
	{ AB_buff_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ AB_buff_3_q0 sc_in sc_lv 32 signal 5 } 
	{ AB_buff_4_address0 sc_out sc_lv 3 signal 6 } 
	{ AB_buff_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ AB_buff_4_q0 sc_in sc_lv 32 signal 6 } 
	{ AB_buff_5_address0 sc_out sc_lv 3 signal 7 } 
	{ AB_buff_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ AB_buff_5_q0 sc_in sc_lv 32 signal 7 } 
	{ AB_buff_6_address0 sc_out sc_lv 3 signal 8 } 
	{ AB_buff_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ AB_buff_6_q0 sc_in sc_lv 32 signal 8 } 
	{ AB_buff_7_address0 sc_out sc_lv 3 signal 9 } 
	{ AB_buff_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ AB_buff_7_q0 sc_in sc_lv 32 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_AB_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_AB_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_AB_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "AB_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_AB_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "AWID" }} , 
 	{ "name": "m_axi_AB_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_port", "role": "AWLEN" }} , 
 	{ "name": "m_axi_AB_port_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_port", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_AB_port_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AB_port", "role": "AWBURST" }} , 
 	{ "name": "m_axi_AB_port_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AB_port", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_AB_port_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_port", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_AB_port_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_port", "role": "AWPROT" }} , 
 	{ "name": "m_axi_AB_port_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_port", "role": "AWQOS" }} , 
 	{ "name": "m_axi_AB_port_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_port", "role": "AWREGION" }} , 
 	{ "name": "m_axi_AB_port_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "AWUSER" }} , 
 	{ "name": "m_axi_AB_port_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "WVALID" }} , 
 	{ "name": "m_axi_AB_port_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "WREADY" }} , 
 	{ "name": "m_axi_AB_port_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_port", "role": "WDATA" }} , 
 	{ "name": "m_axi_AB_port_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_port", "role": "WSTRB" }} , 
 	{ "name": "m_axi_AB_port_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "WLAST" }} , 
 	{ "name": "m_axi_AB_port_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "WID" }} , 
 	{ "name": "m_axi_AB_port_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "WUSER" }} , 
 	{ "name": "m_axi_AB_port_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "ARVALID" }} , 
 	{ "name": "m_axi_AB_port_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "ARREADY" }} , 
 	{ "name": "m_axi_AB_port_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "AB_port", "role": "ARADDR" }} , 
 	{ "name": "m_axi_AB_port_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "ARID" }} , 
 	{ "name": "m_axi_AB_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_port", "role": "ARLEN" }} , 
 	{ "name": "m_axi_AB_port_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_port", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_AB_port_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AB_port", "role": "ARBURST" }} , 
 	{ "name": "m_axi_AB_port_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AB_port", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_AB_port_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_port", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_AB_port_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_port", "role": "ARPROT" }} , 
 	{ "name": "m_axi_AB_port_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_port", "role": "ARQOS" }} , 
 	{ "name": "m_axi_AB_port_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AB_port", "role": "ARREGION" }} , 
 	{ "name": "m_axi_AB_port_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "ARUSER" }} , 
 	{ "name": "m_axi_AB_port_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "RVALID" }} , 
 	{ "name": "m_axi_AB_port_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "RREADY" }} , 
 	{ "name": "m_axi_AB_port_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_port", "role": "RDATA" }} , 
 	{ "name": "m_axi_AB_port_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "RLAST" }} , 
 	{ "name": "m_axi_AB_port_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "RID" }} , 
 	{ "name": "m_axi_AB_port_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "AB_port", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_AB_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_AB_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AB_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_AB_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_AB_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_AB_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AB_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_AB_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "BID" }} , 
 	{ "name": "m_axi_AB_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "BUSER" }} , 
 	{ "name": "sext_ln53", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln53", "role": "default" }} , 
 	{ "name": "AB_buff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff", "role": "address0" }} , 
 	{ "name": "AB_buff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff", "role": "ce0" }} , 
 	{ "name": "AB_buff_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff", "role": "q0" }} , 
 	{ "name": "AB_buff_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_1", "role": "address0" }} , 
 	{ "name": "AB_buff_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_1", "role": "ce0" }} , 
 	{ "name": "AB_buff_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_1", "role": "q0" }} , 
 	{ "name": "AB_buff_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_2", "role": "address0" }} , 
 	{ "name": "AB_buff_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_2", "role": "ce0" }} , 
 	{ "name": "AB_buff_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_2", "role": "q0" }} , 
 	{ "name": "AB_buff_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_3", "role": "address0" }} , 
 	{ "name": "AB_buff_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_3", "role": "ce0" }} , 
 	{ "name": "AB_buff_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_3", "role": "q0" }} , 
 	{ "name": "AB_buff_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_4", "role": "address0" }} , 
 	{ "name": "AB_buff_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_4", "role": "ce0" }} , 
 	{ "name": "AB_buff_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_4", "role": "q0" }} , 
 	{ "name": "AB_buff_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_5", "role": "address0" }} , 
 	{ "name": "AB_buff_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_5", "role": "ce0" }} , 
 	{ "name": "AB_buff_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_5", "role": "q0" }} , 
 	{ "name": "AB_buff_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_6", "role": "address0" }} , 
 	{ "name": "AB_buff_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_6", "role": "ce0" }} , 
 	{ "name": "AB_buff_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_6", "role": "q0" }} , 
 	{ "name": "AB_buff_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_7", "role": "address0" }} , 
 	{ "name": "AB_buff_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_7", "role": "ce0" }} , 
 	{ "name": "AB_buff_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_7", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "mm_Pipeline_4",
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
			{"Name" : "AB_port", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AB_port_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln53", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_buff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "AB_buff_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "AB_buff_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "AB_buff_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "AB_buff_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "AB_buff_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "AB_buff_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "AB_buff_7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U222", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mm_Pipeline_4 {
		AB_port {Type O LastRead -1 FirstWrite 2}
		sext_ln53 {Type I LastRead 0 FirstWrite -1}
		AB_buff {Type I LastRead 0 FirstWrite -1}
		AB_buff_1 {Type I LastRead 0 FirstWrite -1}
		AB_buff_2 {Type I LastRead 0 FirstWrite -1}
		AB_buff_3 {Type I LastRead 0 FirstWrite -1}
		AB_buff_4 {Type I LastRead 0 FirstWrite -1}
		AB_buff_5 {Type I LastRead 0 FirstWrite -1}
		AB_buff_6 {Type I LastRead 0 FirstWrite -1}
		AB_buff_7 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "67", "Max" : "67"}
	, {"Name" : "Interval", "Min" : "67", "Max" : "67"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_AB_port_AWVALID VALID 1 1 }  { m_axi_AB_port_AWREADY READY 0 1 }  { m_axi_AB_port_AWADDR ADDR 1 64 }  { m_axi_AB_port_AWID ID 1 1 }  { m_axi_AB_port_AWLEN SIZE 1 32 }  { m_axi_AB_port_AWSIZE BURST 1 3 }  { m_axi_AB_port_AWBURST LOCK 1 2 }  { m_axi_AB_port_AWLOCK CACHE 1 2 }  { m_axi_AB_port_AWCACHE PROT 1 4 }  { m_axi_AB_port_AWPROT QOS 1 3 }  { m_axi_AB_port_AWQOS REGION 1 4 }  { m_axi_AB_port_AWREGION USER 1 4 }  { m_axi_AB_port_AWUSER DATA 1 1 }  { m_axi_AB_port_WVALID VALID 1 1 }  { m_axi_AB_port_WREADY READY 0 1 }  { m_axi_AB_port_WDATA FIFONUM 1 32 }  { m_axi_AB_port_WSTRB STRB 1 4 }  { m_axi_AB_port_WLAST LAST 1 1 }  { m_axi_AB_port_WID ID 1 1 }  { m_axi_AB_port_WUSER DATA 1 1 }  { m_axi_AB_port_ARVALID VALID 1 1 }  { m_axi_AB_port_ARREADY READY 0 1 }  { m_axi_AB_port_ARADDR ADDR 1 64 }  { m_axi_AB_port_ARID ID 1 1 }  { m_axi_AB_port_ARLEN SIZE 1 32 }  { m_axi_AB_port_ARSIZE BURST 1 3 }  { m_axi_AB_port_ARBURST LOCK 1 2 }  { m_axi_AB_port_ARLOCK CACHE 1 2 }  { m_axi_AB_port_ARCACHE PROT 1 4 }  { m_axi_AB_port_ARPROT QOS 1 3 }  { m_axi_AB_port_ARQOS REGION 1 4 }  { m_axi_AB_port_ARREGION USER 1 4 }  { m_axi_AB_port_ARUSER DATA 1 1 }  { m_axi_AB_port_RVALID VALID 0 1 }  { m_axi_AB_port_RREADY READY 1 1 }  { m_axi_AB_port_RDATA FIFONUM 0 32 }  { m_axi_AB_port_RLAST LAST 0 1 }  { m_axi_AB_port_RID ID 0 1 }  { m_axi_AB_port_RFIFONUM LEN 0 9 }  { m_axi_AB_port_RUSER DATA 0 1 }  { m_axi_AB_port_RRESP RESP 0 2 }  { m_axi_AB_port_BVALID VALID 0 1 }  { m_axi_AB_port_BREADY READY 1 1 }  { m_axi_AB_port_BRESP RESP 0 2 }  { m_axi_AB_port_BID ID 0 1 }  { m_axi_AB_port_BUSER DATA 0 1 } } }
	sext_ln53 { ap_none {  { sext_ln53 in_data 0 62 } } }
	AB_buff { ap_memory {  { AB_buff_address0 mem_address 1 3 }  { AB_buff_ce0 mem_ce 1 1 }  { AB_buff_q0 in_data 0 32 } } }
	AB_buff_1 { ap_memory {  { AB_buff_1_address0 mem_address 1 3 }  { AB_buff_1_ce0 mem_ce 1 1 }  { AB_buff_1_q0 in_data 0 32 } } }
	AB_buff_2 { ap_memory {  { AB_buff_2_address0 mem_address 1 3 }  { AB_buff_2_ce0 mem_ce 1 1 }  { AB_buff_2_q0 in_data 0 32 } } }
	AB_buff_3 { ap_memory {  { AB_buff_3_address0 mem_address 1 3 }  { AB_buff_3_ce0 mem_ce 1 1 }  { AB_buff_3_q0 in_data 0 32 } } }
	AB_buff_4 { ap_memory {  { AB_buff_4_address0 mem_address 1 3 }  { AB_buff_4_ce0 mem_ce 1 1 }  { AB_buff_4_q0 in_data 0 32 } } }
	AB_buff_5 { ap_memory {  { AB_buff_5_address0 mem_address 1 3 }  { AB_buff_5_ce0 mem_ce 1 1 }  { AB_buff_5_q0 in_data 0 32 } } }
	AB_buff_6 { ap_memory {  { AB_buff_6_address0 mem_address 1 3 }  { AB_buff_6_ce0 mem_ce 1 1 }  { AB_buff_6_q0 in_data 0 32 } } }
	AB_buff_7 { ap_memory {  { AB_buff_7_address0 mem_address 1 3 }  { AB_buff_7_ce0 mem_ce 1 1 }  { AB_buff_7_q0 in_data 0 32 } } }
}
