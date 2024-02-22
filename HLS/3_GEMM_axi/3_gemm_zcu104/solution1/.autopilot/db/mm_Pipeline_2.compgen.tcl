# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name B_port \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_port \
    op interface \
    ports { m_axi_B_port_AWVALID { O 1 bit } m_axi_B_port_AWREADY { I 1 bit } m_axi_B_port_AWADDR { O 64 vector } m_axi_B_port_AWID { O 1 vector } m_axi_B_port_AWLEN { O 32 vector } m_axi_B_port_AWSIZE { O 3 vector } m_axi_B_port_AWBURST { O 2 vector } m_axi_B_port_AWLOCK { O 2 vector } m_axi_B_port_AWCACHE { O 4 vector } m_axi_B_port_AWPROT { O 3 vector } m_axi_B_port_AWQOS { O 4 vector } m_axi_B_port_AWREGION { O 4 vector } m_axi_B_port_AWUSER { O 1 vector } m_axi_B_port_WVALID { O 1 bit } m_axi_B_port_WREADY { I 1 bit } m_axi_B_port_WDATA { O 32 vector } m_axi_B_port_WSTRB { O 4 vector } m_axi_B_port_WLAST { O 1 bit } m_axi_B_port_WID { O 1 vector } m_axi_B_port_WUSER { O 1 vector } m_axi_B_port_ARVALID { O 1 bit } m_axi_B_port_ARREADY { I 1 bit } m_axi_B_port_ARADDR { O 64 vector } m_axi_B_port_ARID { O 1 vector } m_axi_B_port_ARLEN { O 32 vector } m_axi_B_port_ARSIZE { O 3 vector } m_axi_B_port_ARBURST { O 2 vector } m_axi_B_port_ARLOCK { O 2 vector } m_axi_B_port_ARCACHE { O 4 vector } m_axi_B_port_ARPROT { O 3 vector } m_axi_B_port_ARQOS { O 4 vector } m_axi_B_port_ARREGION { O 4 vector } m_axi_B_port_ARUSER { O 1 vector } m_axi_B_port_RVALID { I 1 bit } m_axi_B_port_RREADY { O 1 bit } m_axi_B_port_RDATA { I 32 vector } m_axi_B_port_RLAST { I 1 bit } m_axi_B_port_RID { I 1 vector } m_axi_B_port_RFIFONUM { I 9 vector } m_axi_B_port_RUSER { I 1 vector } m_axi_B_port_RRESP { I 2 vector } m_axi_B_port_BVALID { I 1 bit } m_axi_B_port_BREADY { O 1 bit } m_axi_B_port_BRESP { I 2 vector } m_axi_B_port_BID { I 1 vector } m_axi_B_port_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name sext_ln35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln35 \
    op interface \
    ports { sext_ln35 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name B_buff_63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_63_out \
    op interface \
    ports { B_buff_63_out { O 32 vector } B_buff_63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name B_buff_62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_62_out \
    op interface \
    ports { B_buff_62_out { O 32 vector } B_buff_62_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name B_buff_61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_61_out \
    op interface \
    ports { B_buff_61_out { O 32 vector } B_buff_61_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name B_buff_60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_60_out \
    op interface \
    ports { B_buff_60_out { O 32 vector } B_buff_60_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name B_buff_59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_59_out \
    op interface \
    ports { B_buff_59_out { O 32 vector } B_buff_59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name B_buff_58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_58_out \
    op interface \
    ports { B_buff_58_out { O 32 vector } B_buff_58_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name B_buff_57_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_57_out \
    op interface \
    ports { B_buff_57_out { O 32 vector } B_buff_57_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name B_buff_56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_56_out \
    op interface \
    ports { B_buff_56_out { O 32 vector } B_buff_56_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name B_buff_55_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_55_out \
    op interface \
    ports { B_buff_55_out { O 32 vector } B_buff_55_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name B_buff_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_54_out \
    op interface \
    ports { B_buff_54_out { O 32 vector } B_buff_54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name B_buff_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_53_out \
    op interface \
    ports { B_buff_53_out { O 32 vector } B_buff_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name B_buff_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_52_out \
    op interface \
    ports { B_buff_52_out { O 32 vector } B_buff_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name B_buff_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_51_out \
    op interface \
    ports { B_buff_51_out { O 32 vector } B_buff_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name B_buff_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_50_out \
    op interface \
    ports { B_buff_50_out { O 32 vector } B_buff_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name B_buff_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_49_out \
    op interface \
    ports { B_buff_49_out { O 32 vector } B_buff_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name B_buff_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_48_out \
    op interface \
    ports { B_buff_48_out { O 32 vector } B_buff_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name B_buff_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_47_out \
    op interface \
    ports { B_buff_47_out { O 32 vector } B_buff_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name B_buff_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_46_out \
    op interface \
    ports { B_buff_46_out { O 32 vector } B_buff_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name B_buff_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_45_out \
    op interface \
    ports { B_buff_45_out { O 32 vector } B_buff_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name B_buff_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_44_out \
    op interface \
    ports { B_buff_44_out { O 32 vector } B_buff_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name B_buff_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_43_out \
    op interface \
    ports { B_buff_43_out { O 32 vector } B_buff_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name B_buff_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_42_out \
    op interface \
    ports { B_buff_42_out { O 32 vector } B_buff_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name B_buff_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_41_out \
    op interface \
    ports { B_buff_41_out { O 32 vector } B_buff_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name B_buff_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_40_out \
    op interface \
    ports { B_buff_40_out { O 32 vector } B_buff_40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name B_buff_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_39_out \
    op interface \
    ports { B_buff_39_out { O 32 vector } B_buff_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name B_buff_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_38_out \
    op interface \
    ports { B_buff_38_out { O 32 vector } B_buff_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name B_buff_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_37_out \
    op interface \
    ports { B_buff_37_out { O 32 vector } B_buff_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name B_buff_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_36_out \
    op interface \
    ports { B_buff_36_out { O 32 vector } B_buff_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name B_buff_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_35_out \
    op interface \
    ports { B_buff_35_out { O 32 vector } B_buff_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name B_buff_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_34_out \
    op interface \
    ports { B_buff_34_out { O 32 vector } B_buff_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name B_buff_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_33_out \
    op interface \
    ports { B_buff_33_out { O 32 vector } B_buff_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name B_buff_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_32_out \
    op interface \
    ports { B_buff_32_out { O 32 vector } B_buff_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name B_buff_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_31_out \
    op interface \
    ports { B_buff_31_out { O 32 vector } B_buff_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name B_buff_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_30_out \
    op interface \
    ports { B_buff_30_out { O 32 vector } B_buff_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name B_buff_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_29_out \
    op interface \
    ports { B_buff_29_out { O 32 vector } B_buff_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name B_buff_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_28_out \
    op interface \
    ports { B_buff_28_out { O 32 vector } B_buff_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name B_buff_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_27_out \
    op interface \
    ports { B_buff_27_out { O 32 vector } B_buff_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name B_buff_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_26_out \
    op interface \
    ports { B_buff_26_out { O 32 vector } B_buff_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name B_buff_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_25_out \
    op interface \
    ports { B_buff_25_out { O 32 vector } B_buff_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name B_buff_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_24_out \
    op interface \
    ports { B_buff_24_out { O 32 vector } B_buff_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name B_buff_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_23_out \
    op interface \
    ports { B_buff_23_out { O 32 vector } B_buff_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name B_buff_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_22_out \
    op interface \
    ports { B_buff_22_out { O 32 vector } B_buff_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name B_buff_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_21_out \
    op interface \
    ports { B_buff_21_out { O 32 vector } B_buff_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name B_buff_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_20_out \
    op interface \
    ports { B_buff_20_out { O 32 vector } B_buff_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name B_buff_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_19_out \
    op interface \
    ports { B_buff_19_out { O 32 vector } B_buff_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name B_buff_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_18_out \
    op interface \
    ports { B_buff_18_out { O 32 vector } B_buff_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name B_buff_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_17_out \
    op interface \
    ports { B_buff_17_out { O 32 vector } B_buff_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name B_buff_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_16_out \
    op interface \
    ports { B_buff_16_out { O 32 vector } B_buff_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name B_buff_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_15_out \
    op interface \
    ports { B_buff_15_out { O 32 vector } B_buff_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name B_buff_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_14_out \
    op interface \
    ports { B_buff_14_out { O 32 vector } B_buff_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name B_buff_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_13_out \
    op interface \
    ports { B_buff_13_out { O 32 vector } B_buff_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name B_buff_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_12_out \
    op interface \
    ports { B_buff_12_out { O 32 vector } B_buff_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name B_buff_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_11_out \
    op interface \
    ports { B_buff_11_out { O 32 vector } B_buff_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name B_buff_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_10_out \
    op interface \
    ports { B_buff_10_out { O 32 vector } B_buff_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name B_buff_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_9_out \
    op interface \
    ports { B_buff_9_out { O 32 vector } B_buff_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name B_buff_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_8_out \
    op interface \
    ports { B_buff_8_out { O 32 vector } B_buff_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name B_buff_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_7_out \
    op interface \
    ports { B_buff_7_out { O 32 vector } B_buff_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name B_buff_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_6_out \
    op interface \
    ports { B_buff_6_out { O 32 vector } B_buff_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name B_buff_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_5_out \
    op interface \
    ports { B_buff_5_out { O 32 vector } B_buff_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name B_buff_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_4_out \
    op interface \
    ports { B_buff_4_out { O 32 vector } B_buff_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name B_buff_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_3_out \
    op interface \
    ports { B_buff_3_out { O 32 vector } B_buff_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name B_buff_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_2_out \
    op interface \
    ports { B_buff_2_out { O 32 vector } B_buff_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name B_buff_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_1_out \
    op interface \
    ports { B_buff_1_out { O 32 vector } B_buff_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name B_buff_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_out \
    op interface \
    ports { B_buff_out { O 32 vector } B_buff_out_ap_vld { O 1 bit } } \
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


