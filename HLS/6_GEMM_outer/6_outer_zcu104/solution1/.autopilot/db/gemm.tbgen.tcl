set moduleName gemm
set isTopModule 1
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
set C_modelName {gemm}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_port int 32 regular {axi_master 0}  }
	{ b_port int 32 regular {axi_master 0}  }
	{ c_port int 32 regular {axi_master 1}  }
	{ a int 64 regular {axi_slave 0}  }
	{ b int 64 regular {axi_slave 0}  }
	{ c int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_port", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "a","offset": { "type": "dynamic","port_name": "a","bundle": "CONTROL_BUS"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "b_port", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "b","offset": { "type": "dynamic","port_name": "b","bundle": "CONTROL_BUS"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "c_port", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "CONTROL_BUS"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "a", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "b", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "c", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_a_port_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_port_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_port_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_a_port_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_port_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_a_port_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_a_port_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_a_port_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_a_port_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_port_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_a_port_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_port_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_port_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_port_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_port_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_port_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_a_port_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_port_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_port_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_port_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_port_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_port_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_port_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_a_port_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_port_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_a_port_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_a_port_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_a_port_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_a_port_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_port_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_a_port_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_port_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_a_port_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_a_port_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_port_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_port_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_a_port_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_port_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_a_port_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_a_port_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_a_port_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_a_port_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_a_port_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_a_port_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_a_port_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_b_port_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_b_port_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_b_port_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_b_port_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_b_port_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_b_port_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_b_port_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_b_port_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_b_port_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_b_port_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_b_port_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_b_port_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_b_port_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_b_port_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_b_port_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_b_port_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_b_port_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_b_port_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_b_port_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_b_port_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_b_port_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_b_port_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_b_port_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_b_port_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_b_port_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_b_port_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_b_port_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_b_port_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_b_port_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_b_port_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_b_port_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_b_port_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_b_port_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_b_port_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_b_port_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_b_port_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_b_port_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_b_port_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_b_port_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_b_port_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_b_port_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_b_port_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_b_port_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_b_port_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_b_port_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_c_port_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_c_port_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_c_port_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_c_port_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_c_port_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_c_port_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_c_port_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_c_port_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_c_port_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_c_port_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_c_port_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_c_port_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_c_port_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_c_port_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_c_port_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_c_port_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_c_port_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_c_port_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_c_port_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_c_port_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_c_port_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_c_port_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_c_port_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_c_port_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_c_port_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_c_port_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_c_port_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_c_port_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_c_port_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_c_port_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_c_port_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_c_port_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_c_port_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_c_port_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_c_port_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_c_port_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_c_port_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_c_port_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_c_port_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_c_port_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_c_port_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_c_port_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_c_port_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_c_port_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_c_port_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CONTROL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CONTROL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"gemm","role":"start","value":"0","valid_bit":"0"},{"name":"gemm","role":"continue","value":"0","valid_bit":"4"},{"name":"gemm","role":"auto_start","value":"0","valid_bit":"7"},{"name":"a","role":"data","value":"16"},{"name":"b","role":"data","value":"28"},{"name":"c","role":"data","value":"40"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"gemm","role":"start","value":"0","valid_bit":"0"},{"name":"gemm","role":"done","value":"0","valid_bit":"1"},{"name":"gemm","role":"idle","value":"0","valid_bit":"2"},{"name":"gemm","role":"ready","value":"0","valid_bit":"3"},{"name":"gemm","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CONTROL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CONTROL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CONTROL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CONTROL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CONTROL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CONTROL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_a_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_a_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_a_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_a_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "AWID" }} , 
 	{ "name": "m_axi_a_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_port", "role": "AWLEN" }} , 
 	{ "name": "m_axi_a_port_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_port", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_a_port_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_port", "role": "AWBURST" }} , 
 	{ "name": "m_axi_a_port_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_port", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_a_port_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_port", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_a_port_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_port", "role": "AWPROT" }} , 
 	{ "name": "m_axi_a_port_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_port", "role": "AWQOS" }} , 
 	{ "name": "m_axi_a_port_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_port", "role": "AWREGION" }} , 
 	{ "name": "m_axi_a_port_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "AWUSER" }} , 
 	{ "name": "m_axi_a_port_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "WVALID" }} , 
 	{ "name": "m_axi_a_port_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "WREADY" }} , 
 	{ "name": "m_axi_a_port_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_port", "role": "WDATA" }} , 
 	{ "name": "m_axi_a_port_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_port", "role": "WSTRB" }} , 
 	{ "name": "m_axi_a_port_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "WLAST" }} , 
 	{ "name": "m_axi_a_port_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "WID" }} , 
 	{ "name": "m_axi_a_port_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "WUSER" }} , 
 	{ "name": "m_axi_a_port_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "ARVALID" }} , 
 	{ "name": "m_axi_a_port_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "ARREADY" }} , 
 	{ "name": "m_axi_a_port_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "a_port", "role": "ARADDR" }} , 
 	{ "name": "m_axi_a_port_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "ARID" }} , 
 	{ "name": "m_axi_a_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "a_port", "role": "ARLEN" }} , 
 	{ "name": "m_axi_a_port_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_port", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_a_port_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_port", "role": "ARBURST" }} , 
 	{ "name": "m_axi_a_port_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_port", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_a_port_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_port", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_a_port_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "a_port", "role": "ARPROT" }} , 
 	{ "name": "m_axi_a_port_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_port", "role": "ARQOS" }} , 
 	{ "name": "m_axi_a_port_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_port", "role": "ARREGION" }} , 
 	{ "name": "m_axi_a_port_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "ARUSER" }} , 
 	{ "name": "m_axi_a_port_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "RVALID" }} , 
 	{ "name": "m_axi_a_port_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "RREADY" }} , 
 	{ "name": "m_axi_a_port_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_port", "role": "RDATA" }} , 
 	{ "name": "m_axi_a_port_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "RLAST" }} , 
 	{ "name": "m_axi_a_port_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "RID" }} , 
 	{ "name": "m_axi_a_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_a_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_a_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_a_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_a_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "a_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_a_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "BID" }} , 
 	{ "name": "m_axi_a_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "a_port", "role": "BUSER" }} , 
 	{ "name": "m_axi_b_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_b_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_b_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "b_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_b_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "AWID" }} , 
 	{ "name": "m_axi_b_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_port", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_b_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "b_port", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_b_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_b_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_b_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_b_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_b_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "b_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_b_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "BID" }} , 
 	{ "name": "m_axi_b_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "b_port", "role": "BUSER" }} , 
 	{ "name": "m_axi_c_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_c_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_c_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_c_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "AWID" }} , 
 	{ "name": "m_axi_c_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_port", "role": "AWLEN" }} , 
 	{ "name": "m_axi_c_port_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_port", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_c_port_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c_port", "role": "AWBURST" }} , 
 	{ "name": "m_axi_c_port_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c_port", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_c_port_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_port", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_c_port_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_port", "role": "AWPROT" }} , 
 	{ "name": "m_axi_c_port_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_port", "role": "AWQOS" }} , 
 	{ "name": "m_axi_c_port_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_port", "role": "AWREGION" }} , 
 	{ "name": "m_axi_c_port_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "AWUSER" }} , 
 	{ "name": "m_axi_c_port_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "WVALID" }} , 
 	{ "name": "m_axi_c_port_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "WREADY" }} , 
 	{ "name": "m_axi_c_port_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_port", "role": "WDATA" }} , 
 	{ "name": "m_axi_c_port_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_port", "role": "WSTRB" }} , 
 	{ "name": "m_axi_c_port_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "WLAST" }} , 
 	{ "name": "m_axi_c_port_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "WID" }} , 
 	{ "name": "m_axi_c_port_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "WUSER" }} , 
 	{ "name": "m_axi_c_port_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "ARVALID" }} , 
 	{ "name": "m_axi_c_port_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "ARREADY" }} , 
 	{ "name": "m_axi_c_port_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_port", "role": "ARADDR" }} , 
 	{ "name": "m_axi_c_port_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "ARID" }} , 
 	{ "name": "m_axi_c_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "c_port", "role": "ARLEN" }} , 
 	{ "name": "m_axi_c_port_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_port", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_c_port_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c_port", "role": "ARBURST" }} , 
 	{ "name": "m_axi_c_port_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c_port", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_c_port_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_port", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_c_port_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "c_port", "role": "ARPROT" }} , 
 	{ "name": "m_axi_c_port_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_port", "role": "ARQOS" }} , 
 	{ "name": "m_axi_c_port_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "c_port", "role": "ARREGION" }} , 
 	{ "name": "m_axi_c_port_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "ARUSER" }} , 
 	{ "name": "m_axi_c_port_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "RVALID" }} , 
 	{ "name": "m_axi_c_port_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "RREADY" }} , 
 	{ "name": "m_axi_c_port_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_port", "role": "RDATA" }} , 
 	{ "name": "m_axi_c_port_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "RLAST" }} , 
 	{ "name": "m_axi_c_port_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "RID" }} , 
 	{ "name": "m_axi_c_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_c_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_c_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_c_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_c_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_c_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "BID" }} , 
 	{ "name": "m_axi_c_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "19", "21", "23", "77", "88", "89", "90", "91"],
		"CDFG" : "gemm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "188", "EstimateLatencyMax" : "188",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_port", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "a_port_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_gemm_Pipeline_1_fu_1294", "Port" : "a_port", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "b_port", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "b_port_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_gemm_Pipeline_2_fu_1309", "Port" : "b_port", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "c_port", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_port_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "c_port_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_gemm_Pipeline_5_fu_1612", "Port" : "c_port", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "c", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_buff_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_buff_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_buff_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_buff_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_buff_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_buff_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_buff_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_buff_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_buff_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_buff_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_buff_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_buff_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_buff_4_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_buff_5_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_buff_6_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_buff_7_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_1_fu_1294", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "gemm_Pipeline_1",
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
			{"Name" : "a_port", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "a_port_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln40", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_buff_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_buff_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_buff_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_buff_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_buff_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_buff_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "a_buff_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_1_fu_1294.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_2_fu_1309", "Parent" : "0", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_2_fu_1309.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_46_2_fu_1324", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "gemm_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_46_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_buff_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_buff_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_1_VITIS_LOOP_46_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_46_2_fu_1324.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392", "Parent" : "0", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76"],
		"CDFG" : "gemm_Pipeline_VITIS_LOOP_51_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_buff_63_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_62_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_61_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_60_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_59_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_58_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_57_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_56_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_55_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_54_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_53_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_52_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_51_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_50_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_49_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_48_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_47_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_46_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_45_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_44_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_43_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_42_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_41_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_39_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_37_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_36_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_35_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_34_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_buff_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_5_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_6_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_7_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_buff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_buff_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_buff_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_buff_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_buff_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_buff_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_buff_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_buff_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_buff_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_2_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_3_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_4_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_5_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_6_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_7_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_2_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_3_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_4_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_5_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_6_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_7_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_1_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_2_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_3_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_4_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_5_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_6_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_7_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_1_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_2_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_3_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_4_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_5_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_6_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_7_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_1_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_2_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_3_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_4_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_5_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_6_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_7_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_1_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_2_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_3_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_4_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_5_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_6_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_7_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_1_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_2_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_3_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_4_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_5_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_6_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_buff_7_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_7_7116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_7_6115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_7_5114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_7_4113_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_7_3112_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_7_2111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_7_1110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_7109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_6_7108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_6_6107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_6_5106_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_6_4105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_6_3104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_6_2103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_6_1102_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_6101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_5_7100_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_5_699_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_5_598_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_5_497_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_5_396_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_5_295_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_5_194_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_593_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_4_792_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_4_691_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_4_590_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_4_489_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_4_388_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_4_287_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_4_186_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_485_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_3_784_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_3_683_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_3_582_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_3_481_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_3_380_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_3_279_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_3_178_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_377_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_2_776_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_2_675_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_2_574_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_2_473_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_2_372_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_2_271_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_2_170_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_269_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_1_768_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_1_667_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_1_566_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_1_465_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_1_364_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_1_263_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_1_162_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_161_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_75260_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_64759_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_54258_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_43757_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_33256_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_22755_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "add_12254_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_51_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_no_dsp_1_U85", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U86", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U87", "Parent" : "23"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U88", "Parent" : "23"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U89", "Parent" : "23"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U90", "Parent" : "23"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U91", "Parent" : "23"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U92", "Parent" : "23"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U93", "Parent" : "23"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U94", "Parent" : "23"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U95", "Parent" : "23"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U96", "Parent" : "23"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U97", "Parent" : "23"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U98", "Parent" : "23"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U99", "Parent" : "23"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U100", "Parent" : "23"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U101", "Parent" : "23"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U102", "Parent" : "23"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U103", "Parent" : "23"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U104", "Parent" : "23"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U105", "Parent" : "23"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fadd_32ns_32ns_32_4_full_dsp_1_U106", "Parent" : "23"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U107", "Parent" : "23"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U108", "Parent" : "23"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U109", "Parent" : "23"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U110", "Parent" : "23"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U111", "Parent" : "23"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U112", "Parent" : "23"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U113", "Parent" : "23"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U114", "Parent" : "23"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U115", "Parent" : "23"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U116", "Parent" : "23"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U117", "Parent" : "23"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U118", "Parent" : "23"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U119", "Parent" : "23"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U120", "Parent" : "23"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U121", "Parent" : "23"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U122", "Parent" : "23"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U123", "Parent" : "23"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U124", "Parent" : "23"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U125", "Parent" : "23"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U126", "Parent" : "23"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U127", "Parent" : "23"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.fmul_32ns_32ns_32_3_max_dsp_1_U128", "Parent" : "23"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.mux_83_32_1_1_U129", "Parent" : "23"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.mux_83_32_1_1_U130", "Parent" : "23"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.mux_83_32_1_1_U131", "Parent" : "23"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.mux_83_32_1_1_U132", "Parent" : "23"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.mux_83_32_1_1_U133", "Parent" : "23"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.mux_83_32_1_1_U134", "Parent" : "23"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.mux_83_32_1_1_U135", "Parent" : "23"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.mux_83_32_1_1_U136", "Parent" : "23"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_VITIS_LOOP_51_3_fu_1392.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_5_fu_1612", "Parent" : "0", "Child" : ["78", "79", "80", "81", "82", "83", "84", "85", "86", "87"],
		"CDFG" : "gemm_Pipeline_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c_port", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "c_port_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_12254_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_22755_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_33256_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_43757_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_54258_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_64759_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_75260_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_161_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_1_162_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_1_263_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_1_364_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_1_465_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_1_566_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_1_667_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_1_768_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_269_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_2_170_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_2_271_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_2_372_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_2_473_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_2_574_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_2_675_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_2_776_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_377_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_3_178_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_3_279_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_3_380_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_3_481_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_3_582_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_3_683_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_3_784_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_485_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_4_186_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_4_287_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_4_388_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_4_489_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_4_590_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_4_691_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_4_792_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_593_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_5_194_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_5_295_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_5_396_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_5_497_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_5_598_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_5_699_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_5_7100_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_6101_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_6_1102_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_6_2103_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_6_3104_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_6_4105_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_6_5106_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_6_6107_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_6_7108_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_7109_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_7_1110_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_7_2111_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_7_3112_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_7_4113_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_7_5114_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_7_6115_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_7_7116_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_5_fu_1612.mux_83_32_1_1_U341", "Parent" : "77"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_5_fu_1612.mux_83_32_1_1_U342", "Parent" : "77"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_5_fu_1612.mux_83_32_1_1_U343", "Parent" : "77"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_5_fu_1612.mux_83_32_1_1_U344", "Parent" : "77"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_5_fu_1612.mux_83_32_1_1_U345", "Parent" : "77"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_5_fu_1612.mux_83_32_1_1_U346", "Parent" : "77"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_5_fu_1612.mux_83_32_1_1_U347", "Parent" : "77"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_5_fu_1612.mux_83_32_1_1_U348", "Parent" : "77"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_5_fu_1612.mux_83_32_1_1_U349", "Parent" : "77"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_gemm_Pipeline_5_fu_1612.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.a_port_m_axi_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.b_port_m_axi_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.c_port_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gemm {
		a_port {Type I LastRead 1 FirstWrite -1}
		b_port {Type I LastRead 1 FirstWrite -1}
		c_port {Type O LastRead 18 FirstWrite 1}
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		c {Type I LastRead 0 FirstWrite -1}}
	gemm_Pipeline_1 {
		a_port {Type I LastRead 1 FirstWrite -1}
		sext_ln40 {Type I LastRead 0 FirstWrite -1}
		a_buff {Type O LastRead -1 FirstWrite 2}
		a_buff_1 {Type O LastRead -1 FirstWrite 2}
		a_buff_2 {Type O LastRead -1 FirstWrite 2}
		a_buff_3 {Type O LastRead -1 FirstWrite 2}
		a_buff_4 {Type O LastRead -1 FirstWrite 2}
		a_buff_5 {Type O LastRead -1 FirstWrite 2}
		a_buff_6 {Type O LastRead -1 FirstWrite 2}
		a_buff_7 {Type O LastRead -1 FirstWrite 2}}
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
		b_buff_7 {Type O LastRead -1 FirstWrite 2}}
	gemm_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_46_2 {
		c_buff_63_out {Type O LastRead -1 FirstWrite 0}
		c_buff_62_out {Type O LastRead -1 FirstWrite 0}
		c_buff_61_out {Type O LastRead -1 FirstWrite 0}
		c_buff_60_out {Type O LastRead -1 FirstWrite 0}
		c_buff_59_out {Type O LastRead -1 FirstWrite 0}
		c_buff_58_out {Type O LastRead -1 FirstWrite 0}
		c_buff_57_out {Type O LastRead -1 FirstWrite 0}
		c_buff_56_out {Type O LastRead -1 FirstWrite 0}
		c_buff_55_out {Type O LastRead -1 FirstWrite 0}
		c_buff_54_out {Type O LastRead -1 FirstWrite 0}
		c_buff_53_out {Type O LastRead -1 FirstWrite 0}
		c_buff_52_out {Type O LastRead -1 FirstWrite 0}
		c_buff_51_out {Type O LastRead -1 FirstWrite 0}
		c_buff_50_out {Type O LastRead -1 FirstWrite 0}
		c_buff_49_out {Type O LastRead -1 FirstWrite 0}
		c_buff_48_out {Type O LastRead -1 FirstWrite 0}
		c_buff_47_out {Type O LastRead -1 FirstWrite 0}
		c_buff_46_out {Type O LastRead -1 FirstWrite 0}
		c_buff_45_out {Type O LastRead -1 FirstWrite 0}
		c_buff_44_out {Type O LastRead -1 FirstWrite 0}
		c_buff_43_out {Type O LastRead -1 FirstWrite 0}
		c_buff_42_out {Type O LastRead -1 FirstWrite 0}
		c_buff_41_out {Type O LastRead -1 FirstWrite 0}
		c_buff_40_out {Type O LastRead -1 FirstWrite 0}
		c_buff_39_out {Type O LastRead -1 FirstWrite 0}
		c_buff_38_out {Type O LastRead -1 FirstWrite 0}
		c_buff_37_out {Type O LastRead -1 FirstWrite 0}
		c_buff_36_out {Type O LastRead -1 FirstWrite 0}
		c_buff_35_out {Type O LastRead -1 FirstWrite 0}
		c_buff_34_out {Type O LastRead -1 FirstWrite 0}
		c_buff_33_out {Type O LastRead -1 FirstWrite 0}
		c_buff_32_out {Type O LastRead -1 FirstWrite 0}
		c_buff_31_out {Type O LastRead -1 FirstWrite 0}
		c_buff_30_out {Type O LastRead -1 FirstWrite 0}
		c_buff_29_out {Type O LastRead -1 FirstWrite 0}
		c_buff_28_out {Type O LastRead -1 FirstWrite 0}
		c_buff_27_out {Type O LastRead -1 FirstWrite 0}
		c_buff_26_out {Type O LastRead -1 FirstWrite 0}
		c_buff_25_out {Type O LastRead -1 FirstWrite 0}
		c_buff_24_out {Type O LastRead -1 FirstWrite 0}
		c_buff_23_out {Type O LastRead -1 FirstWrite 0}
		c_buff_22_out {Type O LastRead -1 FirstWrite 0}
		c_buff_21_out {Type O LastRead -1 FirstWrite 0}
		c_buff_20_out {Type O LastRead -1 FirstWrite 0}
		c_buff_19_out {Type O LastRead -1 FirstWrite 0}
		c_buff_18_out {Type O LastRead -1 FirstWrite 0}
		c_buff_17_out {Type O LastRead -1 FirstWrite 0}
		c_buff_16_out {Type O LastRead -1 FirstWrite 0}
		c_buff_15_out {Type O LastRead -1 FirstWrite 0}
		c_buff_14_out {Type O LastRead -1 FirstWrite 0}
		c_buff_13_out {Type O LastRead -1 FirstWrite 0}
		c_buff_12_out {Type O LastRead -1 FirstWrite 0}
		c_buff_11_out {Type O LastRead -1 FirstWrite 0}
		c_buff_10_out {Type O LastRead -1 FirstWrite 0}
		c_buff_9_out {Type O LastRead -1 FirstWrite 0}
		c_buff_8_out {Type O LastRead -1 FirstWrite 0}
		c_buff_7_out {Type O LastRead -1 FirstWrite 0}
		c_buff_6_out {Type O LastRead -1 FirstWrite 0}
		c_buff_5_out {Type O LastRead -1 FirstWrite 0}
		c_buff_4_out {Type O LastRead -1 FirstWrite 0}
		c_buff_3_out {Type O LastRead -1 FirstWrite 0}
		c_buff_2_out {Type O LastRead -1 FirstWrite 0}
		c_buff_1_out {Type O LastRead -1 FirstWrite 0}
		c_buff_out {Type O LastRead -1 FirstWrite 0}}
	gemm_Pipeline_VITIS_LOOP_51_3 {
		c_buff_63_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_62_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_61_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_60_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_59_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_58_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_57_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_56_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_55_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_54_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_53_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_52_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_51_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_50_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_49_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_48_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_47_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_46_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_45_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_44_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_43_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_42_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_41_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_40_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_39_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_38_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_37_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_36_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_35_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_34_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_33_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_32_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_31_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_30_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_29_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_28_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_27_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_26_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_25_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_24_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_23_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_22_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_21_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_20_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_19_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_18_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_17_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_16_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_15_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_14_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_13_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_12_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_11_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_10_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_9_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_8_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_7_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_6_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_5_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_4_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_3_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_2_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_1_reload {Type I LastRead 0 FirstWrite -1}
		c_buff_reload {Type I LastRead 0 FirstWrite -1}
		a_buff_load {Type I LastRead 0 FirstWrite -1}
		a_buff_1_load {Type I LastRead 0 FirstWrite -1}
		a_buff_2_load {Type I LastRead 0 FirstWrite -1}
		a_buff_3_load {Type I LastRead 0 FirstWrite -1}
		a_buff_4_load {Type I LastRead 0 FirstWrite -1}
		a_buff_5_load {Type I LastRead 0 FirstWrite -1}
		a_buff_6_load {Type I LastRead 0 FirstWrite -1}
		a_buff_7_load {Type I LastRead 0 FirstWrite -1}
		b_buff {Type I LastRead 0 FirstWrite -1}
		b_buff_1 {Type I LastRead 0 FirstWrite -1}
		b_buff_2 {Type I LastRead 0 FirstWrite -1}
		b_buff_3 {Type I LastRead 0 FirstWrite -1}
		b_buff_4 {Type I LastRead 0 FirstWrite -1}
		b_buff_5 {Type I LastRead 0 FirstWrite -1}
		b_buff_6 {Type I LastRead 0 FirstWrite -1}
		b_buff_7 {Type I LastRead 0 FirstWrite -1}
		a_buff_load_1 {Type I LastRead 0 FirstWrite -1}
		a_buff_1_load_1 {Type I LastRead 0 FirstWrite -1}
		a_buff_2_load_1 {Type I LastRead 0 FirstWrite -1}
		a_buff_3_load_1 {Type I LastRead 0 FirstWrite -1}
		a_buff_4_load_1 {Type I LastRead 0 FirstWrite -1}
		a_buff_5_load_1 {Type I LastRead 0 FirstWrite -1}
		a_buff_6_load_1 {Type I LastRead 0 FirstWrite -1}
		a_buff_7_load_1 {Type I LastRead 0 FirstWrite -1}
		a_buff_load_2 {Type I LastRead 0 FirstWrite -1}
		a_buff_1_load_2 {Type I LastRead 0 FirstWrite -1}
		a_buff_2_load_2 {Type I LastRead 0 FirstWrite -1}
		a_buff_3_load_2 {Type I LastRead 0 FirstWrite -1}
		a_buff_4_load_2 {Type I LastRead 0 FirstWrite -1}
		a_buff_5_load_2 {Type I LastRead 0 FirstWrite -1}
		a_buff_6_load_2 {Type I LastRead 0 FirstWrite -1}
		a_buff_7_load_2 {Type I LastRead 0 FirstWrite -1}
		a_buff_load_3 {Type I LastRead 0 FirstWrite -1}
		a_buff_1_load_3 {Type I LastRead 0 FirstWrite -1}
		a_buff_2_load_3 {Type I LastRead 0 FirstWrite -1}
		a_buff_3_load_3 {Type I LastRead 0 FirstWrite -1}
		a_buff_4_load_3 {Type I LastRead 0 FirstWrite -1}
		a_buff_5_load_3 {Type I LastRead 0 FirstWrite -1}
		a_buff_6_load_3 {Type I LastRead 0 FirstWrite -1}
		a_buff_7_load_3 {Type I LastRead 0 FirstWrite -1}
		a_buff_load_4 {Type I LastRead 0 FirstWrite -1}
		a_buff_1_load_4 {Type I LastRead 0 FirstWrite -1}
		a_buff_2_load_4 {Type I LastRead 0 FirstWrite -1}
		a_buff_3_load_4 {Type I LastRead 0 FirstWrite -1}
		a_buff_4_load_4 {Type I LastRead 0 FirstWrite -1}
		a_buff_5_load_4 {Type I LastRead 0 FirstWrite -1}
		a_buff_6_load_4 {Type I LastRead 0 FirstWrite -1}
		a_buff_7_load_4 {Type I LastRead 0 FirstWrite -1}
		a_buff_load_5 {Type I LastRead 0 FirstWrite -1}
		a_buff_1_load_5 {Type I LastRead 0 FirstWrite -1}
		a_buff_2_load_5 {Type I LastRead 0 FirstWrite -1}
		a_buff_3_load_5 {Type I LastRead 0 FirstWrite -1}
		a_buff_4_load_5 {Type I LastRead 0 FirstWrite -1}
		a_buff_5_load_5 {Type I LastRead 0 FirstWrite -1}
		a_buff_6_load_5 {Type I LastRead 0 FirstWrite -1}
		a_buff_7_load_5 {Type I LastRead 0 FirstWrite -1}
		a_buff_load_6 {Type I LastRead 0 FirstWrite -1}
		a_buff_1_load_6 {Type I LastRead 0 FirstWrite -1}
		a_buff_2_load_6 {Type I LastRead 0 FirstWrite -1}
		a_buff_3_load_6 {Type I LastRead 0 FirstWrite -1}
		a_buff_4_load_6 {Type I LastRead 0 FirstWrite -1}
		a_buff_5_load_6 {Type I LastRead 0 FirstWrite -1}
		a_buff_6_load_6 {Type I LastRead 0 FirstWrite -1}
		a_buff_7_load_6 {Type I LastRead 0 FirstWrite -1}
		a_buff_load_7 {Type I LastRead 0 FirstWrite -1}
		a_buff_1_load_7 {Type I LastRead 0 FirstWrite -1}
		a_buff_2_load_7 {Type I LastRead 0 FirstWrite -1}
		a_buff_3_load_7 {Type I LastRead 0 FirstWrite -1}
		a_buff_4_load_7 {Type I LastRead 0 FirstWrite -1}
		a_buff_5_load_7 {Type I LastRead 0 FirstWrite -1}
		a_buff_6_load_7 {Type I LastRead 0 FirstWrite -1}
		a_buff_7_load_7 {Type I LastRead 0 FirstWrite -1}
		add_7_7116_out {Type O LastRead -1 FirstWrite 7}
		add_7_6115_out {Type O LastRead -1 FirstWrite 7}
		add_7_5114_out {Type O LastRead -1 FirstWrite 7}
		add_7_4113_out {Type O LastRead -1 FirstWrite 7}
		add_7_3112_out {Type O LastRead -1 FirstWrite 7}
		add_7_2111_out {Type O LastRead -1 FirstWrite 7}
		add_7_1110_out {Type O LastRead -1 FirstWrite 7}
		add_7109_out {Type O LastRead -1 FirstWrite 7}
		add_6_7108_out {Type O LastRead -1 FirstWrite 7}
		add_6_6107_out {Type O LastRead -1 FirstWrite 7}
		add_6_5106_out {Type O LastRead -1 FirstWrite 7}
		add_6_4105_out {Type O LastRead -1 FirstWrite 7}
		add_6_3104_out {Type O LastRead -1 FirstWrite 7}
		add_6_2103_out {Type O LastRead -1 FirstWrite 7}
		add_6_1102_out {Type O LastRead -1 FirstWrite 7}
		add_6101_out {Type O LastRead -1 FirstWrite 7}
		add_5_7100_out {Type O LastRead -1 FirstWrite 7}
		add_5_699_out {Type O LastRead -1 FirstWrite 7}
		add_5_598_out {Type O LastRead -1 FirstWrite 7}
		add_5_497_out {Type O LastRead -1 FirstWrite 7}
		add_5_396_out {Type O LastRead -1 FirstWrite 7}
		add_5_295_out {Type O LastRead -1 FirstWrite 7}
		add_5_194_out {Type O LastRead -1 FirstWrite 7}
		add_593_out {Type O LastRead -1 FirstWrite 7}
		add_4_792_out {Type O LastRead -1 FirstWrite 7}
		add_4_691_out {Type O LastRead -1 FirstWrite 7}
		add_4_590_out {Type O LastRead -1 FirstWrite 7}
		add_4_489_out {Type O LastRead -1 FirstWrite 7}
		add_4_388_out {Type O LastRead -1 FirstWrite 7}
		add_4_287_out {Type O LastRead -1 FirstWrite 7}
		add_4_186_out {Type O LastRead -1 FirstWrite 7}
		add_485_out {Type O LastRead -1 FirstWrite 7}
		add_3_784_out {Type O LastRead -1 FirstWrite 7}
		add_3_683_out {Type O LastRead -1 FirstWrite 7}
		add_3_582_out {Type O LastRead -1 FirstWrite 7}
		add_3_481_out {Type O LastRead -1 FirstWrite 7}
		add_3_380_out {Type O LastRead -1 FirstWrite 7}
		add_3_279_out {Type O LastRead -1 FirstWrite 7}
		add_3_178_out {Type O LastRead -1 FirstWrite 7}
		add_377_out {Type O LastRead -1 FirstWrite 7}
		add_2_776_out {Type O LastRead -1 FirstWrite 7}
		add_2_675_out {Type O LastRead -1 FirstWrite 7}
		add_2_574_out {Type O LastRead -1 FirstWrite 7}
		add_2_473_out {Type O LastRead -1 FirstWrite 7}
		add_2_372_out {Type O LastRead -1 FirstWrite 7}
		add_2_271_out {Type O LastRead -1 FirstWrite 7}
		add_2_170_out {Type O LastRead -1 FirstWrite 7}
		add_269_out {Type O LastRead -1 FirstWrite 7}
		add_1_768_out {Type O LastRead -1 FirstWrite 7}
		add_1_667_out {Type O LastRead -1 FirstWrite 7}
		add_1_566_out {Type O LastRead -1 FirstWrite 7}
		add_1_465_out {Type O LastRead -1 FirstWrite 7}
		add_1_364_out {Type O LastRead -1 FirstWrite 7}
		add_1_263_out {Type O LastRead -1 FirstWrite 7}
		add_1_162_out {Type O LastRead -1 FirstWrite 7}
		add_161_out {Type O LastRead -1 FirstWrite 7}
		add_75260_out {Type O LastRead -1 FirstWrite 7}
		add_64759_out {Type O LastRead -1 FirstWrite 7}
		add_54258_out {Type O LastRead -1 FirstWrite 7}
		add_43757_out {Type O LastRead -1 FirstWrite 7}
		add_33256_out {Type O LastRead -1 FirstWrite 7}
		add_22755_out {Type O LastRead -1 FirstWrite 7}
		add_12254_out {Type O LastRead -1 FirstWrite 7}
		p_out {Type O LastRead -1 FirstWrite 7}}
	gemm_Pipeline_5 {
		c_port {Type O LastRead -1 FirstWrite 1}
		sext_ln62 {Type I LastRead 0 FirstWrite -1}
		p_reload {Type I LastRead 0 FirstWrite -1}
		add_12254_reload {Type I LastRead 0 FirstWrite -1}
		add_22755_reload {Type I LastRead 0 FirstWrite -1}
		add_33256_reload {Type I LastRead 0 FirstWrite -1}
		add_43757_reload {Type I LastRead 0 FirstWrite -1}
		add_54258_reload {Type I LastRead 0 FirstWrite -1}
		add_64759_reload {Type I LastRead 0 FirstWrite -1}
		add_75260_reload {Type I LastRead 0 FirstWrite -1}
		add_161_reload {Type I LastRead 0 FirstWrite -1}
		add_1_162_reload {Type I LastRead 0 FirstWrite -1}
		add_1_263_reload {Type I LastRead 0 FirstWrite -1}
		add_1_364_reload {Type I LastRead 0 FirstWrite -1}
		add_1_465_reload {Type I LastRead 0 FirstWrite -1}
		add_1_566_reload {Type I LastRead 0 FirstWrite -1}
		add_1_667_reload {Type I LastRead 0 FirstWrite -1}
		add_1_768_reload {Type I LastRead 0 FirstWrite -1}
		add_269_reload {Type I LastRead 0 FirstWrite -1}
		add_2_170_reload {Type I LastRead 0 FirstWrite -1}
		add_2_271_reload {Type I LastRead 0 FirstWrite -1}
		add_2_372_reload {Type I LastRead 0 FirstWrite -1}
		add_2_473_reload {Type I LastRead 0 FirstWrite -1}
		add_2_574_reload {Type I LastRead 0 FirstWrite -1}
		add_2_675_reload {Type I LastRead 0 FirstWrite -1}
		add_2_776_reload {Type I LastRead 0 FirstWrite -1}
		add_377_reload {Type I LastRead 0 FirstWrite -1}
		add_3_178_reload {Type I LastRead 0 FirstWrite -1}
		add_3_279_reload {Type I LastRead 0 FirstWrite -1}
		add_3_380_reload {Type I LastRead 0 FirstWrite -1}
		add_3_481_reload {Type I LastRead 0 FirstWrite -1}
		add_3_582_reload {Type I LastRead 0 FirstWrite -1}
		add_3_683_reload {Type I LastRead 0 FirstWrite -1}
		add_3_784_reload {Type I LastRead 0 FirstWrite -1}
		add_485_reload {Type I LastRead 0 FirstWrite -1}
		add_4_186_reload {Type I LastRead 0 FirstWrite -1}
		add_4_287_reload {Type I LastRead 0 FirstWrite -1}
		add_4_388_reload {Type I LastRead 0 FirstWrite -1}
		add_4_489_reload {Type I LastRead 0 FirstWrite -1}
		add_4_590_reload {Type I LastRead 0 FirstWrite -1}
		add_4_691_reload {Type I LastRead 0 FirstWrite -1}
		add_4_792_reload {Type I LastRead 0 FirstWrite -1}
		add_593_reload {Type I LastRead 0 FirstWrite -1}
		add_5_194_reload {Type I LastRead 0 FirstWrite -1}
		add_5_295_reload {Type I LastRead 0 FirstWrite -1}
		add_5_396_reload {Type I LastRead 0 FirstWrite -1}
		add_5_497_reload {Type I LastRead 0 FirstWrite -1}
		add_5_598_reload {Type I LastRead 0 FirstWrite -1}
		add_5_699_reload {Type I LastRead 0 FirstWrite -1}
		add_5_7100_reload {Type I LastRead 0 FirstWrite -1}
		add_6101_reload {Type I LastRead 0 FirstWrite -1}
		add_6_1102_reload {Type I LastRead 0 FirstWrite -1}
		add_6_2103_reload {Type I LastRead 0 FirstWrite -1}
		add_6_3104_reload {Type I LastRead 0 FirstWrite -1}
		add_6_4105_reload {Type I LastRead 0 FirstWrite -1}
		add_6_5106_reload {Type I LastRead 0 FirstWrite -1}
		add_6_6107_reload {Type I LastRead 0 FirstWrite -1}
		add_6_7108_reload {Type I LastRead 0 FirstWrite -1}
		add_7109_reload {Type I LastRead 0 FirstWrite -1}
		add_7_1110_reload {Type I LastRead 0 FirstWrite -1}
		add_7_2111_reload {Type I LastRead 0 FirstWrite -1}
		add_7_3112_reload {Type I LastRead 0 FirstWrite -1}
		add_7_4113_reload {Type I LastRead 0 FirstWrite -1}
		add_7_5114_reload {Type I LastRead 0 FirstWrite -1}
		add_7_6115_reload {Type I LastRead 0 FirstWrite -1}
		add_7_7116_reload {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "188", "Max" : "188"}
	, {"Name" : "Interval", "Min" : "189", "Max" : "189"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_port { m_axi {  { m_axi_a_port_AWVALID VALID 1 1 }  { m_axi_a_port_AWREADY READY 0 1 }  { m_axi_a_port_AWADDR ADDR 1 64 }  { m_axi_a_port_AWID ID 1 1 }  { m_axi_a_port_AWLEN SIZE 1 8 }  { m_axi_a_port_AWSIZE BURST 1 3 }  { m_axi_a_port_AWBURST LOCK 1 2 }  { m_axi_a_port_AWLOCK CACHE 1 2 }  { m_axi_a_port_AWCACHE PROT 1 4 }  { m_axi_a_port_AWPROT QOS 1 3 }  { m_axi_a_port_AWQOS REGION 1 4 }  { m_axi_a_port_AWREGION USER 1 4 }  { m_axi_a_port_AWUSER DATA 1 1 }  { m_axi_a_port_WVALID VALID 1 1 }  { m_axi_a_port_WREADY READY 0 1 }  { m_axi_a_port_WDATA FIFONUM 1 32 }  { m_axi_a_port_WSTRB STRB 1 4 }  { m_axi_a_port_WLAST LAST 1 1 }  { m_axi_a_port_WID ID 1 1 }  { m_axi_a_port_WUSER DATA 1 1 }  { m_axi_a_port_ARVALID VALID 1 1 }  { m_axi_a_port_ARREADY READY 0 1 }  { m_axi_a_port_ARADDR ADDR 1 64 }  { m_axi_a_port_ARID ID 1 1 }  { m_axi_a_port_ARLEN SIZE 1 8 }  { m_axi_a_port_ARSIZE BURST 1 3 }  { m_axi_a_port_ARBURST LOCK 1 2 }  { m_axi_a_port_ARLOCK CACHE 1 2 }  { m_axi_a_port_ARCACHE PROT 1 4 }  { m_axi_a_port_ARPROT QOS 1 3 }  { m_axi_a_port_ARQOS REGION 1 4 }  { m_axi_a_port_ARREGION USER 1 4 }  { m_axi_a_port_ARUSER DATA 1 1 }  { m_axi_a_port_RVALID VALID 0 1 }  { m_axi_a_port_RREADY READY 1 1 }  { m_axi_a_port_RDATA FIFONUM 0 32 }  { m_axi_a_port_RLAST LAST 0 1 }  { m_axi_a_port_RID ID 0 1 }  { m_axi_a_port_RUSER DATA 0 1 }  { m_axi_a_port_RRESP RESP 0 2 }  { m_axi_a_port_BVALID VALID 0 1 }  { m_axi_a_port_BREADY READY 1 1 }  { m_axi_a_port_BRESP RESP 0 2 }  { m_axi_a_port_BID ID 0 1 }  { m_axi_a_port_BUSER DATA 0 1 } } }
	b_port { m_axi {  { m_axi_b_port_AWVALID VALID 1 1 }  { m_axi_b_port_AWREADY READY 0 1 }  { m_axi_b_port_AWADDR ADDR 1 64 }  { m_axi_b_port_AWID ID 1 1 }  { m_axi_b_port_AWLEN SIZE 1 8 }  { m_axi_b_port_AWSIZE BURST 1 3 }  { m_axi_b_port_AWBURST LOCK 1 2 }  { m_axi_b_port_AWLOCK CACHE 1 2 }  { m_axi_b_port_AWCACHE PROT 1 4 }  { m_axi_b_port_AWPROT QOS 1 3 }  { m_axi_b_port_AWQOS REGION 1 4 }  { m_axi_b_port_AWREGION USER 1 4 }  { m_axi_b_port_AWUSER DATA 1 1 }  { m_axi_b_port_WVALID VALID 1 1 }  { m_axi_b_port_WREADY READY 0 1 }  { m_axi_b_port_WDATA FIFONUM 1 32 }  { m_axi_b_port_WSTRB STRB 1 4 }  { m_axi_b_port_WLAST LAST 1 1 }  { m_axi_b_port_WID ID 1 1 }  { m_axi_b_port_WUSER DATA 1 1 }  { m_axi_b_port_ARVALID VALID 1 1 }  { m_axi_b_port_ARREADY READY 0 1 }  { m_axi_b_port_ARADDR ADDR 1 64 }  { m_axi_b_port_ARID ID 1 1 }  { m_axi_b_port_ARLEN SIZE 1 8 }  { m_axi_b_port_ARSIZE BURST 1 3 }  { m_axi_b_port_ARBURST LOCK 1 2 }  { m_axi_b_port_ARLOCK CACHE 1 2 }  { m_axi_b_port_ARCACHE PROT 1 4 }  { m_axi_b_port_ARPROT QOS 1 3 }  { m_axi_b_port_ARQOS REGION 1 4 }  { m_axi_b_port_ARREGION USER 1 4 }  { m_axi_b_port_ARUSER DATA 1 1 }  { m_axi_b_port_RVALID VALID 0 1 }  { m_axi_b_port_RREADY READY 1 1 }  { m_axi_b_port_RDATA FIFONUM 0 32 }  { m_axi_b_port_RLAST LAST 0 1 }  { m_axi_b_port_RID ID 0 1 }  { m_axi_b_port_RUSER DATA 0 1 }  { m_axi_b_port_RRESP RESP 0 2 }  { m_axi_b_port_BVALID VALID 0 1 }  { m_axi_b_port_BREADY READY 1 1 }  { m_axi_b_port_BRESP RESP 0 2 }  { m_axi_b_port_BID ID 0 1 }  { m_axi_b_port_BUSER DATA 0 1 } } }
	c_port { m_axi {  { m_axi_c_port_AWVALID VALID 1 1 }  { m_axi_c_port_AWREADY READY 0 1 }  { m_axi_c_port_AWADDR ADDR 1 64 }  { m_axi_c_port_AWID ID 1 1 }  { m_axi_c_port_AWLEN SIZE 1 8 }  { m_axi_c_port_AWSIZE BURST 1 3 }  { m_axi_c_port_AWBURST LOCK 1 2 }  { m_axi_c_port_AWLOCK CACHE 1 2 }  { m_axi_c_port_AWCACHE PROT 1 4 }  { m_axi_c_port_AWPROT QOS 1 3 }  { m_axi_c_port_AWQOS REGION 1 4 }  { m_axi_c_port_AWREGION USER 1 4 }  { m_axi_c_port_AWUSER DATA 1 1 }  { m_axi_c_port_WVALID VALID 1 1 }  { m_axi_c_port_WREADY READY 0 1 }  { m_axi_c_port_WDATA FIFONUM 1 32 }  { m_axi_c_port_WSTRB STRB 1 4 }  { m_axi_c_port_WLAST LAST 1 1 }  { m_axi_c_port_WID ID 1 1 }  { m_axi_c_port_WUSER DATA 1 1 }  { m_axi_c_port_ARVALID VALID 1 1 }  { m_axi_c_port_ARREADY READY 0 1 }  { m_axi_c_port_ARADDR ADDR 1 64 }  { m_axi_c_port_ARID ID 1 1 }  { m_axi_c_port_ARLEN SIZE 1 8 }  { m_axi_c_port_ARSIZE BURST 1 3 }  { m_axi_c_port_ARBURST LOCK 1 2 }  { m_axi_c_port_ARLOCK CACHE 1 2 }  { m_axi_c_port_ARCACHE PROT 1 4 }  { m_axi_c_port_ARPROT QOS 1 3 }  { m_axi_c_port_ARQOS REGION 1 4 }  { m_axi_c_port_ARREGION USER 1 4 }  { m_axi_c_port_ARUSER DATA 1 1 }  { m_axi_c_port_RVALID VALID 0 1 }  { m_axi_c_port_RREADY READY 1 1 }  { m_axi_c_port_RDATA FIFONUM 0 32 }  { m_axi_c_port_RLAST LAST 0 1 }  { m_axi_c_port_RID ID 0 1 }  { m_axi_c_port_RUSER DATA 0 1 }  { m_axi_c_port_RRESP RESP 0 2 }  { m_axi_c_port_BVALID VALID 0 1 }  { m_axi_c_port_BREADY READY 1 1 }  { m_axi_c_port_BRESP RESP 0 2 }  { m_axi_c_port_BID ID 0 1 }  { m_axi_c_port_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict a_port {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict b_port {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict c_port {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ a_port 1 }
	{ b_port 1 }
	{ c_port 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ a_port 1 }
	{ b_port 1 }
	{ c_port 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
