# This script segment is generated automatically by AutoPilot

set name mm_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name A_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_0 \
    op interface \
    ports { A_0_address0 { O 3 vector } A_0_ce0 { O 1 bit } A_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name A_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_1 \
    op interface \
    ports { A_1_address0 { O 3 vector } A_1_ce0 { O 1 bit } A_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name A_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_2 \
    op interface \
    ports { A_2_address0 { O 3 vector } A_2_ce0 { O 1 bit } A_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
    name A_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_3 \
    op interface \
    ports { A_3_address0 { O 3 vector } A_3_ce0 { O 1 bit } A_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 70 \
    name A_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_4 \
    op interface \
    ports { A_4_address0 { O 3 vector } A_4_ce0 { O 1 bit } A_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 71 \
    name A_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_5 \
    op interface \
    ports { A_5_address0 { O 3 vector } A_5_ce0 { O 1 bit } A_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 72 \
    name A_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_6 \
    op interface \
    ports { A_6_address0 { O 3 vector } A_6_ce0 { O 1 bit } A_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 73 \
    name A_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_7 \
    op interface \
    ports { A_7_address0 { O 3 vector } A_7_ce0 { O 1 bit } A_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name AB_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_0 \
    op interface \
    ports { AB_0_address0 { O 3 vector } AB_0_ce0 { O 1 bit } AB_0_we0 { O 1 bit } AB_0_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name AB_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_1 \
    op interface \
    ports { AB_1_address0 { O 3 vector } AB_1_ce0 { O 1 bit } AB_1_we0 { O 1 bit } AB_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name AB_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_2 \
    op interface \
    ports { AB_2_address0 { O 3 vector } AB_2_ce0 { O 1 bit } AB_2_we0 { O 1 bit } AB_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name AB_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_3 \
    op interface \
    ports { AB_3_address0 { O 3 vector } AB_3_ce0 { O 1 bit } AB_3_we0 { O 1 bit } AB_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name AB_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_4 \
    op interface \
    ports { AB_4_address0 { O 3 vector } AB_4_ce0 { O 1 bit } AB_4_we0 { O 1 bit } AB_4_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name AB_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_5 \
    op interface \
    ports { AB_5_address0 { O 3 vector } AB_5_ce0 { O 1 bit } AB_5_we0 { O 1 bit } AB_5_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name AB_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_6 \
    op interface \
    ports { AB_6_address0 { O 3 vector } AB_6_ce0 { O 1 bit } AB_6_we0 { O 1 bit } AB_6_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name AB_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_7 \
    op interface \
    ports { AB_7_address0 { O 3 vector } AB_7_ce0 { O 1 bit } AB_7_we0 { O 1 bit } AB_7_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name B_0_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_0 \
    op interface \
    ports { B_0_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name B_0_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_1 \
    op interface \
    ports { B_0_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name B_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_2 \
    op interface \
    ports { B_0_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name B_0_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_3 \
    op interface \
    ports { B_0_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name B_0_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_4 \
    op interface \
    ports { B_0_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name B_0_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_5 \
    op interface \
    ports { B_0_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name B_0_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_6 \
    op interface \
    ports { B_0_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name B_0_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_0_7 \
    op interface \
    ports { B_0_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name B_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_0 \
    op interface \
    ports { B_1_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name B_1_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_1 \
    op interface \
    ports { B_1_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name B_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_2 \
    op interface \
    ports { B_1_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name B_1_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_3 \
    op interface \
    ports { B_1_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name B_1_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_4 \
    op interface \
    ports { B_1_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name B_1_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_5 \
    op interface \
    ports { B_1_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name B_1_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_6 \
    op interface \
    ports { B_1_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name B_1_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_1_7 \
    op interface \
    ports { B_1_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name B_2_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_0 \
    op interface \
    ports { B_2_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name B_2_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_1 \
    op interface \
    ports { B_2_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name B_2_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_2 \
    op interface \
    ports { B_2_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name B_2_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_3 \
    op interface \
    ports { B_2_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name B_2_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_4 \
    op interface \
    ports { B_2_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name B_2_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_5 \
    op interface \
    ports { B_2_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name B_2_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_6 \
    op interface \
    ports { B_2_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name B_2_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_2_7 \
    op interface \
    ports { B_2_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name B_3_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_0 \
    op interface \
    ports { B_3_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name B_3_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_1 \
    op interface \
    ports { B_3_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name B_3_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_2 \
    op interface \
    ports { B_3_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name B_3_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_3 \
    op interface \
    ports { B_3_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name B_3_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_4 \
    op interface \
    ports { B_3_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name B_3_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_5 \
    op interface \
    ports { B_3_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name B_3_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_6 \
    op interface \
    ports { B_3_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name B_3_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_3_7 \
    op interface \
    ports { B_3_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name B_4_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_0 \
    op interface \
    ports { B_4_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name B_4_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_1 \
    op interface \
    ports { B_4_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name B_4_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_2 \
    op interface \
    ports { B_4_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name B_4_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_3 \
    op interface \
    ports { B_4_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name B_4_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_4 \
    op interface \
    ports { B_4_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name B_4_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_5 \
    op interface \
    ports { B_4_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name B_4_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_6 \
    op interface \
    ports { B_4_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name B_4_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_4_7 \
    op interface \
    ports { B_4_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name B_5_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_0 \
    op interface \
    ports { B_5_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name B_5_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_1 \
    op interface \
    ports { B_5_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name B_5_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_2 \
    op interface \
    ports { B_5_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name B_5_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_3 \
    op interface \
    ports { B_5_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name B_5_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_4 \
    op interface \
    ports { B_5_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name B_5_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_5 \
    op interface \
    ports { B_5_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name B_5_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_6 \
    op interface \
    ports { B_5_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name B_5_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_5_7 \
    op interface \
    ports { B_5_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name B_6_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_6_0 \
    op interface \
    ports { B_6_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name B_6_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_6_1 \
    op interface \
    ports { B_6_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name B_6_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_6_2 \
    op interface \
    ports { B_6_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name B_6_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_6_3 \
    op interface \
    ports { B_6_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name B_6_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_6_4 \
    op interface \
    ports { B_6_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name B_6_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_6_5 \
    op interface \
    ports { B_6_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name B_6_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_6_6 \
    op interface \
    ports { B_6_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name B_6_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_6_7 \
    op interface \
    ports { B_6_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name B_7_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_7_0 \
    op interface \
    ports { B_7_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name B_7_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_7_1 \
    op interface \
    ports { B_7_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name B_7_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_7_2 \
    op interface \
    ports { B_7_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name B_7_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_7_3 \
    op interface \
    ports { B_7_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name B_7_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_7_4 \
    op interface \
    ports { B_7_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name B_7_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_7_5 \
    op interface \
    ports { B_7_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name B_7_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_7_6 \
    op interface \
    ports { B_7_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name B_7_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_7_7 \
    op interface \
    ports { B_7_7 { I 32 vector } } \
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
set InstName mm_flow_control_loop_pipe_U
set CompName mm_flow_control_loop_pipe
set name flow_control_loop_pipe
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


