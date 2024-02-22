# This script segment is generated automatically by AutoPilot

set id 222
set name mm_mux_83_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 3
set din8_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


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
    id 226 \
    name AB_buff \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename AB_buff \
    op interface \
    ports { AB_buff_address0 { O 3 vector } AB_buff_ce0 { O 1 bit } AB_buff_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 227 \
    name AB_buff_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename AB_buff_1 \
    op interface \
    ports { AB_buff_1_address0 { O 3 vector } AB_buff_1_ce0 { O 1 bit } AB_buff_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 228 \
    name AB_buff_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename AB_buff_2 \
    op interface \
    ports { AB_buff_2_address0 { O 3 vector } AB_buff_2_ce0 { O 1 bit } AB_buff_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 229 \
    name AB_buff_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename AB_buff_3 \
    op interface \
    ports { AB_buff_3_address0 { O 3 vector } AB_buff_3_ce0 { O 1 bit } AB_buff_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 230 \
    name AB_buff_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename AB_buff_4 \
    op interface \
    ports { AB_buff_4_address0 { O 3 vector } AB_buff_4_ce0 { O 1 bit } AB_buff_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 231 \
    name AB_buff_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename AB_buff_5 \
    op interface \
    ports { AB_buff_5_address0 { O 3 vector } AB_buff_5_ce0 { O 1 bit } AB_buff_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 232 \
    name AB_buff_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename AB_buff_6 \
    op interface \
    ports { AB_buff_6_address0 { O 3 vector } AB_buff_6_ce0 { O 1 bit } AB_buff_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 233 \
    name AB_buff_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename AB_buff_7 \
    op interface \
    ports { AB_buff_7_address0 { O 3 vector } AB_buff_7_ce0 { O 1 bit } AB_buff_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name AB_port \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_AB_port \
    op interface \
    ports { m_axi_AB_port_AWVALID { O 1 bit } m_axi_AB_port_AWREADY { I 1 bit } m_axi_AB_port_AWADDR { O 64 vector } m_axi_AB_port_AWID { O 1 vector } m_axi_AB_port_AWLEN { O 32 vector } m_axi_AB_port_AWSIZE { O 3 vector } m_axi_AB_port_AWBURST { O 2 vector } m_axi_AB_port_AWLOCK { O 2 vector } m_axi_AB_port_AWCACHE { O 4 vector } m_axi_AB_port_AWPROT { O 3 vector } m_axi_AB_port_AWQOS { O 4 vector } m_axi_AB_port_AWREGION { O 4 vector } m_axi_AB_port_AWUSER { O 1 vector } m_axi_AB_port_WVALID { O 1 bit } m_axi_AB_port_WREADY { I 1 bit } m_axi_AB_port_WDATA { O 32 vector } m_axi_AB_port_WSTRB { O 4 vector } m_axi_AB_port_WLAST { O 1 bit } m_axi_AB_port_WID { O 1 vector } m_axi_AB_port_WUSER { O 1 vector } m_axi_AB_port_ARVALID { O 1 bit } m_axi_AB_port_ARREADY { I 1 bit } m_axi_AB_port_ARADDR { O 64 vector } m_axi_AB_port_ARID { O 1 vector } m_axi_AB_port_ARLEN { O 32 vector } m_axi_AB_port_ARSIZE { O 3 vector } m_axi_AB_port_ARBURST { O 2 vector } m_axi_AB_port_ARLOCK { O 2 vector } m_axi_AB_port_ARCACHE { O 4 vector } m_axi_AB_port_ARPROT { O 3 vector } m_axi_AB_port_ARQOS { O 4 vector } m_axi_AB_port_ARREGION { O 4 vector } m_axi_AB_port_ARUSER { O 1 vector } m_axi_AB_port_RVALID { I 1 bit } m_axi_AB_port_RREADY { O 1 bit } m_axi_AB_port_RDATA { I 32 vector } m_axi_AB_port_RLAST { I 1 bit } m_axi_AB_port_RID { I 1 vector } m_axi_AB_port_RFIFONUM { I 9 vector } m_axi_AB_port_RUSER { I 1 vector } m_axi_AB_port_RRESP { I 2 vector } m_axi_AB_port_BVALID { I 1 bit } m_axi_AB_port_BREADY { O 1 bit } m_axi_AB_port_BRESP { I 2 vector } m_axi_AB_port_BID { I 1 vector } m_axi_AB_port_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name sext_ln53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln53 \
    op interface \
    ports { sext_ln53 { I 62 vector } } \
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
set InstName mm_flow_control_loop_pipe_sequential_init_U
set CompName mm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix mm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


