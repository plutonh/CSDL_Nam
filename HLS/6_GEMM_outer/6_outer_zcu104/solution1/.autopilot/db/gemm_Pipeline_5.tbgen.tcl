set moduleName gemm_Pipeline_5
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
set C_modelName {gemm_Pipeline_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ c_port int 32 regular {axi_master 1}  }
	{ sext_ln62 int 62 regular  }
	{ p_reload float 32 regular  }
	{ add_12254_reload float 32 regular  }
	{ add_22755_reload float 32 regular  }
	{ add_33256_reload float 32 regular  }
	{ add_43757_reload float 32 regular  }
	{ add_54258_reload float 32 regular  }
	{ add_64759_reload float 32 regular  }
	{ add_75260_reload float 32 regular  }
	{ add_161_reload float 32 regular  }
	{ add_1_162_reload float 32 regular  }
	{ add_1_263_reload float 32 regular  }
	{ add_1_364_reload float 32 regular  }
	{ add_1_465_reload float 32 regular  }
	{ add_1_566_reload float 32 regular  }
	{ add_1_667_reload float 32 regular  }
	{ add_1_768_reload float 32 regular  }
	{ add_269_reload float 32 regular  }
	{ add_2_170_reload float 32 regular  }
	{ add_2_271_reload float 32 regular  }
	{ add_2_372_reload float 32 regular  }
	{ add_2_473_reload float 32 regular  }
	{ add_2_574_reload float 32 regular  }
	{ add_2_675_reload float 32 regular  }
	{ add_2_776_reload float 32 regular  }
	{ add_377_reload float 32 regular  }
	{ add_3_178_reload float 32 regular  }
	{ add_3_279_reload float 32 regular  }
	{ add_3_380_reload float 32 regular  }
	{ add_3_481_reload float 32 regular  }
	{ add_3_582_reload float 32 regular  }
	{ add_3_683_reload float 32 regular  }
	{ add_3_784_reload float 32 regular  }
	{ add_485_reload float 32 regular  }
	{ add_4_186_reload float 32 regular  }
	{ add_4_287_reload float 32 regular  }
	{ add_4_388_reload float 32 regular  }
	{ add_4_489_reload float 32 regular  }
	{ add_4_590_reload float 32 regular  }
	{ add_4_691_reload float 32 regular  }
	{ add_4_792_reload float 32 regular  }
	{ add_593_reload float 32 regular  }
	{ add_5_194_reload float 32 regular  }
	{ add_5_295_reload float 32 regular  }
	{ add_5_396_reload float 32 regular  }
	{ add_5_497_reload float 32 regular  }
	{ add_5_598_reload float 32 regular  }
	{ add_5_699_reload float 32 regular  }
	{ add_5_7100_reload float 32 regular  }
	{ add_6101_reload float 32 regular  }
	{ add_6_1102_reload float 32 regular  }
	{ add_6_2103_reload float 32 regular  }
	{ add_6_3104_reload float 32 regular  }
	{ add_6_4105_reload float 32 regular  }
	{ add_6_5106_reload float 32 regular  }
	{ add_6_6107_reload float 32 regular  }
	{ add_6_7108_reload float 32 regular  }
	{ add_7109_reload float 32 regular  }
	{ add_7_1110_reload float 32 regular  }
	{ add_7_2111_reload float 32 regular  }
	{ add_7_3112_reload float 32 regular  }
	{ add_7_4113_reload float 32 regular  }
	{ add_7_5114_reload float 32 regular  }
	{ add_7_6115_reload float 32 regular  }
	{ add_7_7116_reload float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_port", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "c","offset": { "type": "dynamic","port_name": "c","bundle": "CONTROL_BUS"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln62", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "p_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_12254_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_22755_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_33256_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_43757_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_54258_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_64759_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_75260_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_161_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_1_162_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_1_263_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_1_364_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_1_465_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_1_566_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_1_667_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_1_768_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_269_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_2_170_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_2_271_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_2_372_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_2_473_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_2_574_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_2_675_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_2_776_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_377_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_3_178_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_3_279_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_3_380_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_3_481_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_3_582_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_3_683_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_3_784_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_485_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_4_186_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_4_287_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_4_388_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_4_489_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_4_590_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_4_691_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_4_792_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_593_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_5_194_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_5_295_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_5_396_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_5_497_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_5_598_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_5_699_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_5_7100_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_6101_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_6_1102_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_6_2103_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_6_3104_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_6_4105_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_6_5106_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_6_6107_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_6_7108_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_7109_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_7_1110_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_7_2111_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_7_3112_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_7_4113_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_7_5114_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_7_6115_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add_7_7116_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 117
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_c_port_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_c_port_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_c_port_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_c_port_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_c_port_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_c_port_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_c_port_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_c_port_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_c_port_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_c_port_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_c_port_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_c_port_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_c_port_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_c_port_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_c_port_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_c_port_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_c_port_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_c_port_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_c_port_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_c_port_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_c_port_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_c_port_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_c_port_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_c_port_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_c_port_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_c_port_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_c_port_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_c_port_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_c_port_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_c_port_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_c_port_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_c_port_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_c_port_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_c_port_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_c_port_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_c_port_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_c_port_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_c_port_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_c_port_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_c_port_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_c_port_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_c_port_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_c_port_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_c_port_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_c_port_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_c_port_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln62 sc_in sc_lv 62 signal 1 } 
	{ p_reload sc_in sc_lv 32 signal 2 } 
	{ add_12254_reload sc_in sc_lv 32 signal 3 } 
	{ add_22755_reload sc_in sc_lv 32 signal 4 } 
	{ add_33256_reload sc_in sc_lv 32 signal 5 } 
	{ add_43757_reload sc_in sc_lv 32 signal 6 } 
	{ add_54258_reload sc_in sc_lv 32 signal 7 } 
	{ add_64759_reload sc_in sc_lv 32 signal 8 } 
	{ add_75260_reload sc_in sc_lv 32 signal 9 } 
	{ add_161_reload sc_in sc_lv 32 signal 10 } 
	{ add_1_162_reload sc_in sc_lv 32 signal 11 } 
	{ add_1_263_reload sc_in sc_lv 32 signal 12 } 
	{ add_1_364_reload sc_in sc_lv 32 signal 13 } 
	{ add_1_465_reload sc_in sc_lv 32 signal 14 } 
	{ add_1_566_reload sc_in sc_lv 32 signal 15 } 
	{ add_1_667_reload sc_in sc_lv 32 signal 16 } 
	{ add_1_768_reload sc_in sc_lv 32 signal 17 } 
	{ add_269_reload sc_in sc_lv 32 signal 18 } 
	{ add_2_170_reload sc_in sc_lv 32 signal 19 } 
	{ add_2_271_reload sc_in sc_lv 32 signal 20 } 
	{ add_2_372_reload sc_in sc_lv 32 signal 21 } 
	{ add_2_473_reload sc_in sc_lv 32 signal 22 } 
	{ add_2_574_reload sc_in sc_lv 32 signal 23 } 
	{ add_2_675_reload sc_in sc_lv 32 signal 24 } 
	{ add_2_776_reload sc_in sc_lv 32 signal 25 } 
	{ add_377_reload sc_in sc_lv 32 signal 26 } 
	{ add_3_178_reload sc_in sc_lv 32 signal 27 } 
	{ add_3_279_reload sc_in sc_lv 32 signal 28 } 
	{ add_3_380_reload sc_in sc_lv 32 signal 29 } 
	{ add_3_481_reload sc_in sc_lv 32 signal 30 } 
	{ add_3_582_reload sc_in sc_lv 32 signal 31 } 
	{ add_3_683_reload sc_in sc_lv 32 signal 32 } 
	{ add_3_784_reload sc_in sc_lv 32 signal 33 } 
	{ add_485_reload sc_in sc_lv 32 signal 34 } 
	{ add_4_186_reload sc_in sc_lv 32 signal 35 } 
	{ add_4_287_reload sc_in sc_lv 32 signal 36 } 
	{ add_4_388_reload sc_in sc_lv 32 signal 37 } 
	{ add_4_489_reload sc_in sc_lv 32 signal 38 } 
	{ add_4_590_reload sc_in sc_lv 32 signal 39 } 
	{ add_4_691_reload sc_in sc_lv 32 signal 40 } 
	{ add_4_792_reload sc_in sc_lv 32 signal 41 } 
	{ add_593_reload sc_in sc_lv 32 signal 42 } 
	{ add_5_194_reload sc_in sc_lv 32 signal 43 } 
	{ add_5_295_reload sc_in sc_lv 32 signal 44 } 
	{ add_5_396_reload sc_in sc_lv 32 signal 45 } 
	{ add_5_497_reload sc_in sc_lv 32 signal 46 } 
	{ add_5_598_reload sc_in sc_lv 32 signal 47 } 
	{ add_5_699_reload sc_in sc_lv 32 signal 48 } 
	{ add_5_7100_reload sc_in sc_lv 32 signal 49 } 
	{ add_6101_reload sc_in sc_lv 32 signal 50 } 
	{ add_6_1102_reload sc_in sc_lv 32 signal 51 } 
	{ add_6_2103_reload sc_in sc_lv 32 signal 52 } 
	{ add_6_3104_reload sc_in sc_lv 32 signal 53 } 
	{ add_6_4105_reload sc_in sc_lv 32 signal 54 } 
	{ add_6_5106_reload sc_in sc_lv 32 signal 55 } 
	{ add_6_6107_reload sc_in sc_lv 32 signal 56 } 
	{ add_6_7108_reload sc_in sc_lv 32 signal 57 } 
	{ add_7109_reload sc_in sc_lv 32 signal 58 } 
	{ add_7_1110_reload sc_in sc_lv 32 signal 59 } 
	{ add_7_2111_reload sc_in sc_lv 32 signal 60 } 
	{ add_7_3112_reload sc_in sc_lv 32 signal 61 } 
	{ add_7_4113_reload sc_in sc_lv 32 signal 62 } 
	{ add_7_5114_reload sc_in sc_lv 32 signal 63 } 
	{ add_7_6115_reload sc_in sc_lv 32 signal 64 } 
	{ add_7_7116_reload sc_in sc_lv 32 signal 65 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_c_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_c_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_c_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_c_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "AWID" }} , 
 	{ "name": "m_axi_c_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_port", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_c_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_port", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_c_port_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "c_port", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_c_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_c_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_c_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_c_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_c_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "c_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_c_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "BID" }} , 
 	{ "name": "m_axi_c_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "c_port", "role": "BUSER" }} , 
 	{ "name": "sext_ln62", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln62", "role": "default" }} , 
 	{ "name": "p_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_reload", "role": "default" }} , 
 	{ "name": "add_12254_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_12254_reload", "role": "default" }} , 
 	{ "name": "add_22755_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_22755_reload", "role": "default" }} , 
 	{ "name": "add_33256_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_33256_reload", "role": "default" }} , 
 	{ "name": "add_43757_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_43757_reload", "role": "default" }} , 
 	{ "name": "add_54258_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_54258_reload", "role": "default" }} , 
 	{ "name": "add_64759_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_64759_reload", "role": "default" }} , 
 	{ "name": "add_75260_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_75260_reload", "role": "default" }} , 
 	{ "name": "add_161_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_161_reload", "role": "default" }} , 
 	{ "name": "add_1_162_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_1_162_reload", "role": "default" }} , 
 	{ "name": "add_1_263_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_1_263_reload", "role": "default" }} , 
 	{ "name": "add_1_364_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_1_364_reload", "role": "default" }} , 
 	{ "name": "add_1_465_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_1_465_reload", "role": "default" }} , 
 	{ "name": "add_1_566_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_1_566_reload", "role": "default" }} , 
 	{ "name": "add_1_667_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_1_667_reload", "role": "default" }} , 
 	{ "name": "add_1_768_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_1_768_reload", "role": "default" }} , 
 	{ "name": "add_269_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_269_reload", "role": "default" }} , 
 	{ "name": "add_2_170_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_2_170_reload", "role": "default" }} , 
 	{ "name": "add_2_271_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_2_271_reload", "role": "default" }} , 
 	{ "name": "add_2_372_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_2_372_reload", "role": "default" }} , 
 	{ "name": "add_2_473_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_2_473_reload", "role": "default" }} , 
 	{ "name": "add_2_574_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_2_574_reload", "role": "default" }} , 
 	{ "name": "add_2_675_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_2_675_reload", "role": "default" }} , 
 	{ "name": "add_2_776_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_2_776_reload", "role": "default" }} , 
 	{ "name": "add_377_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_377_reload", "role": "default" }} , 
 	{ "name": "add_3_178_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_3_178_reload", "role": "default" }} , 
 	{ "name": "add_3_279_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_3_279_reload", "role": "default" }} , 
 	{ "name": "add_3_380_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_3_380_reload", "role": "default" }} , 
 	{ "name": "add_3_481_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_3_481_reload", "role": "default" }} , 
 	{ "name": "add_3_582_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_3_582_reload", "role": "default" }} , 
 	{ "name": "add_3_683_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_3_683_reload", "role": "default" }} , 
 	{ "name": "add_3_784_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_3_784_reload", "role": "default" }} , 
 	{ "name": "add_485_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_485_reload", "role": "default" }} , 
 	{ "name": "add_4_186_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_4_186_reload", "role": "default" }} , 
 	{ "name": "add_4_287_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_4_287_reload", "role": "default" }} , 
 	{ "name": "add_4_388_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_4_388_reload", "role": "default" }} , 
 	{ "name": "add_4_489_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_4_489_reload", "role": "default" }} , 
 	{ "name": "add_4_590_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_4_590_reload", "role": "default" }} , 
 	{ "name": "add_4_691_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_4_691_reload", "role": "default" }} , 
 	{ "name": "add_4_792_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_4_792_reload", "role": "default" }} , 
 	{ "name": "add_593_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_593_reload", "role": "default" }} , 
 	{ "name": "add_5_194_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_5_194_reload", "role": "default" }} , 
 	{ "name": "add_5_295_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_5_295_reload", "role": "default" }} , 
 	{ "name": "add_5_396_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_5_396_reload", "role": "default" }} , 
 	{ "name": "add_5_497_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_5_497_reload", "role": "default" }} , 
 	{ "name": "add_5_598_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_5_598_reload", "role": "default" }} , 
 	{ "name": "add_5_699_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_5_699_reload", "role": "default" }} , 
 	{ "name": "add_5_7100_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_5_7100_reload", "role": "default" }} , 
 	{ "name": "add_6101_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_6101_reload", "role": "default" }} , 
 	{ "name": "add_6_1102_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_6_1102_reload", "role": "default" }} , 
 	{ "name": "add_6_2103_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_6_2103_reload", "role": "default" }} , 
 	{ "name": "add_6_3104_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_6_3104_reload", "role": "default" }} , 
 	{ "name": "add_6_4105_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_6_4105_reload", "role": "default" }} , 
 	{ "name": "add_6_5106_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_6_5106_reload", "role": "default" }} , 
 	{ "name": "add_6_6107_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_6_6107_reload", "role": "default" }} , 
 	{ "name": "add_6_7108_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_6_7108_reload", "role": "default" }} , 
 	{ "name": "add_7109_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_7109_reload", "role": "default" }} , 
 	{ "name": "add_7_1110_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_7_1110_reload", "role": "default" }} , 
 	{ "name": "add_7_2111_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_7_2111_reload", "role": "default" }} , 
 	{ "name": "add_7_3112_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_7_3112_reload", "role": "default" }} , 
 	{ "name": "add_7_4113_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_7_4113_reload", "role": "default" }} , 
 	{ "name": "add_7_5114_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_7_5114_reload", "role": "default" }} , 
 	{ "name": "add_7_6115_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_7_6115_reload", "role": "default" }} , 
 	{ "name": "add_7_7116_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add_7_7116_reload", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U341", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U342", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U343", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U344", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U345", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U346", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U347", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U348", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U349", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_c_port_AWVALID VALID 1 1 }  { m_axi_c_port_AWREADY READY 0 1 }  { m_axi_c_port_AWADDR ADDR 1 64 }  { m_axi_c_port_AWID ID 1 1 }  { m_axi_c_port_AWLEN SIZE 1 32 }  { m_axi_c_port_AWSIZE BURST 1 3 }  { m_axi_c_port_AWBURST LOCK 1 2 }  { m_axi_c_port_AWLOCK CACHE 1 2 }  { m_axi_c_port_AWCACHE PROT 1 4 }  { m_axi_c_port_AWPROT QOS 1 3 }  { m_axi_c_port_AWQOS REGION 1 4 }  { m_axi_c_port_AWREGION USER 1 4 }  { m_axi_c_port_AWUSER DATA 1 1 }  { m_axi_c_port_WVALID VALID 1 1 }  { m_axi_c_port_WREADY READY 0 1 }  { m_axi_c_port_WDATA FIFONUM 1 32 }  { m_axi_c_port_WSTRB STRB 1 4 }  { m_axi_c_port_WLAST LAST 1 1 }  { m_axi_c_port_WID ID 1 1 }  { m_axi_c_port_WUSER DATA 1 1 }  { m_axi_c_port_ARVALID VALID 1 1 }  { m_axi_c_port_ARREADY READY 0 1 }  { m_axi_c_port_ARADDR ADDR 1 64 }  { m_axi_c_port_ARID ID 1 1 }  { m_axi_c_port_ARLEN SIZE 1 32 }  { m_axi_c_port_ARSIZE BURST 1 3 }  { m_axi_c_port_ARBURST LOCK 1 2 }  { m_axi_c_port_ARLOCK CACHE 1 2 }  { m_axi_c_port_ARCACHE PROT 1 4 }  { m_axi_c_port_ARPROT QOS 1 3 }  { m_axi_c_port_ARQOS REGION 1 4 }  { m_axi_c_port_ARREGION USER 1 4 }  { m_axi_c_port_ARUSER DATA 1 1 }  { m_axi_c_port_RVALID VALID 0 1 }  { m_axi_c_port_RREADY READY 1 1 }  { m_axi_c_port_RDATA FIFONUM 0 32 }  { m_axi_c_port_RLAST LAST 0 1 }  { m_axi_c_port_RID ID 0 1 }  { m_axi_c_port_RFIFONUM LEN 0 9 }  { m_axi_c_port_RUSER DATA 0 1 }  { m_axi_c_port_RRESP RESP 0 2 }  { m_axi_c_port_BVALID VALID 0 1 }  { m_axi_c_port_BREADY READY 1 1 }  { m_axi_c_port_BRESP RESP 0 2 }  { m_axi_c_port_BID ID 0 1 }  { m_axi_c_port_BUSER DATA 0 1 } } }
	sext_ln62 { ap_none {  { sext_ln62 in_data 0 62 } } }
	p_reload { ap_none {  { p_reload in_data 0 32 } } }
	add_12254_reload { ap_none {  { add_12254_reload in_data 0 32 } } }
	add_22755_reload { ap_none {  { add_22755_reload in_data 0 32 } } }
	add_33256_reload { ap_none {  { add_33256_reload in_data 0 32 } } }
	add_43757_reload { ap_none {  { add_43757_reload in_data 0 32 } } }
	add_54258_reload { ap_none {  { add_54258_reload in_data 0 32 } } }
	add_64759_reload { ap_none {  { add_64759_reload in_data 0 32 } } }
	add_75260_reload { ap_none {  { add_75260_reload in_data 0 32 } } }
	add_161_reload { ap_none {  { add_161_reload in_data 0 32 } } }
	add_1_162_reload { ap_none {  { add_1_162_reload in_data 0 32 } } }
	add_1_263_reload { ap_none {  { add_1_263_reload in_data 0 32 } } }
	add_1_364_reload { ap_none {  { add_1_364_reload in_data 0 32 } } }
	add_1_465_reload { ap_none {  { add_1_465_reload in_data 0 32 } } }
	add_1_566_reload { ap_none {  { add_1_566_reload in_data 0 32 } } }
	add_1_667_reload { ap_none {  { add_1_667_reload in_data 0 32 } } }
	add_1_768_reload { ap_none {  { add_1_768_reload in_data 0 32 } } }
	add_269_reload { ap_none {  { add_269_reload in_data 0 32 } } }
	add_2_170_reload { ap_none {  { add_2_170_reload in_data 0 32 } } }
	add_2_271_reload { ap_none {  { add_2_271_reload in_data 0 32 } } }
	add_2_372_reload { ap_none {  { add_2_372_reload in_data 0 32 } } }
	add_2_473_reload { ap_none {  { add_2_473_reload in_data 0 32 } } }
	add_2_574_reload { ap_none {  { add_2_574_reload in_data 0 32 } } }
	add_2_675_reload { ap_none {  { add_2_675_reload in_data 0 32 } } }
	add_2_776_reload { ap_none {  { add_2_776_reload in_data 0 32 } } }
	add_377_reload { ap_none {  { add_377_reload in_data 0 32 } } }
	add_3_178_reload { ap_none {  { add_3_178_reload in_data 0 32 } } }
	add_3_279_reload { ap_none {  { add_3_279_reload in_data 0 32 } } }
	add_3_380_reload { ap_none {  { add_3_380_reload in_data 0 32 } } }
	add_3_481_reload { ap_none {  { add_3_481_reload in_data 0 32 } } }
	add_3_582_reload { ap_none {  { add_3_582_reload in_data 0 32 } } }
	add_3_683_reload { ap_none {  { add_3_683_reload in_data 0 32 } } }
	add_3_784_reload { ap_none {  { add_3_784_reload in_data 0 32 } } }
	add_485_reload { ap_none {  { add_485_reload in_data 0 32 } } }
	add_4_186_reload { ap_none {  { add_4_186_reload in_data 0 32 } } }
	add_4_287_reload { ap_none {  { add_4_287_reload in_data 0 32 } } }
	add_4_388_reload { ap_none {  { add_4_388_reload in_data 0 32 } } }
	add_4_489_reload { ap_none {  { add_4_489_reload in_data 0 32 } } }
	add_4_590_reload { ap_none {  { add_4_590_reload in_data 0 32 } } }
	add_4_691_reload { ap_none {  { add_4_691_reload in_data 0 32 } } }
	add_4_792_reload { ap_none {  { add_4_792_reload in_data 0 32 } } }
	add_593_reload { ap_none {  { add_593_reload in_data 0 32 } } }
	add_5_194_reload { ap_none {  { add_5_194_reload in_data 0 32 } } }
	add_5_295_reload { ap_none {  { add_5_295_reload in_data 0 32 } } }
	add_5_396_reload { ap_none {  { add_5_396_reload in_data 0 32 } } }
	add_5_497_reload { ap_none {  { add_5_497_reload in_data 0 32 } } }
	add_5_598_reload { ap_none {  { add_5_598_reload in_data 0 32 } } }
	add_5_699_reload { ap_none {  { add_5_699_reload in_data 0 32 } } }
	add_5_7100_reload { ap_none {  { add_5_7100_reload in_data 0 32 } } }
	add_6101_reload { ap_none {  { add_6101_reload in_data 0 32 } } }
	add_6_1102_reload { ap_none {  { add_6_1102_reload in_data 0 32 } } }
	add_6_2103_reload { ap_none {  { add_6_2103_reload in_data 0 32 } } }
	add_6_3104_reload { ap_none {  { add_6_3104_reload in_data 0 32 } } }
	add_6_4105_reload { ap_none {  { add_6_4105_reload in_data 0 32 } } }
	add_6_5106_reload { ap_none {  { add_6_5106_reload in_data 0 32 } } }
	add_6_6107_reload { ap_none {  { add_6_6107_reload in_data 0 32 } } }
	add_6_7108_reload { ap_none {  { add_6_7108_reload in_data 0 32 } } }
	add_7109_reload { ap_none {  { add_7109_reload in_data 0 32 } } }
	add_7_1110_reload { ap_none {  { add_7_1110_reload in_data 0 32 } } }
	add_7_2111_reload { ap_none {  { add_7_2111_reload in_data 0 32 } } }
	add_7_3112_reload { ap_none {  { add_7_3112_reload in_data 0 32 } } }
	add_7_4113_reload { ap_none {  { add_7_4113_reload in_data 0 32 } } }
	add_7_5114_reload { ap_none {  { add_7_5114_reload in_data 0 32 } } }
	add_7_6115_reload { ap_none {  { add_7_6115_reload in_data 0 32 } } }
	add_7_7116_reload { ap_none {  { add_7_7116_reload in_data 0 32 } } }
}
