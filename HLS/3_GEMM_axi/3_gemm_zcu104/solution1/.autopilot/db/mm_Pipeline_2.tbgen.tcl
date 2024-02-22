set moduleName mm_Pipeline_2
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
set C_modelName {mm_Pipeline_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ B_port int 32 regular {axi_master 0}  }
	{ sext_ln35 int 62 regular  }
	{ B_buff_63_out int 32 regular {pointer 1}  }
	{ B_buff_62_out int 32 regular {pointer 1}  }
	{ B_buff_61_out int 32 regular {pointer 1}  }
	{ B_buff_60_out int 32 regular {pointer 1}  }
	{ B_buff_59_out int 32 regular {pointer 1}  }
	{ B_buff_58_out int 32 regular {pointer 1}  }
	{ B_buff_57_out int 32 regular {pointer 1}  }
	{ B_buff_56_out int 32 regular {pointer 1}  }
	{ B_buff_55_out int 32 regular {pointer 1}  }
	{ B_buff_54_out int 32 regular {pointer 1}  }
	{ B_buff_53_out int 32 regular {pointer 1}  }
	{ B_buff_52_out int 32 regular {pointer 1}  }
	{ B_buff_51_out int 32 regular {pointer 1}  }
	{ B_buff_50_out int 32 regular {pointer 1}  }
	{ B_buff_49_out int 32 regular {pointer 1}  }
	{ B_buff_48_out int 32 regular {pointer 1}  }
	{ B_buff_47_out int 32 regular {pointer 1}  }
	{ B_buff_46_out int 32 regular {pointer 1}  }
	{ B_buff_45_out int 32 regular {pointer 1}  }
	{ B_buff_44_out int 32 regular {pointer 1}  }
	{ B_buff_43_out int 32 regular {pointer 1}  }
	{ B_buff_42_out int 32 regular {pointer 1}  }
	{ B_buff_41_out int 32 regular {pointer 1}  }
	{ B_buff_40_out int 32 regular {pointer 1}  }
	{ B_buff_39_out int 32 regular {pointer 1}  }
	{ B_buff_38_out int 32 regular {pointer 1}  }
	{ B_buff_37_out int 32 regular {pointer 1}  }
	{ B_buff_36_out int 32 regular {pointer 1}  }
	{ B_buff_35_out int 32 regular {pointer 1}  }
	{ B_buff_34_out int 32 regular {pointer 1}  }
	{ B_buff_33_out int 32 regular {pointer 1}  }
	{ B_buff_32_out int 32 regular {pointer 1}  }
	{ B_buff_31_out int 32 regular {pointer 1}  }
	{ B_buff_30_out int 32 regular {pointer 1}  }
	{ B_buff_29_out int 32 regular {pointer 1}  }
	{ B_buff_28_out int 32 regular {pointer 1}  }
	{ B_buff_27_out int 32 regular {pointer 1}  }
	{ B_buff_26_out int 32 regular {pointer 1}  }
	{ B_buff_25_out int 32 regular {pointer 1}  }
	{ B_buff_24_out int 32 regular {pointer 1}  }
	{ B_buff_23_out int 32 regular {pointer 1}  }
	{ B_buff_22_out int 32 regular {pointer 1}  }
	{ B_buff_21_out int 32 regular {pointer 1}  }
	{ B_buff_20_out int 32 regular {pointer 1}  }
	{ B_buff_19_out int 32 regular {pointer 1}  }
	{ B_buff_18_out int 32 regular {pointer 1}  }
	{ B_buff_17_out int 32 regular {pointer 1}  }
	{ B_buff_16_out int 32 regular {pointer 1}  }
	{ B_buff_15_out int 32 regular {pointer 1}  }
	{ B_buff_14_out int 32 regular {pointer 1}  }
	{ B_buff_13_out int 32 regular {pointer 1}  }
	{ B_buff_12_out int 32 regular {pointer 1}  }
	{ B_buff_11_out int 32 regular {pointer 1}  }
	{ B_buff_10_out int 32 regular {pointer 1}  }
	{ B_buff_9_out int 32 regular {pointer 1}  }
	{ B_buff_8_out int 32 regular {pointer 1}  }
	{ B_buff_7_out int 32 regular {pointer 1}  }
	{ B_buff_6_out int 32 regular {pointer 1}  }
	{ B_buff_5_out int 32 regular {pointer 1}  }
	{ B_buff_4_out int 32 regular {pointer 1}  }
	{ B_buff_3_out int 32 regular {pointer 1}  }
	{ B_buff_2_out int 32 regular {pointer 1}  }
	{ B_buff_1_out int 32 regular {pointer 1}  }
	{ B_buff_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "B_port", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B","offset": { "type": "dynamic","port_name": "B","bundle": "CONTROL_BUS"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln35", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_63_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_62_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_61_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_60_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_59_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_58_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_57_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_56_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_55_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_54_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_53_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_52_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_51_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_50_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_49_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_48_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_47_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_46_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_45_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_44_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_43_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_42_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_41_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_40_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_39_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_38_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_37_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_36_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_34_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_33_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_32_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_31_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_30_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_28_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_26_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_25_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_24_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_23_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_22_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_21_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_20_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_19_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_18_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_13_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_10_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "B_buff_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 181
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_B_port_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_B_port_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_B_port_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_B_port_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_B_port_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_B_port_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_B_port_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_B_port_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_B_port_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_B_port_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_B_port_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_B_port_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_B_port_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_B_port_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_B_port_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_B_port_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_B_port_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_B_port_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_B_port_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_B_port_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_B_port_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_B_port_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_B_port_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_B_port_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_B_port_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_B_port_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_B_port_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_B_port_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_B_port_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_B_port_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_B_port_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_B_port_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_B_port_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_B_port_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_B_port_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_B_port_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_B_port_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_B_port_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_B_port_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_B_port_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_B_port_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_B_port_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_B_port_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_B_port_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_B_port_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_B_port_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln35 sc_in sc_lv 62 signal 1 } 
	{ B_buff_63_out sc_out sc_lv 32 signal 2 } 
	{ B_buff_63_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ B_buff_62_out sc_out sc_lv 32 signal 3 } 
	{ B_buff_62_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ B_buff_61_out sc_out sc_lv 32 signal 4 } 
	{ B_buff_61_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ B_buff_60_out sc_out sc_lv 32 signal 5 } 
	{ B_buff_60_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ B_buff_59_out sc_out sc_lv 32 signal 6 } 
	{ B_buff_59_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ B_buff_58_out sc_out sc_lv 32 signal 7 } 
	{ B_buff_58_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ B_buff_57_out sc_out sc_lv 32 signal 8 } 
	{ B_buff_57_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ B_buff_56_out sc_out sc_lv 32 signal 9 } 
	{ B_buff_56_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ B_buff_55_out sc_out sc_lv 32 signal 10 } 
	{ B_buff_55_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ B_buff_54_out sc_out sc_lv 32 signal 11 } 
	{ B_buff_54_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ B_buff_53_out sc_out sc_lv 32 signal 12 } 
	{ B_buff_53_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ B_buff_52_out sc_out sc_lv 32 signal 13 } 
	{ B_buff_52_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ B_buff_51_out sc_out sc_lv 32 signal 14 } 
	{ B_buff_51_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ B_buff_50_out sc_out sc_lv 32 signal 15 } 
	{ B_buff_50_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ B_buff_49_out sc_out sc_lv 32 signal 16 } 
	{ B_buff_49_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ B_buff_48_out sc_out sc_lv 32 signal 17 } 
	{ B_buff_48_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ B_buff_47_out sc_out sc_lv 32 signal 18 } 
	{ B_buff_47_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ B_buff_46_out sc_out sc_lv 32 signal 19 } 
	{ B_buff_46_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ B_buff_45_out sc_out sc_lv 32 signal 20 } 
	{ B_buff_45_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ B_buff_44_out sc_out sc_lv 32 signal 21 } 
	{ B_buff_44_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ B_buff_43_out sc_out sc_lv 32 signal 22 } 
	{ B_buff_43_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ B_buff_42_out sc_out sc_lv 32 signal 23 } 
	{ B_buff_42_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ B_buff_41_out sc_out sc_lv 32 signal 24 } 
	{ B_buff_41_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ B_buff_40_out sc_out sc_lv 32 signal 25 } 
	{ B_buff_40_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ B_buff_39_out sc_out sc_lv 32 signal 26 } 
	{ B_buff_39_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ B_buff_38_out sc_out sc_lv 32 signal 27 } 
	{ B_buff_38_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ B_buff_37_out sc_out sc_lv 32 signal 28 } 
	{ B_buff_37_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ B_buff_36_out sc_out sc_lv 32 signal 29 } 
	{ B_buff_36_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ B_buff_35_out sc_out sc_lv 32 signal 30 } 
	{ B_buff_35_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ B_buff_34_out sc_out sc_lv 32 signal 31 } 
	{ B_buff_34_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ B_buff_33_out sc_out sc_lv 32 signal 32 } 
	{ B_buff_33_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ B_buff_32_out sc_out sc_lv 32 signal 33 } 
	{ B_buff_32_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ B_buff_31_out sc_out sc_lv 32 signal 34 } 
	{ B_buff_31_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ B_buff_30_out sc_out sc_lv 32 signal 35 } 
	{ B_buff_30_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ B_buff_29_out sc_out sc_lv 32 signal 36 } 
	{ B_buff_29_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ B_buff_28_out sc_out sc_lv 32 signal 37 } 
	{ B_buff_28_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ B_buff_27_out sc_out sc_lv 32 signal 38 } 
	{ B_buff_27_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ B_buff_26_out sc_out sc_lv 32 signal 39 } 
	{ B_buff_26_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ B_buff_25_out sc_out sc_lv 32 signal 40 } 
	{ B_buff_25_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ B_buff_24_out sc_out sc_lv 32 signal 41 } 
	{ B_buff_24_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ B_buff_23_out sc_out sc_lv 32 signal 42 } 
	{ B_buff_23_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ B_buff_22_out sc_out sc_lv 32 signal 43 } 
	{ B_buff_22_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ B_buff_21_out sc_out sc_lv 32 signal 44 } 
	{ B_buff_21_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ B_buff_20_out sc_out sc_lv 32 signal 45 } 
	{ B_buff_20_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ B_buff_19_out sc_out sc_lv 32 signal 46 } 
	{ B_buff_19_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ B_buff_18_out sc_out sc_lv 32 signal 47 } 
	{ B_buff_18_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ B_buff_17_out sc_out sc_lv 32 signal 48 } 
	{ B_buff_17_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ B_buff_16_out sc_out sc_lv 32 signal 49 } 
	{ B_buff_16_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ B_buff_15_out sc_out sc_lv 32 signal 50 } 
	{ B_buff_15_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ B_buff_14_out sc_out sc_lv 32 signal 51 } 
	{ B_buff_14_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ B_buff_13_out sc_out sc_lv 32 signal 52 } 
	{ B_buff_13_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ B_buff_12_out sc_out sc_lv 32 signal 53 } 
	{ B_buff_12_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ B_buff_11_out sc_out sc_lv 32 signal 54 } 
	{ B_buff_11_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ B_buff_10_out sc_out sc_lv 32 signal 55 } 
	{ B_buff_10_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ B_buff_9_out sc_out sc_lv 32 signal 56 } 
	{ B_buff_9_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ B_buff_8_out sc_out sc_lv 32 signal 57 } 
	{ B_buff_8_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ B_buff_7_out sc_out sc_lv 32 signal 58 } 
	{ B_buff_7_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ B_buff_6_out sc_out sc_lv 32 signal 59 } 
	{ B_buff_6_out_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ B_buff_5_out sc_out sc_lv 32 signal 60 } 
	{ B_buff_5_out_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ B_buff_4_out sc_out sc_lv 32 signal 61 } 
	{ B_buff_4_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ B_buff_3_out sc_out sc_lv 32 signal 62 } 
	{ B_buff_3_out_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ B_buff_2_out sc_out sc_lv 32 signal 63 } 
	{ B_buff_2_out_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ B_buff_1_out sc_out sc_lv 32 signal 64 } 
	{ B_buff_1_out_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ B_buff_out sc_out sc_lv 32 signal 65 } 
	{ B_buff_out_ap_vld sc_out sc_logic 1 outvld 65 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_B_port_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "AWVALID" }} , 
 	{ "name": "m_axi_B_port_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "AWREADY" }} , 
 	{ "name": "m_axi_B_port_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "B_port", "role": "AWADDR" }} , 
 	{ "name": "m_axi_B_port_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "AWID" }} , 
 	{ "name": "m_axi_B_port_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_port", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_B_port_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_port", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_B_port_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "B_port", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_B_port_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "RUSER" }} , 
 	{ "name": "m_axi_B_port_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_port", "role": "RRESP" }} , 
 	{ "name": "m_axi_B_port_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "BVALID" }} , 
 	{ "name": "m_axi_B_port_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "BREADY" }} , 
 	{ "name": "m_axi_B_port_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "B_port", "role": "BRESP" }} , 
 	{ "name": "m_axi_B_port_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "BID" }} , 
 	{ "name": "m_axi_B_port_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_port", "role": "BUSER" }} , 
 	{ "name": "sext_ln35", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln35", "role": "default" }} , 
 	{ "name": "B_buff_63_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_63_out", "role": "default" }} , 
 	{ "name": "B_buff_63_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_63_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_62_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_62_out", "role": "default" }} , 
 	{ "name": "B_buff_62_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_62_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_61_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_61_out", "role": "default" }} , 
 	{ "name": "B_buff_61_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_61_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_60_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_60_out", "role": "default" }} , 
 	{ "name": "B_buff_60_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_60_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_59_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_59_out", "role": "default" }} , 
 	{ "name": "B_buff_59_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_59_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_58_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_58_out", "role": "default" }} , 
 	{ "name": "B_buff_58_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_58_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_57_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_57_out", "role": "default" }} , 
 	{ "name": "B_buff_57_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_57_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_56_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_56_out", "role": "default" }} , 
 	{ "name": "B_buff_56_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_56_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_55_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_55_out", "role": "default" }} , 
 	{ "name": "B_buff_55_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_55_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_54_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_54_out", "role": "default" }} , 
 	{ "name": "B_buff_54_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_54_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_53_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_53_out", "role": "default" }} , 
 	{ "name": "B_buff_53_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_53_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_52_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_52_out", "role": "default" }} , 
 	{ "name": "B_buff_52_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_52_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_51_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_51_out", "role": "default" }} , 
 	{ "name": "B_buff_51_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_51_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_50_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_50_out", "role": "default" }} , 
 	{ "name": "B_buff_50_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_50_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_49_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_49_out", "role": "default" }} , 
 	{ "name": "B_buff_49_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_49_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_48_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_48_out", "role": "default" }} , 
 	{ "name": "B_buff_48_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_48_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_47_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_47_out", "role": "default" }} , 
 	{ "name": "B_buff_47_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_47_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_46_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_46_out", "role": "default" }} , 
 	{ "name": "B_buff_46_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_46_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_45_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_45_out", "role": "default" }} , 
 	{ "name": "B_buff_45_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_45_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_44_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_44_out", "role": "default" }} , 
 	{ "name": "B_buff_44_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_44_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_43_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_43_out", "role": "default" }} , 
 	{ "name": "B_buff_43_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_43_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_42_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_42_out", "role": "default" }} , 
 	{ "name": "B_buff_42_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_42_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_41_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_41_out", "role": "default" }} , 
 	{ "name": "B_buff_41_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_41_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_40_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_40_out", "role": "default" }} , 
 	{ "name": "B_buff_40_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_40_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_39_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_39_out", "role": "default" }} , 
 	{ "name": "B_buff_39_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_39_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_38_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_38_out", "role": "default" }} , 
 	{ "name": "B_buff_38_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_38_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_37_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_37_out", "role": "default" }} , 
 	{ "name": "B_buff_37_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_37_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_36_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_36_out", "role": "default" }} , 
 	{ "name": "B_buff_36_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_36_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_35_out", "role": "default" }} , 
 	{ "name": "B_buff_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_35_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_34_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_34_out", "role": "default" }} , 
 	{ "name": "B_buff_34_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_34_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_33_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_33_out", "role": "default" }} , 
 	{ "name": "B_buff_33_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_33_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_32_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_32_out", "role": "default" }} , 
 	{ "name": "B_buff_32_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_32_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_31_out", "role": "default" }} , 
 	{ "name": "B_buff_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_31_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_30_out", "role": "default" }} , 
 	{ "name": "B_buff_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_30_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_29_out", "role": "default" }} , 
 	{ "name": "B_buff_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_29_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_28_out", "role": "default" }} , 
 	{ "name": "B_buff_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_28_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_27_out", "role": "default" }} , 
 	{ "name": "B_buff_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_27_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_26_out", "role": "default" }} , 
 	{ "name": "B_buff_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_26_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_25_out", "role": "default" }} , 
 	{ "name": "B_buff_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_25_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_24_out", "role": "default" }} , 
 	{ "name": "B_buff_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_24_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_23_out", "role": "default" }} , 
 	{ "name": "B_buff_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_23_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_22_out", "role": "default" }} , 
 	{ "name": "B_buff_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_22_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_21_out", "role": "default" }} , 
 	{ "name": "B_buff_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_21_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_20_out", "role": "default" }} , 
 	{ "name": "B_buff_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_20_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_19_out", "role": "default" }} , 
 	{ "name": "B_buff_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_19_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_18_out", "role": "default" }} , 
 	{ "name": "B_buff_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_18_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_17_out", "role": "default" }} , 
 	{ "name": "B_buff_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_17_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_16_out", "role": "default" }} , 
 	{ "name": "B_buff_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_16_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_15_out", "role": "default" }} , 
 	{ "name": "B_buff_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_15_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_14_out", "role": "default" }} , 
 	{ "name": "B_buff_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_14_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_13_out", "role": "default" }} , 
 	{ "name": "B_buff_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_13_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_12_out", "role": "default" }} , 
 	{ "name": "B_buff_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_12_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_11_out", "role": "default" }} , 
 	{ "name": "B_buff_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_11_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_10_out", "role": "default" }} , 
 	{ "name": "B_buff_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_10_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_9_out", "role": "default" }} , 
 	{ "name": "B_buff_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_9_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_8_out", "role": "default" }} , 
 	{ "name": "B_buff_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_8_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_7_out", "role": "default" }} , 
 	{ "name": "B_buff_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_7_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_6_out", "role": "default" }} , 
 	{ "name": "B_buff_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_6_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_5_out", "role": "default" }} , 
 	{ "name": "B_buff_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_5_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_4_out", "role": "default" }} , 
 	{ "name": "B_buff_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_4_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_3_out", "role": "default" }} , 
 	{ "name": "B_buff_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_3_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_2_out", "role": "default" }} , 
 	{ "name": "B_buff_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_2_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_1_out", "role": "default" }} , 
 	{ "name": "B_buff_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_1_out", "role": "ap_vld" }} , 
 	{ "name": "B_buff_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_out", "role": "default" }} , 
 	{ "name": "B_buff_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_buff_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "mm_Pipeline_2",
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
			{"Name" : "B_port", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "B_port_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln35", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "B_buff_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mm_Pipeline_2 {
		B_port {Type I LastRead 1 FirstWrite -1}
		sext_ln35 {Type I LastRead 0 FirstWrite -1}
		B_buff_63_out {Type O LastRead -1 FirstWrite 0}
		B_buff_62_out {Type O LastRead -1 FirstWrite 0}
		B_buff_61_out {Type O LastRead -1 FirstWrite 0}
		B_buff_60_out {Type O LastRead -1 FirstWrite 0}
		B_buff_59_out {Type O LastRead -1 FirstWrite 0}
		B_buff_58_out {Type O LastRead -1 FirstWrite 0}
		B_buff_57_out {Type O LastRead -1 FirstWrite 0}
		B_buff_56_out {Type O LastRead -1 FirstWrite 0}
		B_buff_55_out {Type O LastRead -1 FirstWrite 0}
		B_buff_54_out {Type O LastRead -1 FirstWrite 0}
		B_buff_53_out {Type O LastRead -1 FirstWrite 0}
		B_buff_52_out {Type O LastRead -1 FirstWrite 0}
		B_buff_51_out {Type O LastRead -1 FirstWrite 0}
		B_buff_50_out {Type O LastRead -1 FirstWrite 0}
		B_buff_49_out {Type O LastRead -1 FirstWrite 0}
		B_buff_48_out {Type O LastRead -1 FirstWrite 0}
		B_buff_47_out {Type O LastRead -1 FirstWrite 0}
		B_buff_46_out {Type O LastRead -1 FirstWrite 0}
		B_buff_45_out {Type O LastRead -1 FirstWrite 0}
		B_buff_44_out {Type O LastRead -1 FirstWrite 0}
		B_buff_43_out {Type O LastRead -1 FirstWrite 0}
		B_buff_42_out {Type O LastRead -1 FirstWrite 0}
		B_buff_41_out {Type O LastRead -1 FirstWrite 0}
		B_buff_40_out {Type O LastRead -1 FirstWrite 0}
		B_buff_39_out {Type O LastRead -1 FirstWrite 0}
		B_buff_38_out {Type O LastRead -1 FirstWrite 0}
		B_buff_37_out {Type O LastRead -1 FirstWrite 0}
		B_buff_36_out {Type O LastRead -1 FirstWrite 0}
		B_buff_35_out {Type O LastRead -1 FirstWrite 0}
		B_buff_34_out {Type O LastRead -1 FirstWrite 0}
		B_buff_33_out {Type O LastRead -1 FirstWrite 0}
		B_buff_32_out {Type O LastRead -1 FirstWrite 0}
		B_buff_31_out {Type O LastRead -1 FirstWrite 0}
		B_buff_30_out {Type O LastRead -1 FirstWrite 0}
		B_buff_29_out {Type O LastRead -1 FirstWrite 0}
		B_buff_28_out {Type O LastRead -1 FirstWrite 0}
		B_buff_27_out {Type O LastRead -1 FirstWrite 0}
		B_buff_26_out {Type O LastRead -1 FirstWrite 0}
		B_buff_25_out {Type O LastRead -1 FirstWrite 0}
		B_buff_24_out {Type O LastRead -1 FirstWrite 0}
		B_buff_23_out {Type O LastRead -1 FirstWrite 0}
		B_buff_22_out {Type O LastRead -1 FirstWrite 0}
		B_buff_21_out {Type O LastRead -1 FirstWrite 0}
		B_buff_20_out {Type O LastRead -1 FirstWrite 0}
		B_buff_19_out {Type O LastRead -1 FirstWrite 0}
		B_buff_18_out {Type O LastRead -1 FirstWrite 0}
		B_buff_17_out {Type O LastRead -1 FirstWrite 0}
		B_buff_16_out {Type O LastRead -1 FirstWrite 0}
		B_buff_15_out {Type O LastRead -1 FirstWrite 0}
		B_buff_14_out {Type O LastRead -1 FirstWrite 0}
		B_buff_13_out {Type O LastRead -1 FirstWrite 0}
		B_buff_12_out {Type O LastRead -1 FirstWrite 0}
		B_buff_11_out {Type O LastRead -1 FirstWrite 0}
		B_buff_10_out {Type O LastRead -1 FirstWrite 0}
		B_buff_9_out {Type O LastRead -1 FirstWrite 0}
		B_buff_8_out {Type O LastRead -1 FirstWrite 0}
		B_buff_7_out {Type O LastRead -1 FirstWrite 0}
		B_buff_6_out {Type O LastRead -1 FirstWrite 0}
		B_buff_5_out {Type O LastRead -1 FirstWrite 0}
		B_buff_4_out {Type O LastRead -1 FirstWrite 0}
		B_buff_3_out {Type O LastRead -1 FirstWrite 0}
		B_buff_2_out {Type O LastRead -1 FirstWrite 0}
		B_buff_1_out {Type O LastRead -1 FirstWrite 0}
		B_buff_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_B_port_AWVALID VALID 1 1 }  { m_axi_B_port_AWREADY READY 0 1 }  { m_axi_B_port_AWADDR ADDR 1 64 }  { m_axi_B_port_AWID ID 1 1 }  { m_axi_B_port_AWLEN SIZE 1 32 }  { m_axi_B_port_AWSIZE BURST 1 3 }  { m_axi_B_port_AWBURST LOCK 1 2 }  { m_axi_B_port_AWLOCK CACHE 1 2 }  { m_axi_B_port_AWCACHE PROT 1 4 }  { m_axi_B_port_AWPROT QOS 1 3 }  { m_axi_B_port_AWQOS REGION 1 4 }  { m_axi_B_port_AWREGION USER 1 4 }  { m_axi_B_port_AWUSER DATA 1 1 }  { m_axi_B_port_WVALID VALID 1 1 }  { m_axi_B_port_WREADY READY 0 1 }  { m_axi_B_port_WDATA FIFONUM 1 32 }  { m_axi_B_port_WSTRB STRB 1 4 }  { m_axi_B_port_WLAST LAST 1 1 }  { m_axi_B_port_WID ID 1 1 }  { m_axi_B_port_WUSER DATA 1 1 }  { m_axi_B_port_ARVALID VALID 1 1 }  { m_axi_B_port_ARREADY READY 0 1 }  { m_axi_B_port_ARADDR ADDR 1 64 }  { m_axi_B_port_ARID ID 1 1 }  { m_axi_B_port_ARLEN SIZE 1 32 }  { m_axi_B_port_ARSIZE BURST 1 3 }  { m_axi_B_port_ARBURST LOCK 1 2 }  { m_axi_B_port_ARLOCK CACHE 1 2 }  { m_axi_B_port_ARCACHE PROT 1 4 }  { m_axi_B_port_ARPROT QOS 1 3 }  { m_axi_B_port_ARQOS REGION 1 4 }  { m_axi_B_port_ARREGION USER 1 4 }  { m_axi_B_port_ARUSER DATA 1 1 }  { m_axi_B_port_RVALID VALID 0 1 }  { m_axi_B_port_RREADY READY 1 1 }  { m_axi_B_port_RDATA FIFONUM 0 32 }  { m_axi_B_port_RLAST LAST 0 1 }  { m_axi_B_port_RID ID 0 1 }  { m_axi_B_port_RFIFONUM LEN 0 9 }  { m_axi_B_port_RUSER DATA 0 1 }  { m_axi_B_port_RRESP RESP 0 2 }  { m_axi_B_port_BVALID VALID 0 1 }  { m_axi_B_port_BREADY READY 1 1 }  { m_axi_B_port_BRESP RESP 0 2 }  { m_axi_B_port_BID ID 0 1 }  { m_axi_B_port_BUSER DATA 0 1 } } }
	sext_ln35 { ap_none {  { sext_ln35 in_data 0 62 } } }
	B_buff_63_out { ap_vld {  { B_buff_63_out out_data 1 32 }  { B_buff_63_out_ap_vld out_vld 1 1 } } }
	B_buff_62_out { ap_vld {  { B_buff_62_out out_data 1 32 }  { B_buff_62_out_ap_vld out_vld 1 1 } } }
	B_buff_61_out { ap_vld {  { B_buff_61_out out_data 1 32 }  { B_buff_61_out_ap_vld out_vld 1 1 } } }
	B_buff_60_out { ap_vld {  { B_buff_60_out out_data 1 32 }  { B_buff_60_out_ap_vld out_vld 1 1 } } }
	B_buff_59_out { ap_vld {  { B_buff_59_out out_data 1 32 }  { B_buff_59_out_ap_vld out_vld 1 1 } } }
	B_buff_58_out { ap_vld {  { B_buff_58_out out_data 1 32 }  { B_buff_58_out_ap_vld out_vld 1 1 } } }
	B_buff_57_out { ap_vld {  { B_buff_57_out out_data 1 32 }  { B_buff_57_out_ap_vld out_vld 1 1 } } }
	B_buff_56_out { ap_vld {  { B_buff_56_out out_data 1 32 }  { B_buff_56_out_ap_vld out_vld 1 1 } } }
	B_buff_55_out { ap_vld {  { B_buff_55_out out_data 1 32 }  { B_buff_55_out_ap_vld out_vld 1 1 } } }
	B_buff_54_out { ap_vld {  { B_buff_54_out out_data 1 32 }  { B_buff_54_out_ap_vld out_vld 1 1 } } }
	B_buff_53_out { ap_vld {  { B_buff_53_out out_data 1 32 }  { B_buff_53_out_ap_vld out_vld 1 1 } } }
	B_buff_52_out { ap_vld {  { B_buff_52_out out_data 1 32 }  { B_buff_52_out_ap_vld out_vld 1 1 } } }
	B_buff_51_out { ap_vld {  { B_buff_51_out out_data 1 32 }  { B_buff_51_out_ap_vld out_vld 1 1 } } }
	B_buff_50_out { ap_vld {  { B_buff_50_out out_data 1 32 }  { B_buff_50_out_ap_vld out_vld 1 1 } } }
	B_buff_49_out { ap_vld {  { B_buff_49_out out_data 1 32 }  { B_buff_49_out_ap_vld out_vld 1 1 } } }
	B_buff_48_out { ap_vld {  { B_buff_48_out out_data 1 32 }  { B_buff_48_out_ap_vld out_vld 1 1 } } }
	B_buff_47_out { ap_vld {  { B_buff_47_out out_data 1 32 }  { B_buff_47_out_ap_vld out_vld 1 1 } } }
	B_buff_46_out { ap_vld {  { B_buff_46_out out_data 1 32 }  { B_buff_46_out_ap_vld out_vld 1 1 } } }
	B_buff_45_out { ap_vld {  { B_buff_45_out out_data 1 32 }  { B_buff_45_out_ap_vld out_vld 1 1 } } }
	B_buff_44_out { ap_vld {  { B_buff_44_out out_data 1 32 }  { B_buff_44_out_ap_vld out_vld 1 1 } } }
	B_buff_43_out { ap_vld {  { B_buff_43_out out_data 1 32 }  { B_buff_43_out_ap_vld out_vld 1 1 } } }
	B_buff_42_out { ap_vld {  { B_buff_42_out out_data 1 32 }  { B_buff_42_out_ap_vld out_vld 1 1 } } }
	B_buff_41_out { ap_vld {  { B_buff_41_out out_data 1 32 }  { B_buff_41_out_ap_vld out_vld 1 1 } } }
	B_buff_40_out { ap_vld {  { B_buff_40_out out_data 1 32 }  { B_buff_40_out_ap_vld out_vld 1 1 } } }
	B_buff_39_out { ap_vld {  { B_buff_39_out out_data 1 32 }  { B_buff_39_out_ap_vld out_vld 1 1 } } }
	B_buff_38_out { ap_vld {  { B_buff_38_out out_data 1 32 }  { B_buff_38_out_ap_vld out_vld 1 1 } } }
	B_buff_37_out { ap_vld {  { B_buff_37_out out_data 1 32 }  { B_buff_37_out_ap_vld out_vld 1 1 } } }
	B_buff_36_out { ap_vld {  { B_buff_36_out out_data 1 32 }  { B_buff_36_out_ap_vld out_vld 1 1 } } }
	B_buff_35_out { ap_vld {  { B_buff_35_out out_data 1 32 }  { B_buff_35_out_ap_vld out_vld 1 1 } } }
	B_buff_34_out { ap_vld {  { B_buff_34_out out_data 1 32 }  { B_buff_34_out_ap_vld out_vld 1 1 } } }
	B_buff_33_out { ap_vld {  { B_buff_33_out out_data 1 32 }  { B_buff_33_out_ap_vld out_vld 1 1 } } }
	B_buff_32_out { ap_vld {  { B_buff_32_out out_data 1 32 }  { B_buff_32_out_ap_vld out_vld 1 1 } } }
	B_buff_31_out { ap_vld {  { B_buff_31_out out_data 1 32 }  { B_buff_31_out_ap_vld out_vld 1 1 } } }
	B_buff_30_out { ap_vld {  { B_buff_30_out out_data 1 32 }  { B_buff_30_out_ap_vld out_vld 1 1 } } }
	B_buff_29_out { ap_vld {  { B_buff_29_out out_data 1 32 }  { B_buff_29_out_ap_vld out_vld 1 1 } } }
	B_buff_28_out { ap_vld {  { B_buff_28_out out_data 1 32 }  { B_buff_28_out_ap_vld out_vld 1 1 } } }
	B_buff_27_out { ap_vld {  { B_buff_27_out out_data 1 32 }  { B_buff_27_out_ap_vld out_vld 1 1 } } }
	B_buff_26_out { ap_vld {  { B_buff_26_out out_data 1 32 }  { B_buff_26_out_ap_vld out_vld 1 1 } } }
	B_buff_25_out { ap_vld {  { B_buff_25_out out_data 1 32 }  { B_buff_25_out_ap_vld out_vld 1 1 } } }
	B_buff_24_out { ap_vld {  { B_buff_24_out out_data 1 32 }  { B_buff_24_out_ap_vld out_vld 1 1 } } }
	B_buff_23_out { ap_vld {  { B_buff_23_out out_data 1 32 }  { B_buff_23_out_ap_vld out_vld 1 1 } } }
	B_buff_22_out { ap_vld {  { B_buff_22_out out_data 1 32 }  { B_buff_22_out_ap_vld out_vld 1 1 } } }
	B_buff_21_out { ap_vld {  { B_buff_21_out out_data 1 32 }  { B_buff_21_out_ap_vld out_vld 1 1 } } }
	B_buff_20_out { ap_vld {  { B_buff_20_out out_data 1 32 }  { B_buff_20_out_ap_vld out_vld 1 1 } } }
	B_buff_19_out { ap_vld {  { B_buff_19_out out_data 1 32 }  { B_buff_19_out_ap_vld out_vld 1 1 } } }
	B_buff_18_out { ap_vld {  { B_buff_18_out out_data 1 32 }  { B_buff_18_out_ap_vld out_vld 1 1 } } }
	B_buff_17_out { ap_vld {  { B_buff_17_out out_data 1 32 }  { B_buff_17_out_ap_vld out_vld 1 1 } } }
	B_buff_16_out { ap_vld {  { B_buff_16_out out_data 1 32 }  { B_buff_16_out_ap_vld out_vld 1 1 } } }
	B_buff_15_out { ap_vld {  { B_buff_15_out out_data 1 32 }  { B_buff_15_out_ap_vld out_vld 1 1 } } }
	B_buff_14_out { ap_vld {  { B_buff_14_out out_data 1 32 }  { B_buff_14_out_ap_vld out_vld 1 1 } } }
	B_buff_13_out { ap_vld {  { B_buff_13_out out_data 1 32 }  { B_buff_13_out_ap_vld out_vld 1 1 } } }
	B_buff_12_out { ap_vld {  { B_buff_12_out out_data 1 32 }  { B_buff_12_out_ap_vld out_vld 1 1 } } }
	B_buff_11_out { ap_vld {  { B_buff_11_out out_data 1 32 }  { B_buff_11_out_ap_vld out_vld 1 1 } } }
	B_buff_10_out { ap_vld {  { B_buff_10_out out_data 1 32 }  { B_buff_10_out_ap_vld out_vld 1 1 } } }
	B_buff_9_out { ap_vld {  { B_buff_9_out out_data 1 32 }  { B_buff_9_out_ap_vld out_vld 1 1 } } }
	B_buff_8_out { ap_vld {  { B_buff_8_out out_data 1 32 }  { B_buff_8_out_ap_vld out_vld 1 1 } } }
	B_buff_7_out { ap_vld {  { B_buff_7_out out_data 1 32 }  { B_buff_7_out_ap_vld out_vld 1 1 } } }
	B_buff_6_out { ap_vld {  { B_buff_6_out out_data 1 32 }  { B_buff_6_out_ap_vld out_vld 1 1 } } }
	B_buff_5_out { ap_vld {  { B_buff_5_out out_data 1 32 }  { B_buff_5_out_ap_vld out_vld 1 1 } } }
	B_buff_4_out { ap_vld {  { B_buff_4_out out_data 1 32 }  { B_buff_4_out_ap_vld out_vld 1 1 } } }
	B_buff_3_out { ap_vld {  { B_buff_3_out out_data 1 32 }  { B_buff_3_out_ap_vld out_vld 1 1 } } }
	B_buff_2_out { ap_vld {  { B_buff_2_out out_data 1 32 }  { B_buff_2_out_ap_vld out_vld 1 1 } } }
	B_buff_1_out { ap_vld {  { B_buff_1_out out_data 1 32 }  { B_buff_1_out_ap_vld out_vld 1 1 } } }
	B_buff_out { ap_vld {  { B_buff_out out_data 1 32 }  { B_buff_out_ap_vld out_vld 1 1 } } }
}
