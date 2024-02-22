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
	{ A_0 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ A_1 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ A_2 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ A_3 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ A_4 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ A_5 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ A_6 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ A_7 int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ B_0_0 int 32 regular {pointer 0}  }
	{ B_0_1 int 32 regular {pointer 0}  }
	{ B_0_2 int 32 regular {pointer 0}  }
	{ B_0_3 int 32 regular {pointer 0}  }
	{ B_0_4 int 32 regular {pointer 0}  }
	{ B_0_5 int 32 regular {pointer 0}  }
	{ B_0_6 int 32 regular {pointer 0}  }
	{ B_0_7 int 32 regular {pointer 0}  }
	{ B_1_0 int 32 regular {pointer 0}  }
	{ B_1_1 int 32 regular {pointer 0}  }
	{ B_1_2 int 32 regular {pointer 0}  }
	{ B_1_3 int 32 regular {pointer 0}  }
	{ B_1_4 int 32 regular {pointer 0}  }
	{ B_1_5 int 32 regular {pointer 0}  }
	{ B_1_6 int 32 regular {pointer 0}  }
	{ B_1_7 int 32 regular {pointer 0}  }
	{ B_2_0 int 32 regular {pointer 0}  }
	{ B_2_1 int 32 regular {pointer 0}  }
	{ B_2_2 int 32 regular {pointer 0}  }
	{ B_2_3 int 32 regular {pointer 0}  }
	{ B_2_4 int 32 regular {pointer 0}  }
	{ B_2_5 int 32 regular {pointer 0}  }
	{ B_2_6 int 32 regular {pointer 0}  }
	{ B_2_7 int 32 regular {pointer 0}  }
	{ B_3_0 int 32 regular {pointer 0}  }
	{ B_3_1 int 32 regular {pointer 0}  }
	{ B_3_2 int 32 regular {pointer 0}  }
	{ B_3_3 int 32 regular {pointer 0}  }
	{ B_3_4 int 32 regular {pointer 0}  }
	{ B_3_5 int 32 regular {pointer 0}  }
	{ B_3_6 int 32 regular {pointer 0}  }
	{ B_3_7 int 32 regular {pointer 0}  }
	{ B_4_0 int 32 regular {pointer 0}  }
	{ B_4_1 int 32 regular {pointer 0}  }
	{ B_4_2 int 32 regular {pointer 0}  }
	{ B_4_3 int 32 regular {pointer 0}  }
	{ B_4_4 int 32 regular {pointer 0}  }
	{ B_4_5 int 32 regular {pointer 0}  }
	{ B_4_6 int 32 regular {pointer 0}  }
	{ B_4_7 int 32 regular {pointer 0}  }
	{ B_5_0 int 32 regular {pointer 0}  }
	{ B_5_1 int 32 regular {pointer 0}  }
	{ B_5_2 int 32 regular {pointer 0}  }
	{ B_5_3 int 32 regular {pointer 0}  }
	{ B_5_4 int 32 regular {pointer 0}  }
	{ B_5_5 int 32 regular {pointer 0}  }
	{ B_5_6 int 32 regular {pointer 0}  }
	{ B_5_7 int 32 regular {pointer 0}  }
	{ B_6_0 int 32 regular {pointer 0}  }
	{ B_6_1 int 32 regular {pointer 0}  }
	{ B_6_2 int 32 regular {pointer 0}  }
	{ B_6_3 int 32 regular {pointer 0}  }
	{ B_6_4 int 32 regular {pointer 0}  }
	{ B_6_5 int 32 regular {pointer 0}  }
	{ B_6_6 int 32 regular {pointer 0}  }
	{ B_6_7 int 32 regular {pointer 0}  }
	{ B_7_0 int 32 regular {pointer 0}  }
	{ B_7_1 int 32 regular {pointer 0}  }
	{ B_7_2 int 32 regular {pointer 0}  }
	{ B_7_3 int 32 regular {pointer 0}  }
	{ B_7_4 int 32 regular {pointer 0}  }
	{ B_7_5 int 32 regular {pointer 0}  }
	{ B_7_6 int 32 regular {pointer 0}  }
	{ B_7_7 int 32 regular {pointer 0}  }
	{ AB_0 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_1 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_2 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_3 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_4 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_5 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_6 int 32 regular {array 8 { 0 3 } 0 1 }  }
	{ AB_7 int 32 regular {array 8 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_6_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_6_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_6_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_6_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_6_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_6_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_6_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_6_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_7_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_7_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_7_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_7_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_7_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_7_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_7_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_7_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "AB_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "AB_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 126
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_0_address0 sc_out sc_lv 3 signal 0 } 
	{ A_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_0_q0 sc_in sc_lv 32 signal 0 } 
	{ A_1_address0 sc_out sc_lv 3 signal 1 } 
	{ A_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_1_q0 sc_in sc_lv 32 signal 1 } 
	{ A_2_address0 sc_out sc_lv 3 signal 2 } 
	{ A_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ A_2_q0 sc_in sc_lv 32 signal 2 } 
	{ A_3_address0 sc_out sc_lv 3 signal 3 } 
	{ A_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ A_3_q0 sc_in sc_lv 32 signal 3 } 
	{ A_4_address0 sc_out sc_lv 3 signal 4 } 
	{ A_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ A_4_q0 sc_in sc_lv 32 signal 4 } 
	{ A_5_address0 sc_out sc_lv 3 signal 5 } 
	{ A_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ A_5_q0 sc_in sc_lv 32 signal 5 } 
	{ A_6_address0 sc_out sc_lv 3 signal 6 } 
	{ A_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ A_6_q0 sc_in sc_lv 32 signal 6 } 
	{ A_7_address0 sc_out sc_lv 3 signal 7 } 
	{ A_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ A_7_q0 sc_in sc_lv 32 signal 7 } 
	{ B_0_0 sc_in sc_lv 32 signal 8 } 
	{ B_0_1 sc_in sc_lv 32 signal 9 } 
	{ B_0_2 sc_in sc_lv 32 signal 10 } 
	{ B_0_3 sc_in sc_lv 32 signal 11 } 
	{ B_0_4 sc_in sc_lv 32 signal 12 } 
	{ B_0_5 sc_in sc_lv 32 signal 13 } 
	{ B_0_6 sc_in sc_lv 32 signal 14 } 
	{ B_0_7 sc_in sc_lv 32 signal 15 } 
	{ B_1_0 sc_in sc_lv 32 signal 16 } 
	{ B_1_1 sc_in sc_lv 32 signal 17 } 
	{ B_1_2 sc_in sc_lv 32 signal 18 } 
	{ B_1_3 sc_in sc_lv 32 signal 19 } 
	{ B_1_4 sc_in sc_lv 32 signal 20 } 
	{ B_1_5 sc_in sc_lv 32 signal 21 } 
	{ B_1_6 sc_in sc_lv 32 signal 22 } 
	{ B_1_7 sc_in sc_lv 32 signal 23 } 
	{ B_2_0 sc_in sc_lv 32 signal 24 } 
	{ B_2_1 sc_in sc_lv 32 signal 25 } 
	{ B_2_2 sc_in sc_lv 32 signal 26 } 
	{ B_2_3 sc_in sc_lv 32 signal 27 } 
	{ B_2_4 sc_in sc_lv 32 signal 28 } 
	{ B_2_5 sc_in sc_lv 32 signal 29 } 
	{ B_2_6 sc_in sc_lv 32 signal 30 } 
	{ B_2_7 sc_in sc_lv 32 signal 31 } 
	{ B_3_0 sc_in sc_lv 32 signal 32 } 
	{ B_3_1 sc_in sc_lv 32 signal 33 } 
	{ B_3_2 sc_in sc_lv 32 signal 34 } 
	{ B_3_3 sc_in sc_lv 32 signal 35 } 
	{ B_3_4 sc_in sc_lv 32 signal 36 } 
	{ B_3_5 sc_in sc_lv 32 signal 37 } 
	{ B_3_6 sc_in sc_lv 32 signal 38 } 
	{ B_3_7 sc_in sc_lv 32 signal 39 } 
	{ B_4_0 sc_in sc_lv 32 signal 40 } 
	{ B_4_1 sc_in sc_lv 32 signal 41 } 
	{ B_4_2 sc_in sc_lv 32 signal 42 } 
	{ B_4_3 sc_in sc_lv 32 signal 43 } 
	{ B_4_4 sc_in sc_lv 32 signal 44 } 
	{ B_4_5 sc_in sc_lv 32 signal 45 } 
	{ B_4_6 sc_in sc_lv 32 signal 46 } 
	{ B_4_7 sc_in sc_lv 32 signal 47 } 
	{ B_5_0 sc_in sc_lv 32 signal 48 } 
	{ B_5_1 sc_in sc_lv 32 signal 49 } 
	{ B_5_2 sc_in sc_lv 32 signal 50 } 
	{ B_5_3 sc_in sc_lv 32 signal 51 } 
	{ B_5_4 sc_in sc_lv 32 signal 52 } 
	{ B_5_5 sc_in sc_lv 32 signal 53 } 
	{ B_5_6 sc_in sc_lv 32 signal 54 } 
	{ B_5_7 sc_in sc_lv 32 signal 55 } 
	{ B_6_0 sc_in sc_lv 32 signal 56 } 
	{ B_6_1 sc_in sc_lv 32 signal 57 } 
	{ B_6_2 sc_in sc_lv 32 signal 58 } 
	{ B_6_3 sc_in sc_lv 32 signal 59 } 
	{ B_6_4 sc_in sc_lv 32 signal 60 } 
	{ B_6_5 sc_in sc_lv 32 signal 61 } 
	{ B_6_6 sc_in sc_lv 32 signal 62 } 
	{ B_6_7 sc_in sc_lv 32 signal 63 } 
	{ B_7_0 sc_in sc_lv 32 signal 64 } 
	{ B_7_1 sc_in sc_lv 32 signal 65 } 
	{ B_7_2 sc_in sc_lv 32 signal 66 } 
	{ B_7_3 sc_in sc_lv 32 signal 67 } 
	{ B_7_4 sc_in sc_lv 32 signal 68 } 
	{ B_7_5 sc_in sc_lv 32 signal 69 } 
	{ B_7_6 sc_in sc_lv 32 signal 70 } 
	{ B_7_7 sc_in sc_lv 32 signal 71 } 
	{ AB_0_address0 sc_out sc_lv 3 signal 72 } 
	{ AB_0_ce0 sc_out sc_logic 1 signal 72 } 
	{ AB_0_we0 sc_out sc_logic 1 signal 72 } 
	{ AB_0_d0 sc_out sc_lv 32 signal 72 } 
	{ AB_1_address0 sc_out sc_lv 3 signal 73 } 
	{ AB_1_ce0 sc_out sc_logic 1 signal 73 } 
	{ AB_1_we0 sc_out sc_logic 1 signal 73 } 
	{ AB_1_d0 sc_out sc_lv 32 signal 73 } 
	{ AB_2_address0 sc_out sc_lv 3 signal 74 } 
	{ AB_2_ce0 sc_out sc_logic 1 signal 74 } 
	{ AB_2_we0 sc_out sc_logic 1 signal 74 } 
	{ AB_2_d0 sc_out sc_lv 32 signal 74 } 
	{ AB_3_address0 sc_out sc_lv 3 signal 75 } 
	{ AB_3_ce0 sc_out sc_logic 1 signal 75 } 
	{ AB_3_we0 sc_out sc_logic 1 signal 75 } 
	{ AB_3_d0 sc_out sc_lv 32 signal 75 } 
	{ AB_4_address0 sc_out sc_lv 3 signal 76 } 
	{ AB_4_ce0 sc_out sc_logic 1 signal 76 } 
	{ AB_4_we0 sc_out sc_logic 1 signal 76 } 
	{ AB_4_d0 sc_out sc_lv 32 signal 76 } 
	{ AB_5_address0 sc_out sc_lv 3 signal 77 } 
	{ AB_5_ce0 sc_out sc_logic 1 signal 77 } 
	{ AB_5_we0 sc_out sc_logic 1 signal 77 } 
	{ AB_5_d0 sc_out sc_lv 32 signal 77 } 
	{ AB_6_address0 sc_out sc_lv 3 signal 78 } 
	{ AB_6_ce0 sc_out sc_logic 1 signal 78 } 
	{ AB_6_we0 sc_out sc_logic 1 signal 78 } 
	{ AB_6_d0 sc_out sc_lv 32 signal 78 } 
	{ AB_7_address0 sc_out sc_lv 3 signal 79 } 
	{ AB_7_ce0 sc_out sc_logic 1 signal 79 } 
	{ AB_7_we0 sc_out sc_logic 1 signal 79 } 
	{ AB_7_d0 sc_out sc_lv 32 signal 79 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_0", "role": "address0" }} , 
 	{ "name": "A_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "ce0" }} , 
 	{ "name": "A_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0", "role": "q0" }} , 
 	{ "name": "A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_1", "role": "address0" }} , 
 	{ "name": "A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce0" }} , 
 	{ "name": "A_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "q0" }} , 
 	{ "name": "A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_2", "role": "address0" }} , 
 	{ "name": "A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "ce0" }} , 
 	{ "name": "A_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "q0" }} , 
 	{ "name": "A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_3", "role": "address0" }} , 
 	{ "name": "A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "ce0" }} , 
 	{ "name": "A_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "q0" }} , 
 	{ "name": "A_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_4", "role": "address0" }} , 
 	{ "name": "A_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_4", "role": "ce0" }} , 
 	{ "name": "A_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4", "role": "q0" }} , 
 	{ "name": "A_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_5", "role": "address0" }} , 
 	{ "name": "A_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_5", "role": "ce0" }} , 
 	{ "name": "A_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5", "role": "q0" }} , 
 	{ "name": "A_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_6", "role": "address0" }} , 
 	{ "name": "A_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_6", "role": "ce0" }} , 
 	{ "name": "A_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_6", "role": "q0" }} , 
 	{ "name": "A_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "A_7", "role": "address0" }} , 
 	{ "name": "A_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_7", "role": "ce0" }} , 
 	{ "name": "A_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_7", "role": "q0" }} , 
 	{ "name": "B_0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_0", "role": "default" }} , 
 	{ "name": "B_0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_1", "role": "default" }} , 
 	{ "name": "B_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_2", "role": "default" }} , 
 	{ "name": "B_0_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_3", "role": "default" }} , 
 	{ "name": "B_0_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_4", "role": "default" }} , 
 	{ "name": "B_0_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_5", "role": "default" }} , 
 	{ "name": "B_0_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_6", "role": "default" }} , 
 	{ "name": "B_0_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_7", "role": "default" }} , 
 	{ "name": "B_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_0", "role": "default" }} , 
 	{ "name": "B_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_1", "role": "default" }} , 
 	{ "name": "B_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_2", "role": "default" }} , 
 	{ "name": "B_1_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_3", "role": "default" }} , 
 	{ "name": "B_1_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_4", "role": "default" }} , 
 	{ "name": "B_1_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_5", "role": "default" }} , 
 	{ "name": "B_1_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_6", "role": "default" }} , 
 	{ "name": "B_1_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_7", "role": "default" }} , 
 	{ "name": "B_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_0", "role": "default" }} , 
 	{ "name": "B_2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_1", "role": "default" }} , 
 	{ "name": "B_2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_2", "role": "default" }} , 
 	{ "name": "B_2_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_3", "role": "default" }} , 
 	{ "name": "B_2_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_4", "role": "default" }} , 
 	{ "name": "B_2_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_5", "role": "default" }} , 
 	{ "name": "B_2_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_6", "role": "default" }} , 
 	{ "name": "B_2_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_7", "role": "default" }} , 
 	{ "name": "B_3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_0", "role": "default" }} , 
 	{ "name": "B_3_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_1", "role": "default" }} , 
 	{ "name": "B_3_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_2", "role": "default" }} , 
 	{ "name": "B_3_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_3", "role": "default" }} , 
 	{ "name": "B_3_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_4", "role": "default" }} , 
 	{ "name": "B_3_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_5", "role": "default" }} , 
 	{ "name": "B_3_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_6", "role": "default" }} , 
 	{ "name": "B_3_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_7", "role": "default" }} , 
 	{ "name": "B_4_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_0", "role": "default" }} , 
 	{ "name": "B_4_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_1", "role": "default" }} , 
 	{ "name": "B_4_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_2", "role": "default" }} , 
 	{ "name": "B_4_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_3", "role": "default" }} , 
 	{ "name": "B_4_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_4", "role": "default" }} , 
 	{ "name": "B_4_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_5", "role": "default" }} , 
 	{ "name": "B_4_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_6", "role": "default" }} , 
 	{ "name": "B_4_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_7", "role": "default" }} , 
 	{ "name": "B_5_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_0", "role": "default" }} , 
 	{ "name": "B_5_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_1", "role": "default" }} , 
 	{ "name": "B_5_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_2", "role": "default" }} , 
 	{ "name": "B_5_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_3", "role": "default" }} , 
 	{ "name": "B_5_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_4", "role": "default" }} , 
 	{ "name": "B_5_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_5", "role": "default" }} , 
 	{ "name": "B_5_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_6", "role": "default" }} , 
 	{ "name": "B_5_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_7", "role": "default" }} , 
 	{ "name": "B_6_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_6_0", "role": "default" }} , 
 	{ "name": "B_6_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_6_1", "role": "default" }} , 
 	{ "name": "B_6_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_6_2", "role": "default" }} , 
 	{ "name": "B_6_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_6_3", "role": "default" }} , 
 	{ "name": "B_6_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_6_4", "role": "default" }} , 
 	{ "name": "B_6_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_6_5", "role": "default" }} , 
 	{ "name": "B_6_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_6_6", "role": "default" }} , 
 	{ "name": "B_6_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_6_7", "role": "default" }} , 
 	{ "name": "B_7_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_7_0", "role": "default" }} , 
 	{ "name": "B_7_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_7_1", "role": "default" }} , 
 	{ "name": "B_7_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_7_2", "role": "default" }} , 
 	{ "name": "B_7_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_7_3", "role": "default" }} , 
 	{ "name": "B_7_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_7_4", "role": "default" }} , 
 	{ "name": "B_7_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_7_5", "role": "default" }} , 
 	{ "name": "B_7_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_7_6", "role": "default" }} , 
 	{ "name": "B_7_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_7_7", "role": "default" }} , 
 	{ "name": "AB_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_0", "role": "address0" }} , 
 	{ "name": "AB_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_0", "role": "ce0" }} , 
 	{ "name": "AB_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_0", "role": "we0" }} , 
 	{ "name": "AB_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_0", "role": "d0" }} , 
 	{ "name": "AB_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_1", "role": "address0" }} , 
 	{ "name": "AB_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_1", "role": "ce0" }} , 
 	{ "name": "AB_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_1", "role": "we0" }} , 
 	{ "name": "AB_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_1", "role": "d0" }} , 
 	{ "name": "AB_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_2", "role": "address0" }} , 
 	{ "name": "AB_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_2", "role": "ce0" }} , 
 	{ "name": "AB_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_2", "role": "we0" }} , 
 	{ "name": "AB_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_2", "role": "d0" }} , 
 	{ "name": "AB_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_3", "role": "address0" }} , 
 	{ "name": "AB_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_3", "role": "ce0" }} , 
 	{ "name": "AB_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_3", "role": "we0" }} , 
 	{ "name": "AB_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_3", "role": "d0" }} , 
 	{ "name": "AB_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_4", "role": "address0" }} , 
 	{ "name": "AB_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_4", "role": "ce0" }} , 
 	{ "name": "AB_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_4", "role": "we0" }} , 
 	{ "name": "AB_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_4", "role": "d0" }} , 
 	{ "name": "AB_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_5", "role": "address0" }} , 
 	{ "name": "AB_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_5", "role": "ce0" }} , 
 	{ "name": "AB_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_5", "role": "we0" }} , 
 	{ "name": "AB_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_5", "role": "d0" }} , 
 	{ "name": "AB_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_6", "role": "address0" }} , 
 	{ "name": "AB_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_6", "role": "ce0" }} , 
 	{ "name": "AB_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_6", "role": "we0" }} , 
 	{ "name": "AB_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_6", "role": "d0" }} , 
 	{ "name": "AB_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "AB_7", "role": "address0" }} , 
 	{ "name": "AB_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_7", "role": "ce0" }} , 
 	{ "name": "AB_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AB_7", "role": "we0" }} , 
 	{ "name": "AB_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AB_7", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
		"CDFG" : "mm",
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
			{"Name" : "A_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_6_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_6_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_6_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_6_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_6_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_6_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_6_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_6_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_7_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_7_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_7_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_7_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_7_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_7_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_7_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_7_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "AB_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "AB_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "row", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U25", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U26", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U27", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U28", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U29", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U30", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U31", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U32", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U33", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U34", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U35", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U36", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U37", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U38", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U39", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U40", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U41", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U42", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U43", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U44", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U45", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U46", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U47", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U48", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U49", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U50", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U51", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U52", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U53", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U54", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U55", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U56", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U57", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U58", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U59", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U60", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U61", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U62", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U63", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U64", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mm {
		A_0 {Type I LastRead 0 FirstWrite -1}
		A_1 {Type I LastRead 0 FirstWrite -1}
		A_2 {Type I LastRead 0 FirstWrite -1}
		A_3 {Type I LastRead 0 FirstWrite -1}
		A_4 {Type I LastRead 0 FirstWrite -1}
		A_5 {Type I LastRead 0 FirstWrite -1}
		A_6 {Type I LastRead 0 FirstWrite -1}
		A_7 {Type I LastRead 0 FirstWrite -1}
		B_0_0 {Type I LastRead 0 FirstWrite -1}
		B_0_1 {Type I LastRead 0 FirstWrite -1}
		B_0_2 {Type I LastRead 0 FirstWrite -1}
		B_0_3 {Type I LastRead 0 FirstWrite -1}
		B_0_4 {Type I LastRead 0 FirstWrite -1}
		B_0_5 {Type I LastRead 0 FirstWrite -1}
		B_0_6 {Type I LastRead 0 FirstWrite -1}
		B_0_7 {Type I LastRead 0 FirstWrite -1}
		B_1_0 {Type I LastRead 0 FirstWrite -1}
		B_1_1 {Type I LastRead 0 FirstWrite -1}
		B_1_2 {Type I LastRead 0 FirstWrite -1}
		B_1_3 {Type I LastRead 0 FirstWrite -1}
		B_1_4 {Type I LastRead 0 FirstWrite -1}
		B_1_5 {Type I LastRead 0 FirstWrite -1}
		B_1_6 {Type I LastRead 0 FirstWrite -1}
		B_1_7 {Type I LastRead 0 FirstWrite -1}
		B_2_0 {Type I LastRead 0 FirstWrite -1}
		B_2_1 {Type I LastRead 0 FirstWrite -1}
		B_2_2 {Type I LastRead 0 FirstWrite -1}
		B_2_3 {Type I LastRead 0 FirstWrite -1}
		B_2_4 {Type I LastRead 0 FirstWrite -1}
		B_2_5 {Type I LastRead 0 FirstWrite -1}
		B_2_6 {Type I LastRead 0 FirstWrite -1}
		B_2_7 {Type I LastRead 0 FirstWrite -1}
		B_3_0 {Type I LastRead 0 FirstWrite -1}
		B_3_1 {Type I LastRead 0 FirstWrite -1}
		B_3_2 {Type I LastRead 0 FirstWrite -1}
		B_3_3 {Type I LastRead 0 FirstWrite -1}
		B_3_4 {Type I LastRead 0 FirstWrite -1}
		B_3_5 {Type I LastRead 0 FirstWrite -1}
		B_3_6 {Type I LastRead 0 FirstWrite -1}
		B_3_7 {Type I LastRead 0 FirstWrite -1}
		B_4_0 {Type I LastRead 0 FirstWrite -1}
		B_4_1 {Type I LastRead 0 FirstWrite -1}
		B_4_2 {Type I LastRead 0 FirstWrite -1}
		B_4_3 {Type I LastRead 0 FirstWrite -1}
		B_4_4 {Type I LastRead 0 FirstWrite -1}
		B_4_5 {Type I LastRead 0 FirstWrite -1}
		B_4_6 {Type I LastRead 0 FirstWrite -1}
		B_4_7 {Type I LastRead 0 FirstWrite -1}
		B_5_0 {Type I LastRead 0 FirstWrite -1}
		B_5_1 {Type I LastRead 0 FirstWrite -1}
		B_5_2 {Type I LastRead 0 FirstWrite -1}
		B_5_3 {Type I LastRead 0 FirstWrite -1}
		B_5_4 {Type I LastRead 0 FirstWrite -1}
		B_5_5 {Type I LastRead 0 FirstWrite -1}
		B_5_6 {Type I LastRead 0 FirstWrite -1}
		B_5_7 {Type I LastRead 0 FirstWrite -1}
		B_6_0 {Type I LastRead 0 FirstWrite -1}
		B_6_1 {Type I LastRead 0 FirstWrite -1}
		B_6_2 {Type I LastRead 0 FirstWrite -1}
		B_6_3 {Type I LastRead 0 FirstWrite -1}
		B_6_4 {Type I LastRead 0 FirstWrite -1}
		B_6_5 {Type I LastRead 0 FirstWrite -1}
		B_6_6 {Type I LastRead 0 FirstWrite -1}
		B_6_7 {Type I LastRead 0 FirstWrite -1}
		B_7_0 {Type I LastRead 0 FirstWrite -1}
		B_7_1 {Type I LastRead 0 FirstWrite -1}
		B_7_2 {Type I LastRead 0 FirstWrite -1}
		B_7_3 {Type I LastRead 0 FirstWrite -1}
		B_7_4 {Type I LastRead 0 FirstWrite -1}
		B_7_5 {Type I LastRead 0 FirstWrite -1}
		B_7_6 {Type I LastRead 0 FirstWrite -1}
		B_7_7 {Type I LastRead 0 FirstWrite -1}
		AB_0 {Type O LastRead -1 FirstWrite 1}
		AB_1 {Type O LastRead -1 FirstWrite 1}
		AB_2 {Type O LastRead -1 FirstWrite 1}
		AB_3 {Type O LastRead -1 FirstWrite 1}
		AB_4 {Type O LastRead -1 FirstWrite 1}
		AB_5 {Type O LastRead -1 FirstWrite 1}
		AB_6 {Type O LastRead -1 FirstWrite 1}
		AB_7 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A_0 { ap_memory {  { A_0_address0 mem_address 1 3 }  { A_0_ce0 mem_ce 1 1 }  { A_0_q0 in_data 0 32 } } }
	A_1 { ap_memory {  { A_1_address0 mem_address 1 3 }  { A_1_ce0 mem_ce 1 1 }  { A_1_q0 in_data 0 32 } } }
	A_2 { ap_memory {  { A_2_address0 mem_address 1 3 }  { A_2_ce0 mem_ce 1 1 }  { A_2_q0 in_data 0 32 } } }
	A_3 { ap_memory {  { A_3_address0 mem_address 1 3 }  { A_3_ce0 mem_ce 1 1 }  { A_3_q0 in_data 0 32 } } }
	A_4 { ap_memory {  { A_4_address0 mem_address 1 3 }  { A_4_ce0 mem_ce 1 1 }  { A_4_q0 in_data 0 32 } } }
	A_5 { ap_memory {  { A_5_address0 mem_address 1 3 }  { A_5_ce0 mem_ce 1 1 }  { A_5_q0 in_data 0 32 } } }
	A_6 { ap_memory {  { A_6_address0 mem_address 1 3 }  { A_6_ce0 mem_ce 1 1 }  { A_6_q0 in_data 0 32 } } }
	A_7 { ap_memory {  { A_7_address0 mem_address 1 3 }  { A_7_ce0 mem_ce 1 1 }  { A_7_q0 in_data 0 32 } } }
	B_0_0 { ap_none {  { B_0_0 in_data 0 32 } } }
	B_0_1 { ap_none {  { B_0_1 in_data 0 32 } } }
	B_0_2 { ap_none {  { B_0_2 in_data 0 32 } } }
	B_0_3 { ap_none {  { B_0_3 in_data 0 32 } } }
	B_0_4 { ap_none {  { B_0_4 in_data 0 32 } } }
	B_0_5 { ap_none {  { B_0_5 in_data 0 32 } } }
	B_0_6 { ap_none {  { B_0_6 in_data 0 32 } } }
	B_0_7 { ap_none {  { B_0_7 in_data 0 32 } } }
	B_1_0 { ap_none {  { B_1_0 in_data 0 32 } } }
	B_1_1 { ap_none {  { B_1_1 in_data 0 32 } } }
	B_1_2 { ap_none {  { B_1_2 in_data 0 32 } } }
	B_1_3 { ap_none {  { B_1_3 in_data 0 32 } } }
	B_1_4 { ap_none {  { B_1_4 in_data 0 32 } } }
	B_1_5 { ap_none {  { B_1_5 in_data 0 32 } } }
	B_1_6 { ap_none {  { B_1_6 in_data 0 32 } } }
	B_1_7 { ap_none {  { B_1_7 in_data 0 32 } } }
	B_2_0 { ap_none {  { B_2_0 in_data 0 32 } } }
	B_2_1 { ap_none {  { B_2_1 in_data 0 32 } } }
	B_2_2 { ap_none {  { B_2_2 in_data 0 32 } } }
	B_2_3 { ap_none {  { B_2_3 in_data 0 32 } } }
	B_2_4 { ap_none {  { B_2_4 in_data 0 32 } } }
	B_2_5 { ap_none {  { B_2_5 in_data 0 32 } } }
	B_2_6 { ap_none {  { B_2_6 in_data 0 32 } } }
	B_2_7 { ap_none {  { B_2_7 in_data 0 32 } } }
	B_3_0 { ap_none {  { B_3_0 in_data 0 32 } } }
	B_3_1 { ap_none {  { B_3_1 in_data 0 32 } } }
	B_3_2 { ap_none {  { B_3_2 in_data 0 32 } } }
	B_3_3 { ap_none {  { B_3_3 in_data 0 32 } } }
	B_3_4 { ap_none {  { B_3_4 in_data 0 32 } } }
	B_3_5 { ap_none {  { B_3_5 in_data 0 32 } } }
	B_3_6 { ap_none {  { B_3_6 in_data 0 32 } } }
	B_3_7 { ap_none {  { B_3_7 in_data 0 32 } } }
	B_4_0 { ap_none {  { B_4_0 in_data 0 32 } } }
	B_4_1 { ap_none {  { B_4_1 in_data 0 32 } } }
	B_4_2 { ap_none {  { B_4_2 in_data 0 32 } } }
	B_4_3 { ap_none {  { B_4_3 in_data 0 32 } } }
	B_4_4 { ap_none {  { B_4_4 in_data 0 32 } } }
	B_4_5 { ap_none {  { B_4_5 in_data 0 32 } } }
	B_4_6 { ap_none {  { B_4_6 in_data 0 32 } } }
	B_4_7 { ap_none {  { B_4_7 in_data 0 32 } } }
	B_5_0 { ap_none {  { B_5_0 in_data 0 32 } } }
	B_5_1 { ap_none {  { B_5_1 in_data 0 32 } } }
	B_5_2 { ap_none {  { B_5_2 in_data 0 32 } } }
	B_5_3 { ap_none {  { B_5_3 in_data 0 32 } } }
	B_5_4 { ap_none {  { B_5_4 in_data 0 32 } } }
	B_5_5 { ap_none {  { B_5_5 in_data 0 32 } } }
	B_5_6 { ap_none {  { B_5_6 in_data 0 32 } } }
	B_5_7 { ap_none {  { B_5_7 in_data 0 32 } } }
	B_6_0 { ap_none {  { B_6_0 in_data 0 32 } } }
	B_6_1 { ap_none {  { B_6_1 in_data 0 32 } } }
	B_6_2 { ap_none {  { B_6_2 in_data 0 32 } } }
	B_6_3 { ap_none {  { B_6_3 in_data 0 32 } } }
	B_6_4 { ap_none {  { B_6_4 in_data 0 32 } } }
	B_6_5 { ap_none {  { B_6_5 in_data 0 32 } } }
	B_6_6 { ap_none {  { B_6_6 in_data 0 32 } } }
	B_6_7 { ap_none {  { B_6_7 in_data 0 32 } } }
	B_7_0 { ap_none {  { B_7_0 in_data 0 32 } } }
	B_7_1 { ap_none {  { B_7_1 in_data 0 32 } } }
	B_7_2 { ap_none {  { B_7_2 in_data 0 32 } } }
	B_7_3 { ap_none {  { B_7_3 in_data 0 32 } } }
	B_7_4 { ap_none {  { B_7_4 in_data 0 32 } } }
	B_7_5 { ap_none {  { B_7_5 in_data 0 32 } } }
	B_7_6 { ap_none {  { B_7_6 in_data 0 32 } } }
	B_7_7 { ap_none {  { B_7_7 in_data 0 32 } } }
	AB_0 { ap_memory {  { AB_0_address0 mem_address 1 3 }  { AB_0_ce0 mem_ce 1 1 }  { AB_0_we0 mem_we 1 1 }  { AB_0_d0 mem_din 1 32 } } }
	AB_1 { ap_memory {  { AB_1_address0 mem_address 1 3 }  { AB_1_ce0 mem_ce 1 1 }  { AB_1_we0 mem_we 1 1 }  { AB_1_d0 mem_din 1 32 } } }
	AB_2 { ap_memory {  { AB_2_address0 mem_address 1 3 }  { AB_2_ce0 mem_ce 1 1 }  { AB_2_we0 mem_we 1 1 }  { AB_2_d0 mem_din 1 32 } } }
	AB_3 { ap_memory {  { AB_3_address0 mem_address 1 3 }  { AB_3_ce0 mem_ce 1 1 }  { AB_3_we0 mem_we 1 1 }  { AB_3_d0 mem_din 1 32 } } }
	AB_4 { ap_memory {  { AB_4_address0 mem_address 1 3 }  { AB_4_ce0 mem_ce 1 1 }  { AB_4_we0 mem_we 1 1 }  { AB_4_d0 mem_din 1 32 } } }
	AB_5 { ap_memory {  { AB_5_address0 mem_address 1 3 }  { AB_5_ce0 mem_ce 1 1 }  { AB_5_we0 mem_we 1 1 }  { AB_5_d0 mem_din 1 32 } } }
	AB_6 { ap_memory {  { AB_6_address0 mem_address 1 3 }  { AB_6_ce0 mem_ce 1 1 }  { AB_6_we0 mem_we 1 1 }  { AB_6_d0 mem_din 1 32 } } }
	AB_7 { ap_memory {  { AB_7_address0 mem_address 1 3 }  { AB_7_ce0 mem_ce 1 1 }  { AB_7_we0 mem_we 1 1 }  { AB_7_d0 mem_din 1 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
