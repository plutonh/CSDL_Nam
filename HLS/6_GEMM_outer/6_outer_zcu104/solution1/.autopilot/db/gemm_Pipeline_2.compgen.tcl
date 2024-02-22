# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 13 \
    name b_buff \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename b_buff \
    op interface \
    ports { b_buff_address0 { O 3 vector } b_buff_ce0 { O 1 bit } b_buff_we0 { O 1 bit } b_buff_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 14 \
    name b_buff_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename b_buff_1 \
    op interface \
    ports { b_buff_1_address0 { O 3 vector } b_buff_1_ce0 { O 1 bit } b_buff_1_we0 { O 1 bit } b_buff_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 15 \
    name b_buff_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename b_buff_2 \
    op interface \
    ports { b_buff_2_address0 { O 3 vector } b_buff_2_ce0 { O 1 bit } b_buff_2_we0 { O 1 bit } b_buff_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 16 \
    name b_buff_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename b_buff_3 \
    op interface \
    ports { b_buff_3_address0 { O 3 vector } b_buff_3_ce0 { O 1 bit } b_buff_3_we0 { O 1 bit } b_buff_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 17 \
    name b_buff_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename b_buff_4 \
    op interface \
    ports { b_buff_4_address0 { O 3 vector } b_buff_4_ce0 { O 1 bit } b_buff_4_we0 { O 1 bit } b_buff_4_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name b_buff_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename b_buff_5 \
    op interface \
    ports { b_buff_5_address0 { O 3 vector } b_buff_5_ce0 { O 1 bit } b_buff_5_we0 { O 1 bit } b_buff_5_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name b_buff_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename b_buff_6 \
    op interface \
    ports { b_buff_6_address0 { O 3 vector } b_buff_6_ce0 { O 1 bit } b_buff_6_we0 { O 1 bit } b_buff_6_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name b_buff_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename b_buff_7 \
    op interface \
    ports { b_buff_7_address0 { O 3 vector } b_buff_7_ce0 { O 1 bit } b_buff_7_we0 { O 1 bit } b_buff_7_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name b_port \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b_port \
    op interface \
    ports { m_axi_b_port_AWVALID { O 1 bit } m_axi_b_port_AWREADY { I 1 bit } m_axi_b_port_AWADDR { O 64 vector } m_axi_b_port_AWID { O 1 vector } m_axi_b_port_AWLEN { O 32 vector } m_axi_b_port_AWSIZE { O 3 vector } m_axi_b_port_AWBURST { O 2 vector } m_axi_b_port_AWLOCK { O 2 vector } m_axi_b_port_AWCACHE { O 4 vector } m_axi_b_port_AWPROT { O 3 vector } m_axi_b_port_AWQOS { O 4 vector } m_axi_b_port_AWREGION { O 4 vector } m_axi_b_port_AWUSER { O 1 vector } m_axi_b_port_WVALID { O 1 bit } m_axi_b_port_WREADY { I 1 bit } m_axi_b_port_WDATA { O 32 vector } m_axi_b_port_WSTRB { O 4 vector } m_axi_b_port_WLAST { O 1 bit } m_axi_b_port_WID { O 1 vector } m_axi_b_port_WUSER { O 1 vector } m_axi_b_port_ARVALID { O 1 bit } m_axi_b_port_ARREADY { I 1 bit } m_axi_b_port_ARADDR { O 64 vector } m_axi_b_port_ARID { O 1 vector } m_axi_b_port_ARLEN { O 32 vector } m_axi_b_port_ARSIZE { O 3 vector } m_axi_b_port_ARBURST { O 2 vector } m_axi_b_port_ARLOCK { O 2 vector } m_axi_b_port_ARCACHE { O 4 vector } m_axi_b_port_ARPROT { O 3 vector } m_axi_b_port_ARQOS { O 4 vector } m_axi_b_port_ARREGION { O 4 vector } m_axi_b_port_ARUSER { O 1 vector } m_axi_b_port_RVALID { I 1 bit } m_axi_b_port_RREADY { O 1 bit } m_axi_b_port_RDATA { I 32 vector } m_axi_b_port_RLAST { I 1 bit } m_axi_b_port_RID { I 1 vector } m_axi_b_port_RFIFONUM { I 9 vector } m_axi_b_port_RUSER { I 1 vector } m_axi_b_port_RRESP { I 2 vector } m_axi_b_port_BVALID { I 1 bit } m_axi_b_port_BREADY { O 1 bit } m_axi_b_port_BRESP { I 2 vector } m_axi_b_port_BID { I 1 vector } m_axi_b_port_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name sext_ln41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln41 \
    op interface \
    ports { sext_ln41 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName gemm_flow_control_loop_pipe_sequential_init_U
set CompName gemm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix gemm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


