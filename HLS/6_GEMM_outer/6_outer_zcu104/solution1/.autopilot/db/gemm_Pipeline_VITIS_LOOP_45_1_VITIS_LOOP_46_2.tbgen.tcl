set moduleName gemm_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_46_2
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
set C_modelName {gemm_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_46_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ c_buff_63_out float 32 regular {pointer 1}  }
	{ c_buff_62_out float 32 regular {pointer 1}  }
	{ c_buff_61_out float 32 regular {pointer 1}  }
	{ c_buff_60_out float 32 regular {pointer 1}  }
	{ c_buff_59_out float 32 regular {pointer 1}  }
	{ c_buff_58_out float 32 regular {pointer 1}  }
	{ c_buff_57_out float 32 regular {pointer 1}  }
	{ c_buff_56_out float 32 regular {pointer 1}  }
	{ c_buff_55_out float 32 regular {pointer 1}  }
	{ c_buff_54_out float 32 regular {pointer 1}  }
	{ c_buff_53_out float 32 regular {pointer 1}  }
	{ c_buff_52_out float 32 regular {pointer 1}  }
	{ c_buff_51_out float 32 regular {pointer 1}  }
	{ c_buff_50_out float 32 regular {pointer 1}  }
	{ c_buff_49_out float 32 regular {pointer 1}  }
	{ c_buff_48_out float 32 regular {pointer 1}  }
	{ c_buff_47_out float 32 regular {pointer 1}  }
	{ c_buff_46_out float 32 regular {pointer 1}  }
	{ c_buff_45_out float 32 regular {pointer 1}  }
	{ c_buff_44_out float 32 regular {pointer 1}  }
	{ c_buff_43_out float 32 regular {pointer 1}  }
	{ c_buff_42_out float 32 regular {pointer 1}  }
	{ c_buff_41_out float 32 regular {pointer 1}  }
	{ c_buff_40_out float 32 regular {pointer 1}  }
	{ c_buff_39_out float 32 regular {pointer 1}  }
	{ c_buff_38_out float 32 regular {pointer 1}  }
	{ c_buff_37_out float 32 regular {pointer 1}  }
	{ c_buff_36_out float 32 regular {pointer 1}  }
	{ c_buff_35_out float 32 regular {pointer 1}  }
	{ c_buff_34_out float 32 regular {pointer 1}  }
	{ c_buff_33_out float 32 regular {pointer 1}  }
	{ c_buff_32_out float 32 regular {pointer 1}  }
	{ c_buff_31_out float 32 regular {pointer 1}  }
	{ c_buff_30_out float 32 regular {pointer 1}  }
	{ c_buff_29_out float 32 regular {pointer 1}  }
	{ c_buff_28_out float 32 regular {pointer 1}  }
	{ c_buff_27_out float 32 regular {pointer 1}  }
	{ c_buff_26_out float 32 regular {pointer 1}  }
	{ c_buff_25_out float 32 regular {pointer 1}  }
	{ c_buff_24_out float 32 regular {pointer 1}  }
	{ c_buff_23_out float 32 regular {pointer 1}  }
	{ c_buff_22_out float 32 regular {pointer 1}  }
	{ c_buff_21_out float 32 regular {pointer 1}  }
	{ c_buff_20_out float 32 regular {pointer 1}  }
	{ c_buff_19_out float 32 regular {pointer 1}  }
	{ c_buff_18_out float 32 regular {pointer 1}  }
	{ c_buff_17_out float 32 regular {pointer 1}  }
	{ c_buff_16_out float 32 regular {pointer 1}  }
	{ c_buff_15_out float 32 regular {pointer 1}  }
	{ c_buff_14_out float 32 regular {pointer 1}  }
	{ c_buff_13_out float 32 regular {pointer 1}  }
	{ c_buff_12_out float 32 regular {pointer 1}  }
	{ c_buff_11_out float 32 regular {pointer 1}  }
	{ c_buff_10_out float 32 regular {pointer 1}  }
	{ c_buff_9_out float 32 regular {pointer 1}  }
	{ c_buff_8_out float 32 regular {pointer 1}  }
	{ c_buff_7_out float 32 regular {pointer 1}  }
	{ c_buff_6_out float 32 regular {pointer 1}  }
	{ c_buff_5_out float 32 regular {pointer 1}  }
	{ c_buff_4_out float 32 regular {pointer 1}  }
	{ c_buff_3_out float 32 regular {pointer 1}  }
	{ c_buff_2_out float 32 regular {pointer 1}  }
	{ c_buff_1_out float 32 regular {pointer 1}  }
	{ c_buff_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c_buff_63_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_62_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_61_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_60_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_59_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_58_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_57_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_56_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_55_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_54_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_53_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_52_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_51_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_50_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_49_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_48_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_47_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_46_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_45_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_44_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_43_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_42_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_41_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_40_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_39_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_38_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_37_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_36_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_35_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_34_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_33_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_32_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_31_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_30_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_28_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_26_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_25_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_24_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_23_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_22_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_21_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_20_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_19_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_18_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_13_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_10_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_buff_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 134
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c_buff_63_out sc_out sc_lv 32 signal 0 } 
	{ c_buff_63_out_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ c_buff_62_out sc_out sc_lv 32 signal 1 } 
	{ c_buff_62_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ c_buff_61_out sc_out sc_lv 32 signal 2 } 
	{ c_buff_61_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ c_buff_60_out sc_out sc_lv 32 signal 3 } 
	{ c_buff_60_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ c_buff_59_out sc_out sc_lv 32 signal 4 } 
	{ c_buff_59_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ c_buff_58_out sc_out sc_lv 32 signal 5 } 
	{ c_buff_58_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ c_buff_57_out sc_out sc_lv 32 signal 6 } 
	{ c_buff_57_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ c_buff_56_out sc_out sc_lv 32 signal 7 } 
	{ c_buff_56_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ c_buff_55_out sc_out sc_lv 32 signal 8 } 
	{ c_buff_55_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ c_buff_54_out sc_out sc_lv 32 signal 9 } 
	{ c_buff_54_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ c_buff_53_out sc_out sc_lv 32 signal 10 } 
	{ c_buff_53_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ c_buff_52_out sc_out sc_lv 32 signal 11 } 
	{ c_buff_52_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ c_buff_51_out sc_out sc_lv 32 signal 12 } 
	{ c_buff_51_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ c_buff_50_out sc_out sc_lv 32 signal 13 } 
	{ c_buff_50_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ c_buff_49_out sc_out sc_lv 32 signal 14 } 
	{ c_buff_49_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ c_buff_48_out sc_out sc_lv 32 signal 15 } 
	{ c_buff_48_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ c_buff_47_out sc_out sc_lv 32 signal 16 } 
	{ c_buff_47_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ c_buff_46_out sc_out sc_lv 32 signal 17 } 
	{ c_buff_46_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ c_buff_45_out sc_out sc_lv 32 signal 18 } 
	{ c_buff_45_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ c_buff_44_out sc_out sc_lv 32 signal 19 } 
	{ c_buff_44_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ c_buff_43_out sc_out sc_lv 32 signal 20 } 
	{ c_buff_43_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ c_buff_42_out sc_out sc_lv 32 signal 21 } 
	{ c_buff_42_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ c_buff_41_out sc_out sc_lv 32 signal 22 } 
	{ c_buff_41_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ c_buff_40_out sc_out sc_lv 32 signal 23 } 
	{ c_buff_40_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ c_buff_39_out sc_out sc_lv 32 signal 24 } 
	{ c_buff_39_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ c_buff_38_out sc_out sc_lv 32 signal 25 } 
	{ c_buff_38_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ c_buff_37_out sc_out sc_lv 32 signal 26 } 
	{ c_buff_37_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ c_buff_36_out sc_out sc_lv 32 signal 27 } 
	{ c_buff_36_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ c_buff_35_out sc_out sc_lv 32 signal 28 } 
	{ c_buff_35_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ c_buff_34_out sc_out sc_lv 32 signal 29 } 
	{ c_buff_34_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ c_buff_33_out sc_out sc_lv 32 signal 30 } 
	{ c_buff_33_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ c_buff_32_out sc_out sc_lv 32 signal 31 } 
	{ c_buff_32_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ c_buff_31_out sc_out sc_lv 32 signal 32 } 
	{ c_buff_31_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ c_buff_30_out sc_out sc_lv 32 signal 33 } 
	{ c_buff_30_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ c_buff_29_out sc_out sc_lv 32 signal 34 } 
	{ c_buff_29_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ c_buff_28_out sc_out sc_lv 32 signal 35 } 
	{ c_buff_28_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ c_buff_27_out sc_out sc_lv 32 signal 36 } 
	{ c_buff_27_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ c_buff_26_out sc_out sc_lv 32 signal 37 } 
	{ c_buff_26_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ c_buff_25_out sc_out sc_lv 32 signal 38 } 
	{ c_buff_25_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ c_buff_24_out sc_out sc_lv 32 signal 39 } 
	{ c_buff_24_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ c_buff_23_out sc_out sc_lv 32 signal 40 } 
	{ c_buff_23_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ c_buff_22_out sc_out sc_lv 32 signal 41 } 
	{ c_buff_22_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ c_buff_21_out sc_out sc_lv 32 signal 42 } 
	{ c_buff_21_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ c_buff_20_out sc_out sc_lv 32 signal 43 } 
	{ c_buff_20_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ c_buff_19_out sc_out sc_lv 32 signal 44 } 
	{ c_buff_19_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ c_buff_18_out sc_out sc_lv 32 signal 45 } 
	{ c_buff_18_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ c_buff_17_out sc_out sc_lv 32 signal 46 } 
	{ c_buff_17_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ c_buff_16_out sc_out sc_lv 32 signal 47 } 
	{ c_buff_16_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ c_buff_15_out sc_out sc_lv 32 signal 48 } 
	{ c_buff_15_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ c_buff_14_out sc_out sc_lv 32 signal 49 } 
	{ c_buff_14_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ c_buff_13_out sc_out sc_lv 32 signal 50 } 
	{ c_buff_13_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ c_buff_12_out sc_out sc_lv 32 signal 51 } 
	{ c_buff_12_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ c_buff_11_out sc_out sc_lv 32 signal 52 } 
	{ c_buff_11_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ c_buff_10_out sc_out sc_lv 32 signal 53 } 
	{ c_buff_10_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ c_buff_9_out sc_out sc_lv 32 signal 54 } 
	{ c_buff_9_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ c_buff_8_out sc_out sc_lv 32 signal 55 } 
	{ c_buff_8_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ c_buff_7_out sc_out sc_lv 32 signal 56 } 
	{ c_buff_7_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ c_buff_6_out sc_out sc_lv 32 signal 57 } 
	{ c_buff_6_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ c_buff_5_out sc_out sc_lv 32 signal 58 } 
	{ c_buff_5_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ c_buff_4_out sc_out sc_lv 32 signal 59 } 
	{ c_buff_4_out_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ c_buff_3_out sc_out sc_lv 32 signal 60 } 
	{ c_buff_3_out_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ c_buff_2_out sc_out sc_lv 32 signal 61 } 
	{ c_buff_2_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ c_buff_1_out sc_out sc_lv 32 signal 62 } 
	{ c_buff_1_out_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ c_buff_out sc_out sc_lv 32 signal 63 } 
	{ c_buff_out_ap_vld sc_out sc_logic 1 outvld 63 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c_buff_63_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_63_out", "role": "default" }} , 
 	{ "name": "c_buff_63_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_63_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_62_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_62_out", "role": "default" }} , 
 	{ "name": "c_buff_62_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_62_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_61_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_61_out", "role": "default" }} , 
 	{ "name": "c_buff_61_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_61_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_60_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_60_out", "role": "default" }} , 
 	{ "name": "c_buff_60_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_60_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_59_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_59_out", "role": "default" }} , 
 	{ "name": "c_buff_59_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_59_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_58_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_58_out", "role": "default" }} , 
 	{ "name": "c_buff_58_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_58_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_57_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_57_out", "role": "default" }} , 
 	{ "name": "c_buff_57_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_57_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_56_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_56_out", "role": "default" }} , 
 	{ "name": "c_buff_56_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_56_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_55_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_55_out", "role": "default" }} , 
 	{ "name": "c_buff_55_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_55_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_54_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_54_out", "role": "default" }} , 
 	{ "name": "c_buff_54_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_54_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_53_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_53_out", "role": "default" }} , 
 	{ "name": "c_buff_53_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_53_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_52_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_52_out", "role": "default" }} , 
 	{ "name": "c_buff_52_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_52_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_51_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_51_out", "role": "default" }} , 
 	{ "name": "c_buff_51_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_51_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_50_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_50_out", "role": "default" }} , 
 	{ "name": "c_buff_50_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_50_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_49_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_49_out", "role": "default" }} , 
 	{ "name": "c_buff_49_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_49_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_48_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_48_out", "role": "default" }} , 
 	{ "name": "c_buff_48_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_48_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_47_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_47_out", "role": "default" }} , 
 	{ "name": "c_buff_47_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_47_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_46_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_46_out", "role": "default" }} , 
 	{ "name": "c_buff_46_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_46_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_45_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_45_out", "role": "default" }} , 
 	{ "name": "c_buff_45_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_45_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_44_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_44_out", "role": "default" }} , 
 	{ "name": "c_buff_44_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_44_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_43_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_43_out", "role": "default" }} , 
 	{ "name": "c_buff_43_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_43_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_42_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_42_out", "role": "default" }} , 
 	{ "name": "c_buff_42_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_42_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_41_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_41_out", "role": "default" }} , 
 	{ "name": "c_buff_41_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_41_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_40_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_40_out", "role": "default" }} , 
 	{ "name": "c_buff_40_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_40_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_39_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_39_out", "role": "default" }} , 
 	{ "name": "c_buff_39_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_39_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_38_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_38_out", "role": "default" }} , 
 	{ "name": "c_buff_38_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_38_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_37_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_37_out", "role": "default" }} , 
 	{ "name": "c_buff_37_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_37_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_36_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_36_out", "role": "default" }} , 
 	{ "name": "c_buff_36_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_36_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_35_out", "role": "default" }} , 
 	{ "name": "c_buff_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_35_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_34_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_34_out", "role": "default" }} , 
 	{ "name": "c_buff_34_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_34_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_33_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_33_out", "role": "default" }} , 
 	{ "name": "c_buff_33_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_33_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_32_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_32_out", "role": "default" }} , 
 	{ "name": "c_buff_32_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_32_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_31_out", "role": "default" }} , 
 	{ "name": "c_buff_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_31_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_30_out", "role": "default" }} , 
 	{ "name": "c_buff_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_30_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_29_out", "role": "default" }} , 
 	{ "name": "c_buff_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_29_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_28_out", "role": "default" }} , 
 	{ "name": "c_buff_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_28_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_27_out", "role": "default" }} , 
 	{ "name": "c_buff_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_27_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_26_out", "role": "default" }} , 
 	{ "name": "c_buff_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_26_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_25_out", "role": "default" }} , 
 	{ "name": "c_buff_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_25_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_24_out", "role": "default" }} , 
 	{ "name": "c_buff_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_24_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_23_out", "role": "default" }} , 
 	{ "name": "c_buff_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_23_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_22_out", "role": "default" }} , 
 	{ "name": "c_buff_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_22_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_21_out", "role": "default" }} , 
 	{ "name": "c_buff_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_21_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_20_out", "role": "default" }} , 
 	{ "name": "c_buff_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_20_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_19_out", "role": "default" }} , 
 	{ "name": "c_buff_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_19_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_18_out", "role": "default" }} , 
 	{ "name": "c_buff_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_18_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_17_out", "role": "default" }} , 
 	{ "name": "c_buff_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_17_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_16_out", "role": "default" }} , 
 	{ "name": "c_buff_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_16_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_15_out", "role": "default" }} , 
 	{ "name": "c_buff_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_15_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_14_out", "role": "default" }} , 
 	{ "name": "c_buff_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_14_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_13_out", "role": "default" }} , 
 	{ "name": "c_buff_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_13_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_12_out", "role": "default" }} , 
 	{ "name": "c_buff_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_12_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_11_out", "role": "default" }} , 
 	{ "name": "c_buff_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_11_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_10_out", "role": "default" }} , 
 	{ "name": "c_buff_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_10_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_9_out", "role": "default" }} , 
 	{ "name": "c_buff_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_9_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_8_out", "role": "default" }} , 
 	{ "name": "c_buff_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_8_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_7_out", "role": "default" }} , 
 	{ "name": "c_buff_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_7_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_6_out", "role": "default" }} , 
 	{ "name": "c_buff_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_6_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_5_out", "role": "default" }} , 
 	{ "name": "c_buff_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_5_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_4_out", "role": "default" }} , 
 	{ "name": "c_buff_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_4_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_3_out", "role": "default" }} , 
 	{ "name": "c_buff_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_3_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_2_out", "role": "default" }} , 
 	{ "name": "c_buff_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_2_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_1_out", "role": "default" }} , 
 	{ "name": "c_buff_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_1_out", "role": "ap_vld" }} , 
 	{ "name": "c_buff_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_buff_out", "role": "default" }} , 
 	{ "name": "c_buff_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_buff_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		c_buff_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	c_buff_63_out { ap_vld {  { c_buff_63_out out_data 1 32 }  { c_buff_63_out_ap_vld out_vld 1 1 } } }
	c_buff_62_out { ap_vld {  { c_buff_62_out out_data 1 32 }  { c_buff_62_out_ap_vld out_vld 1 1 } } }
	c_buff_61_out { ap_vld {  { c_buff_61_out out_data 1 32 }  { c_buff_61_out_ap_vld out_vld 1 1 } } }
	c_buff_60_out { ap_vld {  { c_buff_60_out out_data 1 32 }  { c_buff_60_out_ap_vld out_vld 1 1 } } }
	c_buff_59_out { ap_vld {  { c_buff_59_out out_data 1 32 }  { c_buff_59_out_ap_vld out_vld 1 1 } } }
	c_buff_58_out { ap_vld {  { c_buff_58_out out_data 1 32 }  { c_buff_58_out_ap_vld out_vld 1 1 } } }
	c_buff_57_out { ap_vld {  { c_buff_57_out out_data 1 32 }  { c_buff_57_out_ap_vld out_vld 1 1 } } }
	c_buff_56_out { ap_vld {  { c_buff_56_out out_data 1 32 }  { c_buff_56_out_ap_vld out_vld 1 1 } } }
	c_buff_55_out { ap_vld {  { c_buff_55_out out_data 1 32 }  { c_buff_55_out_ap_vld out_vld 1 1 } } }
	c_buff_54_out { ap_vld {  { c_buff_54_out out_data 1 32 }  { c_buff_54_out_ap_vld out_vld 1 1 } } }
	c_buff_53_out { ap_vld {  { c_buff_53_out out_data 1 32 }  { c_buff_53_out_ap_vld out_vld 1 1 } } }
	c_buff_52_out { ap_vld {  { c_buff_52_out out_data 1 32 }  { c_buff_52_out_ap_vld out_vld 1 1 } } }
	c_buff_51_out { ap_vld {  { c_buff_51_out out_data 1 32 }  { c_buff_51_out_ap_vld out_vld 1 1 } } }
	c_buff_50_out { ap_vld {  { c_buff_50_out out_data 1 32 }  { c_buff_50_out_ap_vld out_vld 1 1 } } }
	c_buff_49_out { ap_vld {  { c_buff_49_out out_data 1 32 }  { c_buff_49_out_ap_vld out_vld 1 1 } } }
	c_buff_48_out { ap_vld {  { c_buff_48_out out_data 1 32 }  { c_buff_48_out_ap_vld out_vld 1 1 } } }
	c_buff_47_out { ap_vld {  { c_buff_47_out out_data 1 32 }  { c_buff_47_out_ap_vld out_vld 1 1 } } }
	c_buff_46_out { ap_vld {  { c_buff_46_out out_data 1 32 }  { c_buff_46_out_ap_vld out_vld 1 1 } } }
	c_buff_45_out { ap_vld {  { c_buff_45_out out_data 1 32 }  { c_buff_45_out_ap_vld out_vld 1 1 } } }
	c_buff_44_out { ap_vld {  { c_buff_44_out out_data 1 32 }  { c_buff_44_out_ap_vld out_vld 1 1 } } }
	c_buff_43_out { ap_vld {  { c_buff_43_out out_data 1 32 }  { c_buff_43_out_ap_vld out_vld 1 1 } } }
	c_buff_42_out { ap_vld {  { c_buff_42_out out_data 1 32 }  { c_buff_42_out_ap_vld out_vld 1 1 } } }
	c_buff_41_out { ap_vld {  { c_buff_41_out out_data 1 32 }  { c_buff_41_out_ap_vld out_vld 1 1 } } }
	c_buff_40_out { ap_vld {  { c_buff_40_out out_data 1 32 }  { c_buff_40_out_ap_vld out_vld 1 1 } } }
	c_buff_39_out { ap_vld {  { c_buff_39_out out_data 1 32 }  { c_buff_39_out_ap_vld out_vld 1 1 } } }
	c_buff_38_out { ap_vld {  { c_buff_38_out out_data 1 32 }  { c_buff_38_out_ap_vld out_vld 1 1 } } }
	c_buff_37_out { ap_vld {  { c_buff_37_out out_data 1 32 }  { c_buff_37_out_ap_vld out_vld 1 1 } } }
	c_buff_36_out { ap_vld {  { c_buff_36_out out_data 1 32 }  { c_buff_36_out_ap_vld out_vld 1 1 } } }
	c_buff_35_out { ap_vld {  { c_buff_35_out out_data 1 32 }  { c_buff_35_out_ap_vld out_vld 1 1 } } }
	c_buff_34_out { ap_vld {  { c_buff_34_out out_data 1 32 }  { c_buff_34_out_ap_vld out_vld 1 1 } } }
	c_buff_33_out { ap_vld {  { c_buff_33_out out_data 1 32 }  { c_buff_33_out_ap_vld out_vld 1 1 } } }
	c_buff_32_out { ap_vld {  { c_buff_32_out out_data 1 32 }  { c_buff_32_out_ap_vld out_vld 1 1 } } }
	c_buff_31_out { ap_vld {  { c_buff_31_out out_data 1 32 }  { c_buff_31_out_ap_vld out_vld 1 1 } } }
	c_buff_30_out { ap_vld {  { c_buff_30_out out_data 1 32 }  { c_buff_30_out_ap_vld out_vld 1 1 } } }
	c_buff_29_out { ap_vld {  { c_buff_29_out out_data 1 32 }  { c_buff_29_out_ap_vld out_vld 1 1 } } }
	c_buff_28_out { ap_vld {  { c_buff_28_out out_data 1 32 }  { c_buff_28_out_ap_vld out_vld 1 1 } } }
	c_buff_27_out { ap_vld {  { c_buff_27_out out_data 1 32 }  { c_buff_27_out_ap_vld out_vld 1 1 } } }
	c_buff_26_out { ap_vld {  { c_buff_26_out out_data 1 32 }  { c_buff_26_out_ap_vld out_vld 1 1 } } }
	c_buff_25_out { ap_vld {  { c_buff_25_out out_data 1 32 }  { c_buff_25_out_ap_vld out_vld 1 1 } } }
	c_buff_24_out { ap_vld {  { c_buff_24_out out_data 1 32 }  { c_buff_24_out_ap_vld out_vld 1 1 } } }
	c_buff_23_out { ap_vld {  { c_buff_23_out out_data 1 32 }  { c_buff_23_out_ap_vld out_vld 1 1 } } }
	c_buff_22_out { ap_vld {  { c_buff_22_out out_data 1 32 }  { c_buff_22_out_ap_vld out_vld 1 1 } } }
	c_buff_21_out { ap_vld {  { c_buff_21_out out_data 1 32 }  { c_buff_21_out_ap_vld out_vld 1 1 } } }
	c_buff_20_out { ap_vld {  { c_buff_20_out out_data 1 32 }  { c_buff_20_out_ap_vld out_vld 1 1 } } }
	c_buff_19_out { ap_vld {  { c_buff_19_out out_data 1 32 }  { c_buff_19_out_ap_vld out_vld 1 1 } } }
	c_buff_18_out { ap_vld {  { c_buff_18_out out_data 1 32 }  { c_buff_18_out_ap_vld out_vld 1 1 } } }
	c_buff_17_out { ap_vld {  { c_buff_17_out out_data 1 32 }  { c_buff_17_out_ap_vld out_vld 1 1 } } }
	c_buff_16_out { ap_vld {  { c_buff_16_out out_data 1 32 }  { c_buff_16_out_ap_vld out_vld 1 1 } } }
	c_buff_15_out { ap_vld {  { c_buff_15_out out_data 1 32 }  { c_buff_15_out_ap_vld out_vld 1 1 } } }
	c_buff_14_out { ap_vld {  { c_buff_14_out out_data 1 32 }  { c_buff_14_out_ap_vld out_vld 1 1 } } }
	c_buff_13_out { ap_vld {  { c_buff_13_out out_data 1 32 }  { c_buff_13_out_ap_vld out_vld 1 1 } } }
	c_buff_12_out { ap_vld {  { c_buff_12_out out_data 1 32 }  { c_buff_12_out_ap_vld out_vld 1 1 } } }
	c_buff_11_out { ap_vld {  { c_buff_11_out out_data 1 32 }  { c_buff_11_out_ap_vld out_vld 1 1 } } }
	c_buff_10_out { ap_vld {  { c_buff_10_out out_data 1 32 }  { c_buff_10_out_ap_vld out_vld 1 1 } } }
	c_buff_9_out { ap_vld {  { c_buff_9_out out_data 1 32 }  { c_buff_9_out_ap_vld out_vld 1 1 } } }
	c_buff_8_out { ap_vld {  { c_buff_8_out out_data 1 32 }  { c_buff_8_out_ap_vld out_vld 1 1 } } }
	c_buff_7_out { ap_vld {  { c_buff_7_out out_data 1 32 }  { c_buff_7_out_ap_vld out_vld 1 1 } } }
	c_buff_6_out { ap_vld {  { c_buff_6_out out_data 1 32 }  { c_buff_6_out_ap_vld out_vld 1 1 } } }
	c_buff_5_out { ap_vld {  { c_buff_5_out out_data 1 32 }  { c_buff_5_out_ap_vld out_vld 1 1 } } }
	c_buff_4_out { ap_vld {  { c_buff_4_out out_data 1 32 }  { c_buff_4_out_ap_vld out_vld 1 1 } } }
	c_buff_3_out { ap_vld {  { c_buff_3_out out_data 1 32 }  { c_buff_3_out_ap_vld out_vld 1 1 } } }
	c_buff_2_out { ap_vld {  { c_buff_2_out out_data 1 32 }  { c_buff_2_out_ap_vld out_vld 1 1 } } }
	c_buff_1_out { ap_vld {  { c_buff_1_out out_data 1 32 }  { c_buff_1_out_ap_vld out_vld 1 1 } } }
	c_buff_out { ap_vld {  { c_buff_out out_data 1 32 }  { c_buff_out_ap_vld out_vld 1 1 } } }
}
