set moduleName mm_Pipeline_row
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
set C_modelName {mm_Pipeline_row}
set C_modelType { void 0 }
set C_modelArgList {
	{ AB_buff_7 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_buff_6 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_buff_5 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_buff_4 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_buff_3 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_buff_2 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_buff_1 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_buff int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ A_buff int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ B_buff_reload int 32 regular  }
	{ A_buff_1 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ B_buff_8_reload int 32 regular  }
	{ A_buff_2 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ B_buff_16_reload int 32 regular  }
	{ A_buff_3 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ B_buff_24_reload int 32 regular  }
	{ A_buff_4 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ B_buff_32_reload int 32 regular  }
	{ A_buff_5 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ B_buff_40_reload int 32 regular  }
	{ A_buff_6 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ B_buff_48_reload int 32 regular  }
	{ A_buff_7 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ B_buff_56_reload int 32 regular  }
	{ B_buff_1_reload int 32 regular  }
	{ B_buff_9_reload int 32 regular  }
	{ B_buff_17_reload int 32 regular  }
	{ B_buff_25_reload int 32 regular  }
	{ B_buff_33_reload int 32 regular  }
	{ B_buff_41_reload int 32 regular  }
	{ B_buff_49_reload int 32 regular  }
	{ B_buff_57_reload int 32 regular  }
	{ B_buff_2_reload int 32 regular  }
	{ B_buff_10_reload int 32 regular  }
	{ B_buff_18_reload int 32 regular  }
	{ B_buff_26_reload int 32 regular  }
	{ B_buff_34_reload int 32 regular  }
	{ B_buff_42_reload int 32 regular  }
	{ B_buff_50_reload int 32 regular  }
	{ B_buff_58_reload int 32 regular  }
	{ B_buff_3_reload int 32 regular  }
	{ B_buff_11_reload int 32 regular  }
	{ B_buff_19_reload int 32 regular  }
	{ B_buff_27_reload int 32 regular  }
	{ B_buff_35_reload int 32 regular  }
	{ B_buff_43_reload int 32 regular  }
	{ B_buff_51_reload int 32 regular  }
	{ B_buff_59_reload int 32 regular  }
	{ B_buff_4_reload int 32 regular  }
	{ B_buff_12_reload int 32 regular  }
	{ B_buff_20_reload int 32 regular  }
	{ B_buff_28_reload int 32 regular  }
	{ B_buff_36_reload int 32 regular  }
	{ B_buff_44_reload int 32 regular  }
	{ B_buff_52_reload int 32 regular  }
	{ B_buff_60_reload int 32 regular  }
	{ B_buff_5_reload int 32 regular  }
	{ B_buff_13_reload int 32 regular  }
	{ B_buff_21_reload int 32 regular  }
	{ B_buff_29_reload int 32 regular  }
	{ B_buff_37_reload int 32 regular  }
	{ B_buff_45_reload int 32 regular  }
	{ B_buff_53_reload int 32 regular  }
	{ B_buff_61_reload int 32 regular  }
	{ B_buff_6_reload int 32 regular  }
	{ B_buff_14_reload int 32 regular  }
	{ B_buff_22_reload int 32 regular  }
	{ B_buff_30_reload int 32 regular  }
	{ B_buff_38_reload int 32 regular  }
	{ B_buff_46_reload int 32 regular  }
	{ B_buff_54_reload int 32 regular  }
	{ B_buff_62_reload int 32 regular  }
	{ B_buff_7_reload int 32 regular  }
	{ B_buff_15_reload int 32 regular  }
	{ B_buff_23_reload int 32 regular  }
	{ B_buff_31_reload int 32 regular  }
	{ B_buff_39_reload int 32 regular  }
	{ B_buff_47_reload int 32 regular  }
	{ B_buff_55_reload int 32 regular  }
	{ B_buff_63_reload int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "AB_buff_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_buff_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_buff_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_buff_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_buff_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_buff_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_buff_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_buff", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_buff", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_buff_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_8_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_buff_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_16_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_buff_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_24_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_buff_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_32_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_buff_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_40_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_buff_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_48_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_buff_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_56_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_9_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_17_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_25_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_33_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_41_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_49_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_57_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_10_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_18_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_26_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_34_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_42_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_50_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_58_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_11_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_19_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_27_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_35_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_43_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_51_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_59_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_12_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_20_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_28_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_36_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_44_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_52_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_60_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_13_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_21_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_29_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_37_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_45_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_53_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_61_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_6_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_14_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_22_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_30_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_38_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_46_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_54_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_62_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_7_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_15_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_23_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_31_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_39_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_47_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_55_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_buff_63_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 126
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ AB_buff_7_address0 sc_out sc_lv 3 signal 0 } 
	{ AB_buff_7_ce0 sc_out sc_logic 1 signal 0 } 
	{ AB_buff_7_we0 sc_out sc_logic 1 signal 0 } 
	{ AB_buff_7_d0 sc_out sc_lv 32 signal 0 } 
	{ AB_buff_6_address0 sc_out sc_lv 3 signal 1 } 
	{ AB_buff_6_ce0 sc_out sc_logic 1 signal 1 } 
	{ AB_buff_6_we0 sc_out sc_logic 1 signal 1 } 
	{ AB_buff_6_d0 sc_out sc_lv 32 signal 1 } 
	{ AB_buff_5_address0 sc_out sc_lv 3 signal 2 } 
	{ AB_buff_5_ce0 sc_out sc_logic 1 signal 2 } 
	{ AB_buff_5_we0 sc_out sc_logic 1 signal 2 } 
	{ AB_buff_5_d0 sc_out sc_lv 32 signal 2 } 
	{ AB_buff_4_address0 sc_out sc_lv 3 signal 3 } 
	{ AB_buff_4_ce0 sc_out sc_logic 1 signal 3 } 
	{ AB_buff_4_we0 sc_out sc_logic 1 signal 3 } 
	{ AB_buff_4_d0 sc_out sc_lv 32 signal 3 } 
	{ AB_buff_3_address0 sc_out sc_lv 3 signal 4 } 
	{ AB_buff_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ AB_buff_3_we0 sc_out sc_logic 1 signal 4 } 
	{ AB_buff_3_d0 sc_out sc_lv 32 signal 4 } 
	{ AB_buff_2_address0 sc_out sc_lv 3 signal 5 } 
	{ AB_buff_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ AB_buff_2_we0 sc_out sc_logic 1 signal 5 } 
	{ AB_buff_2_d0 sc_out sc_lv 32 signal 5 } 
	{ AB_buff_1_address0 sc_out sc_lv 3 signal 6 } 
	{ AB_buff_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ AB_buff_1_we0 sc_out sc_logic 1 signal 6 } 
	{ AB_buff_1_d0 sc_out sc_lv 32 signal 6 } 
	{ AB_buff_address0 sc_out sc_lv 3 signal 7 } 
	{ AB_buff_ce0 sc_out sc_logic 1 signal 7 } 
	{ AB_buff_we0 sc_out sc_logic 1 signal 7 } 
	{ AB_buff_d0 sc_out sc_lv 32 signal 7 } 
	{ A_buff_address0 sc_out sc_lv 3 signal 8 } 
	{ A_buff_ce0 sc_out sc_logic 1 signal 8 } 
	{ A_buff_q0 sc_in sc_lv 32 signal 8 } 
	{ B_buff_reload sc_in sc_lv 32 signal 9 } 
	{ A_buff_1_address0 sc_out sc_lv 3 signal 10 } 
	{ A_buff_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ A_buff_1_q0 sc_in sc_lv 32 signal 10 } 
	{ B_buff_8_reload sc_in sc_lv 32 signal 11 } 
	{ A_buff_2_address0 sc_out sc_lv 3 signal 12 } 
	{ A_buff_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ A_buff_2_q0 sc_in sc_lv 32 signal 12 } 
	{ B_buff_16_reload sc_in sc_lv 32 signal 13 } 
	{ A_buff_3_address0 sc_out sc_lv 3 signal 14 } 
	{ A_buff_3_ce0 sc_out sc_logic 1 signal 14 } 
	{ A_buff_3_q0 sc_in sc_lv 32 signal 14 } 
	{ B_buff_24_reload sc_in sc_lv 32 signal 15 } 
	{ A_buff_4_address0 sc_out sc_lv 3 signal 16 } 
	{ A_buff_4_ce0 sc_out sc_logic 1 signal 16 } 
	{ A_buff_4_q0 sc_in sc_lv 32 signal 16 } 
	{ B_buff_32_reload sc_in sc_lv 32 signal 17 } 
	{ A_buff_5_address0 sc_out sc_lv 3 signal 18 } 
	{ A_buff_5_ce0 sc_out sc_logic 1 signal 18 } 
	{ A_buff_5_q0 sc_in sc_lv 32 signal 18 } 
	{ B_buff_40_reload sc_in sc_lv 32 signal 19 } 
	{ A_buff_6_address0 sc_out sc_lv 3 signal 20 } 
	{ A_buff_6_ce0 sc_out sc_logic 1 signal 20 } 
	{ A_buff_6_q0 sc_in sc_lv 32 signal 20 } 
	{ B_buff_48_reload sc_in sc_lv 32 signal 21 } 
	{ A_buff_7_address0 sc_out sc_lv 3 signal 22 } 
	{ A_buff_7_ce0 sc_out sc_logic 1 signal 22 } 
	{ A_buff_7_q0 sc_in sc_lv 32 signal 22 } 
	{ B_buff_56_reload sc_in sc_lv 32 signal 23 } 
	{ B_buff_1_reload sc_in sc_lv 32 signal 24 } 
	{ B_buff_9_reload sc_in sc_lv 32 signal 25 } 
	{ B_buff_17_reload sc_in sc_lv 32 signal 26 } 
	{ B_buff_25_reload sc_in sc_lv 32 signal 27 } 
	{ B_buff_33_reload sc_in sc_lv 32 signal 28 } 
	{ B_buff_41_reload sc_in sc_lv 32 signal 29 } 
	{ B_buff_49_reload sc_in sc_lv 32 signal 30 } 
	{ B_buff_57_reload sc_in sc_lv 32 signal 31 } 
	{ B_buff_2_reload sc_in sc_lv 32 signal 32 } 
	{ B_buff_10_reload sc_in sc_lv 32 signal 33 } 
	{ B_buff_18_reload sc_in sc_lv 32 signal 34 } 
	{ B_buff_26_reload sc_in sc_lv 32 signal 35 } 
	{ B_buff_34_reload sc_in sc_lv 32 signal 36 } 
	{ B_buff_42_reload sc_in sc_lv 32 signal 37 } 
	{ B_buff_50_reload sc_in sc_lv 32 signal 38 } 
	{ B_buff_58_reload sc_in sc_lv 32 signal 39 } 
	{ B_buff_3_reload sc_in sc_lv 32 signal 40 } 
	{ B_buff_11_reload sc_in sc_lv 32 signal 41 } 
	{ B_buff_19_reload sc_in sc_lv 32 signal 42 } 
	{ B_buff_27_reload sc_in sc_lv 32 signal 43 } 
	{ B_buff_35_reload sc_in sc_lv 32 signal 44 } 
	{ B_buff_43_reload sc_in sc_lv 32 signal 45 } 
	{ B_buff_51_reload sc_in sc_lv 32 signal 46 } 
	{ B_buff_59_reload sc_in sc_lv 32 signal 47 } 
	{ B_buff_4_reload sc_in sc_lv 32 signal 48 } 
	{ B_buff_12_reload sc_in sc_lv 32 signal 49 } 
	{ B_buff_20_reload sc_in sc_lv 32 signal 50 } 
	{ B_buff_28_reload sc_in sc_lv 32 signal 51 } 
	{ B_buff_36_reload sc_in sc_lv 32 signal 52 } 
	{ B_buff_44_reload sc_in sc_lv 32 signal 53 } 
	{ B_buff_52_reload sc_in sc_lv 32 signal 54 } 
	{ B_buff_60_reload sc_in sc_lv 32 signal 55 } 
	{ B_buff_5_reload sc_in sc_lv 32 signal 56 } 
	{ B_buff_13_reload sc_in sc_lv 32 signal 57 } 
	{ B_buff_21_reload sc_in sc_lv 32 signal 58 } 
	{ B_buff_29_reload sc_in sc_lv 32 signal 59 } 
	{ B_buff_37_reload sc_in sc_lv 32 signal 60 } 
	{ B_buff_45_reload sc_in sc_lv 32 signal 61 } 
	{ B_buff_53_reload sc_in sc_lv 32 signal 62 } 
	{ B_buff_61_reload sc_in sc_lv 32 signal 63 } 
	{ B_buff_6_reload sc_in sc_lv 32 signal 64 } 
	{ B_buff_14_reload sc_in sc_lv 32 signal 65 } 
	{ B_buff_22_reload sc_in sc_lv 32 signal 66 } 
	{ B_buff_30_reload sc_in sc_lv 32 signal 67 } 
	{ B_buff_38_reload sc_in sc_lv 32 signal 68 } 
	{ B_buff_46_reload sc_in sc_lv 32 signal 69 } 
	{ B_buff_54_reload sc_in sc_lv 32 signal 70 } 
	{ B_buff_62_reload sc_in sc_lv 32 signal 71 } 
	{ B_buff_7_reload sc_in sc_lv 32 signal 72 } 
	{ B_buff_15_reload sc_in sc_lv 32 signal 73 } 
	{ B_buff_23_reload sc_in sc_lv 32 signal 74 } 
	{ B_buff_31_reload sc_in sc_lv 32 signal 75 } 
	{ B_buff_39_reload sc_in sc_lv 32 signal 76 } 
	{ B_buff_47_reload sc_in sc_lv 32 signal 77 } 
	{ B_buff_55_reload sc_in sc_lv 32 signal 78 } 
	{ B_buff_63_reload sc_in sc_lv 32 signal 79 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "AB_buff_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_7", "role": "address0" }} , 
 	{ "name": "AB_buff_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_7", "role": "ce0" }} , 
 	{ "name": "AB_buff_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_7", "role": "we0" }} , 
 	{ "name": "AB_buff_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_7", "role": "d0" }} , 
 	{ "name": "AB_buff_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_6", "role": "address0" }} , 
 	{ "name": "AB_buff_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_6", "role": "ce0" }} , 
 	{ "name": "AB_buff_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_6", "role": "we0" }} , 
 	{ "name": "AB_buff_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_6", "role": "d0" }} , 
 	{ "name": "AB_buff_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_5", "role": "address0" }} , 
 	{ "name": "AB_buff_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_5", "role": "ce0" }} , 
 	{ "name": "AB_buff_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_5", "role": "we0" }} , 
 	{ "name": "AB_buff_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_5", "role": "d0" }} , 
 	{ "name": "AB_buff_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_4", "role": "address0" }} , 
 	{ "name": "AB_buff_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_4", "role": "ce0" }} , 
 	{ "name": "AB_buff_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_4", "role": "we0" }} , 
 	{ "name": "AB_buff_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_4", "role": "d0" }} , 
 	{ "name": "AB_buff_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_3", "role": "address0" }} , 
 	{ "name": "AB_buff_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_3", "role": "ce0" }} , 
 	{ "name": "AB_buff_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_3", "role": "we0" }} , 
 	{ "name": "AB_buff_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_3", "role": "d0" }} , 
 	{ "name": "AB_buff_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_2", "role": "address0" }} , 
 	{ "name": "AB_buff_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_2", "role": "ce0" }} , 
 	{ "name": "AB_buff_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_2", "role": "we0" }} , 
 	{ "name": "AB_buff_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_2", "role": "d0" }} , 
 	{ "name": "AB_buff_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff_1", "role": "address0" }} , 
 	{ "name": "AB_buff_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_1", "role": "ce0" }} , 
 	{ "name": "AB_buff_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff_1", "role": "we0" }} , 
 	{ "name": "AB_buff_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff_1", "role": "d0" }} , 
 	{ "name": "AB_buff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_buff", "role": "address0" }} , 
 	{ "name": "AB_buff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff", "role": "ce0" }} , 
 	{ "name": "AB_buff_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_buff", "role": "we0" }} , 
 	{ "name": "AB_buff_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_buff", "role": "d0" }} , 
 	{ "name": "A_buff_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_buff", "role": "address0" }} , 
 	{ "name": "A_buff_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_buff", "role": "ce0" }} , 
 	{ "name": "A_buff_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_buff", "role": "q0" }} , 
 	{ "name": "B_buff_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_reload", "role": "default" }} , 
 	{ "name": "A_buff_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_buff_1", "role": "address0" }} , 
 	{ "name": "A_buff_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_buff_1", "role": "ce0" }} , 
 	{ "name": "A_buff_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_buff_1", "role": "q0" }} , 
 	{ "name": "B_buff_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_8_reload", "role": "default" }} , 
 	{ "name": "A_buff_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_buff_2", "role": "address0" }} , 
 	{ "name": "A_buff_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_buff_2", "role": "ce0" }} , 
 	{ "name": "A_buff_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_buff_2", "role": "q0" }} , 
 	{ "name": "B_buff_16_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_16_reload", "role": "default" }} , 
 	{ "name": "A_buff_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_buff_3", "role": "address0" }} , 
 	{ "name": "A_buff_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_buff_3", "role": "ce0" }} , 
 	{ "name": "A_buff_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_buff_3", "role": "q0" }} , 
 	{ "name": "B_buff_24_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_24_reload", "role": "default" }} , 
 	{ "name": "A_buff_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_buff_4", "role": "address0" }} , 
 	{ "name": "A_buff_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_buff_4", "role": "ce0" }} , 
 	{ "name": "A_buff_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_buff_4", "role": "q0" }} , 
 	{ "name": "B_buff_32_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_32_reload", "role": "default" }} , 
 	{ "name": "A_buff_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_buff_5", "role": "address0" }} , 
 	{ "name": "A_buff_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_buff_5", "role": "ce0" }} , 
 	{ "name": "A_buff_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_buff_5", "role": "q0" }} , 
 	{ "name": "B_buff_40_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_40_reload", "role": "default" }} , 
 	{ "name": "A_buff_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_buff_6", "role": "address0" }} , 
 	{ "name": "A_buff_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_buff_6", "role": "ce0" }} , 
 	{ "name": "A_buff_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_buff_6", "role": "q0" }} , 
 	{ "name": "B_buff_48_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_48_reload", "role": "default" }} , 
 	{ "name": "A_buff_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_buff_7", "role": "address0" }} , 
 	{ "name": "A_buff_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_buff_7", "role": "ce0" }} , 
 	{ "name": "A_buff_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_buff_7", "role": "q0" }} , 
 	{ "name": "B_buff_56_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_56_reload", "role": "default" }} , 
 	{ "name": "B_buff_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_1_reload", "role": "default" }} , 
 	{ "name": "B_buff_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_9_reload", "role": "default" }} , 
 	{ "name": "B_buff_17_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_17_reload", "role": "default" }} , 
 	{ "name": "B_buff_25_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_25_reload", "role": "default" }} , 
 	{ "name": "B_buff_33_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_33_reload", "role": "default" }} , 
 	{ "name": "B_buff_41_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_41_reload", "role": "default" }} , 
 	{ "name": "B_buff_49_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_49_reload", "role": "default" }} , 
 	{ "name": "B_buff_57_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_57_reload", "role": "default" }} , 
 	{ "name": "B_buff_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_2_reload", "role": "default" }} , 
 	{ "name": "B_buff_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_10_reload", "role": "default" }} , 
 	{ "name": "B_buff_18_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_18_reload", "role": "default" }} , 
 	{ "name": "B_buff_26_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_26_reload", "role": "default" }} , 
 	{ "name": "B_buff_34_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_34_reload", "role": "default" }} , 
 	{ "name": "B_buff_42_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_42_reload", "role": "default" }} , 
 	{ "name": "B_buff_50_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_50_reload", "role": "default" }} , 
 	{ "name": "B_buff_58_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_58_reload", "role": "default" }} , 
 	{ "name": "B_buff_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_3_reload", "role": "default" }} , 
 	{ "name": "B_buff_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_11_reload", "role": "default" }} , 
 	{ "name": "B_buff_19_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_19_reload", "role": "default" }} , 
 	{ "name": "B_buff_27_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_27_reload", "role": "default" }} , 
 	{ "name": "B_buff_35_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_35_reload", "role": "default" }} , 
 	{ "name": "B_buff_43_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_43_reload", "role": "default" }} , 
 	{ "name": "B_buff_51_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_51_reload", "role": "default" }} , 
 	{ "name": "B_buff_59_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_59_reload", "role": "default" }} , 
 	{ "name": "B_buff_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_4_reload", "role": "default" }} , 
 	{ "name": "B_buff_12_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_12_reload", "role": "default" }} , 
 	{ "name": "B_buff_20_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_20_reload", "role": "default" }} , 
 	{ "name": "B_buff_28_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_28_reload", "role": "default" }} , 
 	{ "name": "B_buff_36_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_36_reload", "role": "default" }} , 
 	{ "name": "B_buff_44_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_44_reload", "role": "default" }} , 
 	{ "name": "B_buff_52_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_52_reload", "role": "default" }} , 
 	{ "name": "B_buff_60_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_60_reload", "role": "default" }} , 
 	{ "name": "B_buff_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_5_reload", "role": "default" }} , 
 	{ "name": "B_buff_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_13_reload", "role": "default" }} , 
 	{ "name": "B_buff_21_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_21_reload", "role": "default" }} , 
 	{ "name": "B_buff_29_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_29_reload", "role": "default" }} , 
 	{ "name": "B_buff_37_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_37_reload", "role": "default" }} , 
 	{ "name": "B_buff_45_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_45_reload", "role": "default" }} , 
 	{ "name": "B_buff_53_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_53_reload", "role": "default" }} , 
 	{ "name": "B_buff_61_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_61_reload", "role": "default" }} , 
 	{ "name": "B_buff_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_6_reload", "role": "default" }} , 
 	{ "name": "B_buff_14_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_14_reload", "role": "default" }} , 
 	{ "name": "B_buff_22_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_22_reload", "role": "default" }} , 
 	{ "name": "B_buff_30_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_30_reload", "role": "default" }} , 
 	{ "name": "B_buff_38_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_38_reload", "role": "default" }} , 
 	{ "name": "B_buff_46_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_46_reload", "role": "default" }} , 
 	{ "name": "B_buff_54_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_54_reload", "role": "default" }} , 
 	{ "name": "B_buff_62_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_62_reload", "role": "default" }} , 
 	{ "name": "B_buff_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_7_reload", "role": "default" }} , 
 	{ "name": "B_buff_15_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_15_reload", "role": "default" }} , 
 	{ "name": "B_buff_23_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_23_reload", "role": "default" }} , 
 	{ "name": "B_buff_31_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_31_reload", "role": "default" }} , 
 	{ "name": "B_buff_39_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_39_reload", "role": "default" }} , 
 	{ "name": "B_buff_47_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_47_reload", "role": "default" }} , 
 	{ "name": "B_buff_55_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_55_reload", "role": "default" }} , 
 	{ "name": "B_buff_63_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_buff_63_reload", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
		"CDFG" : "mm_Pipeline_row",
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
			{"Name" : "AB_buff_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_buff_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_buff_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_buff_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_buff_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_buff_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_buff_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_buff", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_buff", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_buff_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_buff_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_buff_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_buff_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_buff_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_buff_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_buff_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_buff_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_buff_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_buff_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_buff_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_buff_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_buff_48_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_buff_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_buff_56_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_41_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_49_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_57_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_34_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_42_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_50_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_58_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_35_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_43_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_51_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_59_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_36_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_44_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_52_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_60_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_37_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_45_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_53_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_61_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_46_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_54_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_62_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_39_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_47_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_55_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_buff_63_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "row", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U77", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U78", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U79", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U80", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U81", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U82", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U83", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U84", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U85", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U86", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U87", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U88", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U89", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U90", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U91", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U92", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U93", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U94", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U95", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U96", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U97", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U98", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U99", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U100", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U101", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U102", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U103", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U104", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U105", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U106", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U107", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U108", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U109", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U110", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U111", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U112", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U113", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U114", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U115", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U116", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U117", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U118", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U119", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U120", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U121", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U122", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U123", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U124", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U125", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U126", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U127", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U128", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U129", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U130", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U131", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U132", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U133", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U134", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U135", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U136", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U137", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U138", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U139", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U140", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mm_Pipeline_row {
		AB_buff_7 {Type O LastRead -1 FirstWrite 2}
		AB_buff_6 {Type O LastRead -1 FirstWrite 2}
		AB_buff_5 {Type O LastRead -1 FirstWrite 2}
		AB_buff_4 {Type O LastRead -1 FirstWrite 2}
		AB_buff_3 {Type O LastRead -1 FirstWrite 1}
		AB_buff_2 {Type O LastRead -1 FirstWrite 1}
		AB_buff_1 {Type O LastRead -1 FirstWrite 1}
		AB_buff {Type O LastRead -1 FirstWrite 1}
		A_buff {Type I LastRead 0 FirstWrite -1}
		B_buff_reload {Type I LastRead 0 FirstWrite -1}
		A_buff_1 {Type I LastRead 0 FirstWrite -1}
		B_buff_8_reload {Type I LastRead 0 FirstWrite -1}
		A_buff_2 {Type I LastRead 0 FirstWrite -1}
		B_buff_16_reload {Type I LastRead 0 FirstWrite -1}
		A_buff_3 {Type I LastRead 0 FirstWrite -1}
		B_buff_24_reload {Type I LastRead 0 FirstWrite -1}
		A_buff_4 {Type I LastRead 0 FirstWrite -1}
		B_buff_32_reload {Type I LastRead 0 FirstWrite -1}
		A_buff_5 {Type I LastRead 0 FirstWrite -1}
		B_buff_40_reload {Type I LastRead 0 FirstWrite -1}
		A_buff_6 {Type I LastRead 0 FirstWrite -1}
		B_buff_48_reload {Type I LastRead 0 FirstWrite -1}
		A_buff_7 {Type I LastRead 0 FirstWrite -1}
		B_buff_56_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_1_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_9_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_17_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_25_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_33_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_41_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_49_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_57_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_2_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_10_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_18_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_26_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_34_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_42_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_50_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_58_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_3_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_11_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_19_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_27_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_35_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_43_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_51_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_59_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_4_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_12_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_20_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_28_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_36_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_44_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_52_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_60_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_5_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_13_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_21_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_29_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_37_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_45_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_53_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_61_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_6_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_14_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_22_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_30_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_38_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_46_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_54_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_62_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_7_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_15_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_23_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_31_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_39_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_47_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_55_reload {Type I LastRead 0 FirstWrite -1}
		B_buff_63_reload {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	AB_buff_7 { ap_memory {  { AB_buff_7_address0 mem_address 1 3 }  { AB_buff_7_ce0 mem_ce 1 1 }  { AB_buff_7_we0 mem_we 1 1 }  { AB_buff_7_d0 mem_din 1 32 } } }
	AB_buff_6 { ap_memory {  { AB_buff_6_address0 mem_address 1 3 }  { AB_buff_6_ce0 mem_ce 1 1 }  { AB_buff_6_we0 mem_we 1 1 }  { AB_buff_6_d0 mem_din 1 32 } } }
	AB_buff_5 { ap_memory {  { AB_buff_5_address0 mem_address 1 3 }  { AB_buff_5_ce0 mem_ce 1 1 }  { AB_buff_5_we0 mem_we 1 1 }  { AB_buff_5_d0 mem_din 1 32 } } }
	AB_buff_4 { ap_memory {  { AB_buff_4_address0 mem_address 1 3 }  { AB_buff_4_ce0 mem_ce 1 1 }  { AB_buff_4_we0 mem_we 1 1 }  { AB_buff_4_d0 mem_din 1 32 } } }
	AB_buff_3 { ap_memory {  { AB_buff_3_address0 mem_address 1 3 }  { AB_buff_3_ce0 mem_ce 1 1 }  { AB_buff_3_we0 mem_we 1 1 }  { AB_buff_3_d0 mem_din 1 32 } } }
	AB_buff_2 { ap_memory {  { AB_buff_2_address0 mem_address 1 3 }  { AB_buff_2_ce0 mem_ce 1 1 }  { AB_buff_2_we0 mem_we 1 1 }  { AB_buff_2_d0 mem_din 1 32 } } }
	AB_buff_1 { ap_memory {  { AB_buff_1_address0 mem_address 1 3 }  { AB_buff_1_ce0 mem_ce 1 1 }  { AB_buff_1_we0 mem_we 1 1 }  { AB_buff_1_d0 mem_din 1 32 } } }
	AB_buff { ap_memory {  { AB_buff_address0 mem_address 1 3 }  { AB_buff_ce0 mem_ce 1 1 }  { AB_buff_we0 mem_we 1 1 }  { AB_buff_d0 mem_din 1 32 } } }
	A_buff { ap_memory {  { A_buff_address0 mem_address 1 3 }  { A_buff_ce0 mem_ce 1 1 }  { A_buff_q0 in_data 0 32 } } }
	B_buff_reload { ap_none {  { B_buff_reload in_data 0 32 } } }
	A_buff_1 { ap_memory {  { A_buff_1_address0 mem_address 1 3 }  { A_buff_1_ce0 mem_ce 1 1 }  { A_buff_1_q0 in_data 0 32 } } }
	B_buff_8_reload { ap_none {  { B_buff_8_reload in_data 0 32 } } }
	A_buff_2 { ap_memory {  { A_buff_2_address0 mem_address 1 3 }  { A_buff_2_ce0 mem_ce 1 1 }  { A_buff_2_q0 in_data 0 32 } } }
	B_buff_16_reload { ap_none {  { B_buff_16_reload in_data 0 32 } } }
	A_buff_3 { ap_memory {  { A_buff_3_address0 mem_address 1 3 }  { A_buff_3_ce0 mem_ce 1 1 }  { A_buff_3_q0 in_data 0 32 } } }
	B_buff_24_reload { ap_none {  { B_buff_24_reload in_data 0 32 } } }
	A_buff_4 { ap_memory {  { A_buff_4_address0 mem_address 1 3 }  { A_buff_4_ce0 mem_ce 1 1 }  { A_buff_4_q0 in_data 0 32 } } }
	B_buff_32_reload { ap_none {  { B_buff_32_reload in_data 0 32 } } }
	A_buff_5 { ap_memory {  { A_buff_5_address0 mem_address 1 3 }  { A_buff_5_ce0 mem_ce 1 1 }  { A_buff_5_q0 in_data 0 32 } } }
	B_buff_40_reload { ap_none {  { B_buff_40_reload in_data 0 32 } } }
	A_buff_6 { ap_memory {  { A_buff_6_address0 mem_address 1 3 }  { A_buff_6_ce0 mem_ce 1 1 }  { A_buff_6_q0 in_data 0 32 } } }
	B_buff_48_reload { ap_none {  { B_buff_48_reload in_data 0 32 } } }
	A_buff_7 { ap_memory {  { A_buff_7_address0 mem_address 1 3 }  { A_buff_7_ce0 mem_ce 1 1 }  { A_buff_7_q0 in_data 0 32 } } }
	B_buff_56_reload { ap_none {  { B_buff_56_reload in_data 0 32 } } }
	B_buff_1_reload { ap_none {  { B_buff_1_reload in_data 0 32 } } }
	B_buff_9_reload { ap_none {  { B_buff_9_reload in_data 0 32 } } }
	B_buff_17_reload { ap_none {  { B_buff_17_reload in_data 0 32 } } }
	B_buff_25_reload { ap_none {  { B_buff_25_reload in_data 0 32 } } }
	B_buff_33_reload { ap_none {  { B_buff_33_reload in_data 0 32 } } }
	B_buff_41_reload { ap_none {  { B_buff_41_reload in_data 0 32 } } }
	B_buff_49_reload { ap_none {  { B_buff_49_reload in_data 0 32 } } }
	B_buff_57_reload { ap_none {  { B_buff_57_reload in_data 0 32 } } }
	B_buff_2_reload { ap_none {  { B_buff_2_reload in_data 0 32 } } }
	B_buff_10_reload { ap_none {  { B_buff_10_reload in_data 0 32 } } }
	B_buff_18_reload { ap_none {  { B_buff_18_reload in_data 0 32 } } }
	B_buff_26_reload { ap_none {  { B_buff_26_reload in_data 0 32 } } }
	B_buff_34_reload { ap_none {  { B_buff_34_reload in_data 0 32 } } }
	B_buff_42_reload { ap_none {  { B_buff_42_reload in_data 0 32 } } }
	B_buff_50_reload { ap_none {  { B_buff_50_reload in_data 0 32 } } }
	B_buff_58_reload { ap_none {  { B_buff_58_reload in_data 0 32 } } }
	B_buff_3_reload { ap_none {  { B_buff_3_reload in_data 0 32 } } }
	B_buff_11_reload { ap_none {  { B_buff_11_reload in_data 0 32 } } }
	B_buff_19_reload { ap_none {  { B_buff_19_reload in_data 0 32 } } }
	B_buff_27_reload { ap_none {  { B_buff_27_reload in_data 0 32 } } }
	B_buff_35_reload { ap_none {  { B_buff_35_reload in_data 0 32 } } }
	B_buff_43_reload { ap_none {  { B_buff_43_reload in_data 0 32 } } }
	B_buff_51_reload { ap_none {  { B_buff_51_reload in_data 0 32 } } }
	B_buff_59_reload { ap_none {  { B_buff_59_reload in_data 0 32 } } }
	B_buff_4_reload { ap_none {  { B_buff_4_reload in_data 0 32 } } }
	B_buff_12_reload { ap_none {  { B_buff_12_reload in_data 0 32 } } }
	B_buff_20_reload { ap_none {  { B_buff_20_reload in_data 0 32 } } }
	B_buff_28_reload { ap_none {  { B_buff_28_reload in_data 0 32 } } }
	B_buff_36_reload { ap_none {  { B_buff_36_reload in_data 0 32 } } }
	B_buff_44_reload { ap_none {  { B_buff_44_reload in_data 0 32 } } }
	B_buff_52_reload { ap_none {  { B_buff_52_reload in_data 0 32 } } }
	B_buff_60_reload { ap_none {  { B_buff_60_reload in_data 0 32 } } }
	B_buff_5_reload { ap_none {  { B_buff_5_reload in_data 0 32 } } }
	B_buff_13_reload { ap_none {  { B_buff_13_reload in_data 0 32 } } }
	B_buff_21_reload { ap_none {  { B_buff_21_reload in_data 0 32 } } }
	B_buff_29_reload { ap_none {  { B_buff_29_reload in_data 0 32 } } }
	B_buff_37_reload { ap_none {  { B_buff_37_reload in_data 0 32 } } }
	B_buff_45_reload { ap_none {  { B_buff_45_reload in_data 0 32 } } }
	B_buff_53_reload { ap_none {  { B_buff_53_reload in_data 0 32 } } }
	B_buff_61_reload { ap_none {  { B_buff_61_reload in_data 0 32 } } }
	B_buff_6_reload { ap_none {  { B_buff_6_reload in_data 0 32 } } }
	B_buff_14_reload { ap_none {  { B_buff_14_reload in_data 0 32 } } }
	B_buff_22_reload { ap_none {  { B_buff_22_reload in_data 0 32 } } }
	B_buff_30_reload { ap_none {  { B_buff_30_reload in_data 0 32 } } }
	B_buff_38_reload { ap_none {  { B_buff_38_reload in_data 0 32 } } }
	B_buff_46_reload { ap_none {  { B_buff_46_reload in_data 0 32 } } }
	B_buff_54_reload { ap_none {  { B_buff_54_reload in_data 0 32 } } }
	B_buff_62_reload { ap_none {  { B_buff_62_reload in_data 0 32 } } }
	B_buff_7_reload { ap_none {  { B_buff_7_reload in_data 0 32 } } }
	B_buff_15_reload { ap_none {  { B_buff_15_reload in_data 0 32 } } }
	B_buff_23_reload { ap_none {  { B_buff_23_reload in_data 0 32 } } }
	B_buff_31_reload { ap_none {  { B_buff_31_reload in_data 0 32 } } }
	B_buff_39_reload { ap_none {  { B_buff_39_reload in_data 0 32 } } }
	B_buff_47_reload { ap_none {  { B_buff_47_reload in_data 0 32 } } }
	B_buff_55_reload { ap_none {  { B_buff_55_reload in_data 0 32 } } }
	B_buff_63_reload { ap_none {  { B_buff_63_reload in_data 0 32 } } }
}
