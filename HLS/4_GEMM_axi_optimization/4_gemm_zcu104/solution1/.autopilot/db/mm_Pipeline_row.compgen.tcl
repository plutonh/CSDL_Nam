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

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name AB_buff_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_buff_7 \
    op interface \
    ports { AB_buff_7_address0 { O 3 vector } AB_buff_7_ce0 { O 1 bit } AB_buff_7_we0 { O 1 bit } AB_buff_7_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name AB_buff_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_buff_6 \
    op interface \
    ports { AB_buff_6_address0 { O 3 vector } AB_buff_6_ce0 { O 1 bit } AB_buff_6_we0 { O 1 bit } AB_buff_6_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name AB_buff_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_buff_5 \
    op interface \
    ports { AB_buff_5_address0 { O 3 vector } AB_buff_5_ce0 { O 1 bit } AB_buff_5_we0 { O 1 bit } AB_buff_5_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name AB_buff_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_buff_4 \
    op interface \
    ports { AB_buff_4_address0 { O 3 vector } AB_buff_4_ce0 { O 1 bit } AB_buff_4_we0 { O 1 bit } AB_buff_4_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name AB_buff_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_buff_3 \
    op interface \
    ports { AB_buff_3_address0 { O 3 vector } AB_buff_3_ce0 { O 1 bit } AB_buff_3_we0 { O 1 bit } AB_buff_3_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name AB_buff_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_buff_2 \
    op interface \
    ports { AB_buff_2_address0 { O 3 vector } AB_buff_2_ce0 { O 1 bit } AB_buff_2_we0 { O 1 bit } AB_buff_2_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name AB_buff_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_buff_1 \
    op interface \
    ports { AB_buff_1_address0 { O 3 vector } AB_buff_1_ce0 { O 1 bit } AB_buff_1_we0 { O 1 bit } AB_buff_1_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name AB_buff \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename AB_buff \
    op interface \
    ports { AB_buff_address0 { O 3 vector } AB_buff_ce0 { O 1 bit } AB_buff_we0 { O 1 bit } AB_buff_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AB_buff'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name A_buff \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_buff \
    op interface \
    ports { A_buff_address0 { O 3 vector } A_buff_ce0 { O 1 bit } A_buff_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_buff'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name A_buff_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_buff_1 \
    op interface \
    ports { A_buff_1_address0 { O 3 vector } A_buff_1_ce0 { O 1 bit } A_buff_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_buff_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name A_buff_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_buff_2 \
    op interface \
    ports { A_buff_2_address0 { O 3 vector } A_buff_2_ce0 { O 1 bit } A_buff_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_buff_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name A_buff_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_buff_3 \
    op interface \
    ports { A_buff_3_address0 { O 3 vector } A_buff_3_ce0 { O 1 bit } A_buff_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_buff_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name A_buff_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_buff_4 \
    op interface \
    ports { A_buff_4_address0 { O 3 vector } A_buff_4_ce0 { O 1 bit } A_buff_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_buff_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name A_buff_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_buff_5 \
    op interface \
    ports { A_buff_5_address0 { O 3 vector } A_buff_5_ce0 { O 1 bit } A_buff_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_buff_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name A_buff_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_buff_6 \
    op interface \
    ports { A_buff_6_address0 { O 3 vector } A_buff_6_ce0 { O 1 bit } A_buff_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_buff_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name A_buff_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename A_buff_7 \
    op interface \
    ports { A_buff_7_address0 { O 3 vector } A_buff_7_ce0 { O 1 bit } A_buff_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'A_buff_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name B_buff_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_reload \
    op interface \
    ports { B_buff_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name B_buff_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_8_reload \
    op interface \
    ports { B_buff_8_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name B_buff_16_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_16_reload \
    op interface \
    ports { B_buff_16_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name B_buff_24_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_24_reload \
    op interface \
    ports { B_buff_24_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name B_buff_32_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_32_reload \
    op interface \
    ports { B_buff_32_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name B_buff_40_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_40_reload \
    op interface \
    ports { B_buff_40_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name B_buff_48_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_48_reload \
    op interface \
    ports { B_buff_48_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name B_buff_56_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_56_reload \
    op interface \
    ports { B_buff_56_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name B_buff_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_1_reload \
    op interface \
    ports { B_buff_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name B_buff_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_9_reload \
    op interface \
    ports { B_buff_9_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name B_buff_17_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_17_reload \
    op interface \
    ports { B_buff_17_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name B_buff_25_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_25_reload \
    op interface \
    ports { B_buff_25_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name B_buff_33_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_33_reload \
    op interface \
    ports { B_buff_33_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name B_buff_41_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_41_reload \
    op interface \
    ports { B_buff_41_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name B_buff_49_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_49_reload \
    op interface \
    ports { B_buff_49_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name B_buff_57_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_57_reload \
    op interface \
    ports { B_buff_57_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name B_buff_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_2_reload \
    op interface \
    ports { B_buff_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name B_buff_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_10_reload \
    op interface \
    ports { B_buff_10_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name B_buff_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_18_reload \
    op interface \
    ports { B_buff_18_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name B_buff_26_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_26_reload \
    op interface \
    ports { B_buff_26_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name B_buff_34_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_34_reload \
    op interface \
    ports { B_buff_34_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name B_buff_42_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_42_reload \
    op interface \
    ports { B_buff_42_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name B_buff_50_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_50_reload \
    op interface \
    ports { B_buff_50_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name B_buff_58_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_58_reload \
    op interface \
    ports { B_buff_58_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name B_buff_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_3_reload \
    op interface \
    ports { B_buff_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name B_buff_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_11_reload \
    op interface \
    ports { B_buff_11_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name B_buff_19_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_19_reload \
    op interface \
    ports { B_buff_19_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name B_buff_27_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_27_reload \
    op interface \
    ports { B_buff_27_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name B_buff_35_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_35_reload \
    op interface \
    ports { B_buff_35_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name B_buff_43_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_43_reload \
    op interface \
    ports { B_buff_43_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name B_buff_51_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_51_reload \
    op interface \
    ports { B_buff_51_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name B_buff_59_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_59_reload \
    op interface \
    ports { B_buff_59_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name B_buff_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_4_reload \
    op interface \
    ports { B_buff_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name B_buff_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_12_reload \
    op interface \
    ports { B_buff_12_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name B_buff_20_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_20_reload \
    op interface \
    ports { B_buff_20_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name B_buff_28_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_28_reload \
    op interface \
    ports { B_buff_28_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name B_buff_36_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_36_reload \
    op interface \
    ports { B_buff_36_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name B_buff_44_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_44_reload \
    op interface \
    ports { B_buff_44_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name B_buff_52_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_52_reload \
    op interface \
    ports { B_buff_52_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name B_buff_60_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_60_reload \
    op interface \
    ports { B_buff_60_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name B_buff_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_5_reload \
    op interface \
    ports { B_buff_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name B_buff_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_13_reload \
    op interface \
    ports { B_buff_13_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name B_buff_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_21_reload \
    op interface \
    ports { B_buff_21_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name B_buff_29_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_29_reload \
    op interface \
    ports { B_buff_29_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name B_buff_37_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_37_reload \
    op interface \
    ports { B_buff_37_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name B_buff_45_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_45_reload \
    op interface \
    ports { B_buff_45_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name B_buff_53_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_53_reload \
    op interface \
    ports { B_buff_53_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name B_buff_61_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_61_reload \
    op interface \
    ports { B_buff_61_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name B_buff_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_6_reload \
    op interface \
    ports { B_buff_6_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name B_buff_14_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_14_reload \
    op interface \
    ports { B_buff_14_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name B_buff_22_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_22_reload \
    op interface \
    ports { B_buff_22_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name B_buff_30_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_30_reload \
    op interface \
    ports { B_buff_30_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name B_buff_38_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_38_reload \
    op interface \
    ports { B_buff_38_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name B_buff_46_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_46_reload \
    op interface \
    ports { B_buff_46_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name B_buff_54_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_54_reload \
    op interface \
    ports { B_buff_54_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name B_buff_62_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_62_reload \
    op interface \
    ports { B_buff_62_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name B_buff_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_7_reload \
    op interface \
    ports { B_buff_7_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name B_buff_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_15_reload \
    op interface \
    ports { B_buff_15_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name B_buff_23_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_23_reload \
    op interface \
    ports { B_buff_23_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name B_buff_31_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_31_reload \
    op interface \
    ports { B_buff_31_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name B_buff_39_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_39_reload \
    op interface \
    ports { B_buff_39_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name B_buff_47_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_47_reload \
    op interface \
    ports { B_buff_47_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name B_buff_55_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_55_reload \
    op interface \
    ports { B_buff_55_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name B_buff_63_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_buff_63_reload \
    op interface \
    ports { B_buff_63_reload { I 32 vector } } \
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


