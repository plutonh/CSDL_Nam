#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("A_0_address0", 3, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("A_0_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("A_0_q0", 32, hls_in, 0, "ap_memory", "in_data", 1),
	Port_Property("A_1_address0", 3, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("A_1_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("A_1_q0", 32, hls_in, 1, "ap_memory", "in_data", 1),
	Port_Property("A_2_address0", 3, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("A_2_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("A_2_q0", 32, hls_in, 2, "ap_memory", "in_data", 1),
	Port_Property("A_3_address0", 3, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("A_3_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("A_3_q0", 32, hls_in, 3, "ap_memory", "in_data", 1),
	Port_Property("A_4_address0", 3, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("A_4_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("A_4_q0", 32, hls_in, 4, "ap_memory", "in_data", 1),
	Port_Property("A_5_address0", 3, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("A_5_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("A_5_q0", 32, hls_in, 5, "ap_memory", "in_data", 1),
	Port_Property("A_6_address0", 3, hls_out, 6, "ap_memory", "mem_address", 1),
	Port_Property("A_6_ce0", 1, hls_out, 6, "ap_memory", "mem_ce", 1),
	Port_Property("A_6_q0", 32, hls_in, 6, "ap_memory", "in_data", 1),
	Port_Property("A_7_address0", 3, hls_out, 7, "ap_memory", "mem_address", 1),
	Port_Property("A_7_ce0", 1, hls_out, 7, "ap_memory", "mem_ce", 1),
	Port_Property("A_7_q0", 32, hls_in, 7, "ap_memory", "in_data", 1),
	Port_Property("B_0_0", 32, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("B_0_1", 32, hls_in, 9, "ap_none", "in_data", 1),
	Port_Property("B_0_2", 32, hls_in, 10, "ap_none", "in_data", 1),
	Port_Property("B_0_3", 32, hls_in, 11, "ap_none", "in_data", 1),
	Port_Property("B_0_4", 32, hls_in, 12, "ap_none", "in_data", 1),
	Port_Property("B_0_5", 32, hls_in, 13, "ap_none", "in_data", 1),
	Port_Property("B_0_6", 32, hls_in, 14, "ap_none", "in_data", 1),
	Port_Property("B_0_7", 32, hls_in, 15, "ap_none", "in_data", 1),
	Port_Property("B_1_0", 32, hls_in, 16, "ap_none", "in_data", 1),
	Port_Property("B_1_1", 32, hls_in, 17, "ap_none", "in_data", 1),
	Port_Property("B_1_2", 32, hls_in, 18, "ap_none", "in_data", 1),
	Port_Property("B_1_3", 32, hls_in, 19, "ap_none", "in_data", 1),
	Port_Property("B_1_4", 32, hls_in, 20, "ap_none", "in_data", 1),
	Port_Property("B_1_5", 32, hls_in, 21, "ap_none", "in_data", 1),
	Port_Property("B_1_6", 32, hls_in, 22, "ap_none", "in_data", 1),
	Port_Property("B_1_7", 32, hls_in, 23, "ap_none", "in_data", 1),
	Port_Property("B_2_0", 32, hls_in, 24, "ap_none", "in_data", 1),
	Port_Property("B_2_1", 32, hls_in, 25, "ap_none", "in_data", 1),
	Port_Property("B_2_2", 32, hls_in, 26, "ap_none", "in_data", 1),
	Port_Property("B_2_3", 32, hls_in, 27, "ap_none", "in_data", 1),
	Port_Property("B_2_4", 32, hls_in, 28, "ap_none", "in_data", 1),
	Port_Property("B_2_5", 32, hls_in, 29, "ap_none", "in_data", 1),
	Port_Property("B_2_6", 32, hls_in, 30, "ap_none", "in_data", 1),
	Port_Property("B_2_7", 32, hls_in, 31, "ap_none", "in_data", 1),
	Port_Property("B_3_0", 32, hls_in, 32, "ap_none", "in_data", 1),
	Port_Property("B_3_1", 32, hls_in, 33, "ap_none", "in_data", 1),
	Port_Property("B_3_2", 32, hls_in, 34, "ap_none", "in_data", 1),
	Port_Property("B_3_3", 32, hls_in, 35, "ap_none", "in_data", 1),
	Port_Property("B_3_4", 32, hls_in, 36, "ap_none", "in_data", 1),
	Port_Property("B_3_5", 32, hls_in, 37, "ap_none", "in_data", 1),
	Port_Property("B_3_6", 32, hls_in, 38, "ap_none", "in_data", 1),
	Port_Property("B_3_7", 32, hls_in, 39, "ap_none", "in_data", 1),
	Port_Property("B_4_0", 32, hls_in, 40, "ap_none", "in_data", 1),
	Port_Property("B_4_1", 32, hls_in, 41, "ap_none", "in_data", 1),
	Port_Property("B_4_2", 32, hls_in, 42, "ap_none", "in_data", 1),
	Port_Property("B_4_3", 32, hls_in, 43, "ap_none", "in_data", 1),
	Port_Property("B_4_4", 32, hls_in, 44, "ap_none", "in_data", 1),
	Port_Property("B_4_5", 32, hls_in, 45, "ap_none", "in_data", 1),
	Port_Property("B_4_6", 32, hls_in, 46, "ap_none", "in_data", 1),
	Port_Property("B_4_7", 32, hls_in, 47, "ap_none", "in_data", 1),
	Port_Property("B_5_0", 32, hls_in, 48, "ap_none", "in_data", 1),
	Port_Property("B_5_1", 32, hls_in, 49, "ap_none", "in_data", 1),
	Port_Property("B_5_2", 32, hls_in, 50, "ap_none", "in_data", 1),
	Port_Property("B_5_3", 32, hls_in, 51, "ap_none", "in_data", 1),
	Port_Property("B_5_4", 32, hls_in, 52, "ap_none", "in_data", 1),
	Port_Property("B_5_5", 32, hls_in, 53, "ap_none", "in_data", 1),
	Port_Property("B_5_6", 32, hls_in, 54, "ap_none", "in_data", 1),
	Port_Property("B_5_7", 32, hls_in, 55, "ap_none", "in_data", 1),
	Port_Property("B_6_0", 32, hls_in, 56, "ap_none", "in_data", 1),
	Port_Property("B_6_1", 32, hls_in, 57, "ap_none", "in_data", 1),
	Port_Property("B_6_2", 32, hls_in, 58, "ap_none", "in_data", 1),
	Port_Property("B_6_3", 32, hls_in, 59, "ap_none", "in_data", 1),
	Port_Property("B_6_4", 32, hls_in, 60, "ap_none", "in_data", 1),
	Port_Property("B_6_5", 32, hls_in, 61, "ap_none", "in_data", 1),
	Port_Property("B_6_6", 32, hls_in, 62, "ap_none", "in_data", 1),
	Port_Property("B_6_7", 32, hls_in, 63, "ap_none", "in_data", 1),
	Port_Property("B_7_0", 32, hls_in, 64, "ap_none", "in_data", 1),
	Port_Property("B_7_1", 32, hls_in, 65, "ap_none", "in_data", 1),
	Port_Property("B_7_2", 32, hls_in, 66, "ap_none", "in_data", 1),
	Port_Property("B_7_3", 32, hls_in, 67, "ap_none", "in_data", 1),
	Port_Property("B_7_4", 32, hls_in, 68, "ap_none", "in_data", 1),
	Port_Property("B_7_5", 32, hls_in, 69, "ap_none", "in_data", 1),
	Port_Property("B_7_6", 32, hls_in, 70, "ap_none", "in_data", 1),
	Port_Property("B_7_7", 32, hls_in, 71, "ap_none", "in_data", 1),
	Port_Property("AB_0_address0", 3, hls_out, 72, "ap_memory", "mem_address", 1),
	Port_Property("AB_0_ce0", 1, hls_out, 72, "ap_memory", "mem_ce", 1),
	Port_Property("AB_0_we0", 1, hls_out, 72, "ap_memory", "mem_we", 1),
	Port_Property("AB_0_d0", 32, hls_out, 72, "ap_memory", "mem_din", 1),
	Port_Property("AB_1_address0", 3, hls_out, 73, "ap_memory", "mem_address", 1),
	Port_Property("AB_1_ce0", 1, hls_out, 73, "ap_memory", "mem_ce", 1),
	Port_Property("AB_1_we0", 1, hls_out, 73, "ap_memory", "mem_we", 1),
	Port_Property("AB_1_d0", 32, hls_out, 73, "ap_memory", "mem_din", 1),
	Port_Property("AB_2_address0", 3, hls_out, 74, "ap_memory", "mem_address", 1),
	Port_Property("AB_2_ce0", 1, hls_out, 74, "ap_memory", "mem_ce", 1),
	Port_Property("AB_2_we0", 1, hls_out, 74, "ap_memory", "mem_we", 1),
	Port_Property("AB_2_d0", 32, hls_out, 74, "ap_memory", "mem_din", 1),
	Port_Property("AB_3_address0", 3, hls_out, 75, "ap_memory", "mem_address", 1),
	Port_Property("AB_3_ce0", 1, hls_out, 75, "ap_memory", "mem_ce", 1),
	Port_Property("AB_3_we0", 1, hls_out, 75, "ap_memory", "mem_we", 1),
	Port_Property("AB_3_d0", 32, hls_out, 75, "ap_memory", "mem_din", 1),
	Port_Property("AB_4_address0", 3, hls_out, 76, "ap_memory", "mem_address", 1),
	Port_Property("AB_4_ce0", 1, hls_out, 76, "ap_memory", "mem_ce", 1),
	Port_Property("AB_4_we0", 1, hls_out, 76, "ap_memory", "mem_we", 1),
	Port_Property("AB_4_d0", 32, hls_out, 76, "ap_memory", "mem_din", 1),
	Port_Property("AB_5_address0", 3, hls_out, 77, "ap_memory", "mem_address", 1),
	Port_Property("AB_5_ce0", 1, hls_out, 77, "ap_memory", "mem_ce", 1),
	Port_Property("AB_5_we0", 1, hls_out, 77, "ap_memory", "mem_we", 1),
	Port_Property("AB_5_d0", 32, hls_out, 77, "ap_memory", "mem_din", 1),
	Port_Property("AB_6_address0", 3, hls_out, 78, "ap_memory", "mem_address", 1),
	Port_Property("AB_6_ce0", 1, hls_out, 78, "ap_memory", "mem_ce", 1),
	Port_Property("AB_6_we0", 1, hls_out, 78, "ap_memory", "mem_we", 1),
	Port_Property("AB_6_d0", 32, hls_out, 78, "ap_memory", "mem_din", 1),
	Port_Property("AB_7_address0", 3, hls_out, 79, "ap_memory", "mem_address", 1),
	Port_Property("AB_7_ce0", 1, hls_out, 79, "ap_memory", "mem_ce", 1),
	Port_Property("AB_7_we0", 1, hls_out, 79, "ap_memory", "mem_we", 1),
	Port_Property("AB_7_d0", 32, hls_out, 79, "ap_memory", "mem_din", 1),
};
const char* HLS_Design_Meta::dut_name = "mm";
