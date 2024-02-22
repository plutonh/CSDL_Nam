set moduleName mm
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
set C_modelName {mm}
set C_modelType { void 0 }
set C_modelArgList {
	{ A_port int 32 regular {axi_master 0}  }
	{ B_port int 32 regular {axi_master 0}  }
	{ AB_port int 32 regular {axi_master 1}  }
	{ A int 64 regular {axi_slave 0}  }
	{ B int 64 regular {axi_slave 0}  }
	{ AB int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_port", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "A","offset": { "type": "dynamic","port_name": "A","bundle": "CONTROL_BUS"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "B_port", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B","offset": { "type": "dynamic","port_name": "B","bundle": "CONTROL_BUS"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "AB_port", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "AB","offset": { "type": "dynamic","port_name": "AB","bundle": "CONTROL_BUS"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "A", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "B", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "AB", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_A_port_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_A_port_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_A_port_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_A_port_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_A_port_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_A_port_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_A_port_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_A_port_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_A_port_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_A_port_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_A_port_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_A_port_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_A_port_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_A_port_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_A_port_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_A_port_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_A_port_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_A_port_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_A_port_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_A_port_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_A_port_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_A_port_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_A_port_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_A_port_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_A_port_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_A_port_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_A_port_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_A_port_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_A_port_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_A_port_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_A_port_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_A_port_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_A_port_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_A_port_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_A_port_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_A_port_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_A_port_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_A_port_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_A_port_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_A_port_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_A_port_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_A_port_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_A_port_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_A_port_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_A_port_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_B_port_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_B_port_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_B_port_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_B_port_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_B_port_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_B_port_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_B_port_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_B_port_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_B_port_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_B_port_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_B_port_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_B_port_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_B_port_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_B_port_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_B_port_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_B_port_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_B_port_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_B_port_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_B_port_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_B_port_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_B_port_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_B_port_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_B_port_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_B_port_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_B_port_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_B_port_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_B_port_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_B_port_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_B_port_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_B_port_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_B_port_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_B_port_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_B_port_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_B_port_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_B_port_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_B_port_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_B_port_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_B_port_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_B_port_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_B_port_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_B_port_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_B_port_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_B_port_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_B_port_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_B_port_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_AB_port_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_AB_port_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_AB_port_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_AB_port_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_AB_port_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_AB_port_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_AB_port_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_AB_port_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_AB_port_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_AB_port_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_AB_port_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_AB_port_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_AB_port_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_AB_port_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_AB_port_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_AB_port_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_AB_port_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_AB_port_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_AB_port_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_AB_port_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_AB_port_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_AB_port_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_AB_port_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_AB_port_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_AB_port_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_AB_port_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_AB_port_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_AB_port_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_AB_port_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_AB_port_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_AB_port_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_AB_port_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_AB_port_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_AB_port_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_AB_port_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_AB_port_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_AB_port_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_AB_port_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_AB_port_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_AB_port_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_AB_port_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_AB_port_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_AB_port_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_AB_port_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_AB_port_BUSER sc_in sc_lv 1 signal 2 } 
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
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"mm","role":"start","value":"0","valid_bit":"0"},{"name":"mm","role":"continue","value":"0","valid_bit":"4"},{"name":"mm","role":"auto_start","value":"0","valid_bit":"7"},{"name":"A","role":"data","value":"16"},{"name":"B","role":"data","value":"28"},{"name":"AB","role":"data","value":"40"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"mm","role":"start","value":"0","valid_bit":"0"},{"name":"mm","role":"done","value":"0","valid_bit":"1"},{"name":"mm","role":"idle","value":"0","valid_bit":"2"},{"name":"mm","role":"ready","value":"0","valid_bit":"3"},{"name":"mm","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_A_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_A_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_A_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_A_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "AWID" }} , 
 	{ "name": "m_axi_A_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_port", "role": "AWLEN" }} , 
 	{ "name": "m_axi_A_port_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_port", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_A_port_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_port", "role": "AWBURST" }} , 
 	{ "name": "m_axi_A_port_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_port", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_A_port_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_port", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_A_port_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_port", "role": "AWPROT" }} , 
 	{ "name": "m_axi_A_port_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_port", "role": "AWQOS" }} , 
 	{ "name": "m_axi_A_port_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_port", "role": "AWREGION" }} , 
 	{ "name": "m_axi_A_port_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "AWUSER" }} , 
 	{ "name": "m_axi_A_port_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "WVALID" }} , 
 	{ "name": "m_axi_A_port_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "WREADY" }} , 
 	{ "name": "m_axi_A_port_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_port", "role": "WDATA" }} , 
 	{ "name": "m_axi_A_port_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_port", "role": "WSTRB" }} , 
 	{ "name": "m_axi_A_port_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "WLAST" }} , 
 	{ "name": "m_axi_A_port_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "WID" }} , 
 	{ "name": "m_axi_A_port_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "WUSER" }} , 
 	{ "name": "m_axi_A_port_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "ARVALID" }} , 
 	{ "name": "m_axi_A_port_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "ARREADY" }} , 
 	{ "name": "m_axi_A_port_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "A_port", "role": "ARADDR" }} , 
 	{ "name": "m_axi_A_port_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "ARID" }} , 
 	{ "name": "m_axi_A_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "A_port", "role": "ARLEN" }} , 
 	{ "name": "m_axi_A_port_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_port", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_A_port_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_port", "role": "ARBURST" }} , 
 	{ "name": "m_axi_A_port_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_port", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_A_port_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_port", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_A_port_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_port", "role": "ARPROT" }} , 
 	{ "name": "m_axi_A_port_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_port", "role": "ARQOS" }} , 
 	{ "name": "m_axi_A_port_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_port", "role": "ARREGION" }} , 
 	{ "name": "m_axi_A_port_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "ARUSER" }} , 
 	{ "name": "m_axi_A_port_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "RVALID" }} , 
 	{ "name": "m_axi_A_port_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "RREADY" }} , 
 	{ "name": "m_axi_A_port_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_port", "role": "RDATA" }} , 
 	{ "name": "m_axi_A_port_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "RLAST" }} , 
 	{ "name": "m_axi_A_port_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "RID" }} , 
 	{ "name": "m_axi_A_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_A_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_A_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_A_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_A_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "A_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_A_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "BID" }} , 
 	{ "name": "m_axi_A_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_port", "role": "BUSER" }} , 
 	{ "name": "m_axi_B_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_B_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_B_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_B_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "AWID" }} , 
 	{ "name": "m_axi_B_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B_port", "role": "AWLEN" }} , 
 	{ "name": "m_axi_B_port_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_port", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_B_port_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_port", "role": "AWBURST" }} , 
 	{ "name": "m_axi_B_port_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_port", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_B_port_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_port", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_B_port_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_port", "role": "AWPROT" }} , 
 	{ "name": "m_axi_B_port_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_port", "role": "AWQOS" }} , 
 	{ "name": "m_axi_B_port_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_port", "role": "AWREGION" }} , 
 	{ "name": "m_axi_B_port_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "AWUSER" }} , 
 	{ "name": "m_axi_B_port_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "WVALID" }} , 
 	{ "name": "m_axi_B_port_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "WREADY" }} , 
 	{ "name": "m_axi_B_port_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_port", "role": "WDATA" }} , 
 	{ "name": "m_axi_B_port_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_port", "role": "WSTRB" }} , 
 	{ "name": "m_axi_B_port_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "WLAST" }} , 
 	{ "name": "m_axi_B_port_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "WID" }} , 
 	{ "name": "m_axi_B_port_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "WUSER" }} , 
 	{ "name": "m_axi_B_port_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "ARVALID" }} , 
 	{ "name": "m_axi_B_port_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "ARREADY" }} , 
 	{ "name": "m_axi_B_port_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_port", "role": "ARADDR" }} , 
 	{ "name": "m_axi_B_port_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "ARID" }} , 
 	{ "name": "m_axi_B_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "B_port", "role": "ARLEN" }} , 
 	{ "name": "m_axi_B_port_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_port", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_B_port_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_port", "role": "ARBURST" }} , 
 	{ "name": "m_axi_B_port_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_port", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_B_port_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_port", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_B_port_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "B_port", "role": "ARPROT" }} , 
 	{ "name": "m_axi_B_port_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_port", "role": "ARQOS" }} , 
 	{ "name": "m_axi_B_port_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_port", "role": "ARREGION" }} , 
 	{ "name": "m_axi_B_port_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "ARUSER" }} , 
 	{ "name": "m_axi_B_port_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "RVALID" }} , 
 	{ "name": "m_axi_B_port_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "RREADY" }} , 
 	{ "name": "m_axi_B_port_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_port", "role": "RDATA" }} , 
 	{ "name": "m_axi_B_port_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "RLAST" }} , 
 	{ "name": "m_axi_B_port_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "RID" }} , 
 	{ "name": "m_axi_B_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_B_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_B_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_B_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_B_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_B_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "BID" }} , 
 	{ "name": "m_axi_B_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "BUSER" }} , 
 	{ "name": "m_axi_AB_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_AB_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_AB_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "AB_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_AB_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "AWID" }} , 
 	{ "name": "m_axi_AB_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AB_port", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_AB_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "AB_port", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_AB_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_AB_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AB_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_AB_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_AB_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_AB_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AB_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_AB_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "BID" }} , 
 	{ "name": "m_axi_AB_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_port", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "mm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "528", "EstimateLatencyMax" : "528",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_port", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_port_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "A_port_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "B_port", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "B_port_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "B_port_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "AB_port", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AB_port_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "AB_port_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "AB_port_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "row_col", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "PostState" : ["ap_ST_fsm_state25"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AB_port_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_port_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_port_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U2", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U3", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U4", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U5", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U6", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U7", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mm {
		A_port {Type I LastRead 16 FirstWrite -1}
		B_port {Type I LastRead 16 FirstWrite -1}
		AB_port {Type O LastRead 19 FirstWrite 18}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		AB {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "528", "Max" : "528"}
	, {"Name" : "Interval", "Min" : "529", "Max" : "529"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A_port { m_axi {  { m_axi_A_port_AWVALID VALID 1 1 }  { m_axi_A_port_AWREADY READY 0 1 }  { m_axi_A_port_AWADDR ADDR 1 64 }  { m_axi_A_port_AWID ID 1 1 }  { m_axi_A_port_AWLEN SIZE 1 8 }  { m_axi_A_port_AWSIZE BURST 1 3 }  { m_axi_A_port_AWBURST LOCK 1 2 }  { m_axi_A_port_AWLOCK CACHE 1 2 }  { m_axi_A_port_AWCACHE PROT 1 4 }  { m_axi_A_port_AWPROT QOS 1 3 }  { m_axi_A_port_AWQOS REGION 1 4 }  { m_axi_A_port_AWREGION USER 1 4 }  { m_axi_A_port_AWUSER DATA 1 1 }  { m_axi_A_port_WVALID VALID 1 1 }  { m_axi_A_port_WREADY READY 0 1 }  { m_axi_A_port_WDATA FIFONUM 1 32 }  { m_axi_A_port_WSTRB STRB 1 4 }  { m_axi_A_port_WLAST LAST 1 1 }  { m_axi_A_port_WID ID 1 1 }  { m_axi_A_port_WUSER DATA 1 1 }  { m_axi_A_port_ARVALID VALID 1 1 }  { m_axi_A_port_ARREADY READY 0 1 }  { m_axi_A_port_ARADDR ADDR 1 64 }  { m_axi_A_port_ARID ID 1 1 }  { m_axi_A_port_ARLEN SIZE 1 8 }  { m_axi_A_port_ARSIZE BURST 1 3 }  { m_axi_A_port_ARBURST LOCK 1 2 }  { m_axi_A_port_ARLOCK CACHE 1 2 }  { m_axi_A_port_ARCACHE PROT 1 4 }  { m_axi_A_port_ARPROT QOS 1 3 }  { m_axi_A_port_ARQOS REGION 1 4 }  { m_axi_A_port_ARREGION USER 1 4 }  { m_axi_A_port_ARUSER DATA 1 1 }  { m_axi_A_port_RVALID VALID 0 1 }  { m_axi_A_port_RREADY READY 1 1 }  { m_axi_A_port_RDATA FIFONUM 0 32 }  { m_axi_A_port_RLAST LAST 0 1 }  { m_axi_A_port_RID ID 0 1 }  { m_axi_A_port_RUSER DATA 0 1 }  { m_axi_A_port_RRESP RESP 0 2 }  { m_axi_A_port_BVALID VALID 0 1 }  { m_axi_A_port_BREADY READY 1 1 }  { m_axi_A_port_BRESP RESP 0 2 }  { m_axi_A_port_BID ID 0 1 }  { m_axi_A_port_BUSER DATA 0 1 } } }
	B_port { m_axi {  { m_axi_B_port_AWVALID VALID 1 1 }  { m_axi_B_port_AWREADY READY 0 1 }  { m_axi_B_port_AWADDR ADDR 1 64 }  { m_axi_B_port_AWID ID 1 1 }  { m_axi_B_port_AWLEN SIZE 1 8 }  { m_axi_B_port_AWSIZE BURST 1 3 }  { m_axi_B_port_AWBURST LOCK 1 2 }  { m_axi_B_port_AWLOCK CACHE 1 2 }  { m_axi_B_port_AWCACHE PROT 1 4 }  { m_axi_B_port_AWPROT QOS 1 3 }  { m_axi_B_port_AWQOS REGION 1 4 }  { m_axi_B_port_AWREGION USER 1 4 }  { m_axi_B_port_AWUSER DATA 1 1 }  { m_axi_B_port_WVALID VALID 1 1 }  { m_axi_B_port_WREADY READY 0 1 }  { m_axi_B_port_WDATA FIFONUM 1 32 }  { m_axi_B_port_WSTRB STRB 1 4 }  { m_axi_B_port_WLAST LAST 1 1 }  { m_axi_B_port_WID ID 1 1 }  { m_axi_B_port_WUSER DATA 1 1 }  { m_axi_B_port_ARVALID VALID 1 1 }  { m_axi_B_port_ARREADY READY 0 1 }  { m_axi_B_port_ARADDR ADDR 1 64 }  { m_axi_B_port_ARID ID 1 1 }  { m_axi_B_port_ARLEN SIZE 1 8 }  { m_axi_B_port_ARSIZE BURST 1 3 }  { m_axi_B_port_ARBURST LOCK 1 2 }  { m_axi_B_port_ARLOCK CACHE 1 2 }  { m_axi_B_port_ARCACHE PROT 1 4 }  { m_axi_B_port_ARPROT QOS 1 3 }  { m_axi_B_port_ARQOS REGION 1 4 }  { m_axi_B_port_ARREGION USER 1 4 }  { m_axi_B_port_ARUSER DATA 1 1 }  { m_axi_B_port_RVALID VALID 0 1 }  { m_axi_B_port_RREADY READY 1 1 }  { m_axi_B_port_RDATA FIFONUM 0 32 }  { m_axi_B_port_RLAST LAST 0 1 }  { m_axi_B_port_RID ID 0 1 }  { m_axi_B_port_RUSER DATA 0 1 }  { m_axi_B_port_RRESP RESP 0 2 }  { m_axi_B_port_BVALID VALID 0 1 }  { m_axi_B_port_BREADY READY 1 1 }  { m_axi_B_port_BRESP RESP 0 2 }  { m_axi_B_port_BID ID 0 1 }  { m_axi_B_port_BUSER DATA 0 1 } } }
	AB_port { m_axi {  { m_axi_AB_port_AWVALID VALID 1 1 }  { m_axi_AB_port_AWREADY READY 0 1 }  { m_axi_AB_port_AWADDR ADDR 1 64 }  { m_axi_AB_port_AWID ID 1 1 }  { m_axi_AB_port_AWLEN SIZE 1 8 }  { m_axi_AB_port_AWSIZE BURST 1 3 }  { m_axi_AB_port_AWBURST LOCK 1 2 }  { m_axi_AB_port_AWLOCK CACHE 1 2 }  { m_axi_AB_port_AWCACHE PROT 1 4 }  { m_axi_AB_port_AWPROT QOS 1 3 }  { m_axi_AB_port_AWQOS REGION 1 4 }  { m_axi_AB_port_AWREGION USER 1 4 }  { m_axi_AB_port_AWUSER DATA 1 1 }  { m_axi_AB_port_WVALID VALID 1 1 }  { m_axi_AB_port_WREADY READY 0 1 }  { m_axi_AB_port_WDATA FIFONUM 1 32 }  { m_axi_AB_port_WSTRB STRB 1 4 }  { m_axi_AB_port_WLAST LAST 1 1 }  { m_axi_AB_port_WID ID 1 1 }  { m_axi_AB_port_WUSER DATA 1 1 }  { m_axi_AB_port_ARVALID VALID 1 1 }  { m_axi_AB_port_ARREADY READY 0 1 }  { m_axi_AB_port_ARADDR ADDR 1 64 }  { m_axi_AB_port_ARID ID 1 1 }  { m_axi_AB_port_ARLEN SIZE 1 8 }  { m_axi_AB_port_ARSIZE BURST 1 3 }  { m_axi_AB_port_ARBURST LOCK 1 2 }  { m_axi_AB_port_ARLOCK CACHE 1 2 }  { m_axi_AB_port_ARCACHE PROT 1 4 }  { m_axi_AB_port_ARPROT QOS 1 3 }  { m_axi_AB_port_ARQOS REGION 1 4 }  { m_axi_AB_port_ARREGION USER 1 4 }  { m_axi_AB_port_ARUSER DATA 1 1 }  { m_axi_AB_port_RVALID VALID 0 1 }  { m_axi_AB_port_RREADY READY 1 1 }  { m_axi_AB_port_RDATA FIFONUM 0 32 }  { m_axi_AB_port_RLAST LAST 0 1 }  { m_axi_AB_port_RID ID 0 1 }  { m_axi_AB_port_RUSER DATA 0 1 }  { m_axi_AB_port_RRESP RESP 0 2 }  { m_axi_AB_port_BVALID VALID 0 1 }  { m_axi_AB_port_BREADY READY 1 1 }  { m_axi_AB_port_BRESP RESP 0 2 }  { m_axi_AB_port_BID ID 0 1 }  { m_axi_AB_port_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict A_port {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict B_port {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict AB_port {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ A_port 1 }
	{ B_port 1 }
	{ AB_port 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ A_port 1 }
	{ B_port 1 }
	{ AB_port 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
