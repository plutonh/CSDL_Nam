# This script segment is generated automatically by AutoPilot

set name gemm_fadd_32ns_32ns_32_4_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fabric} LATENCY 3 ALLOW_PRAGMA 1
}


set name gemm_fadd_32ns_32ns_32_4_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name gemm_fmul_32ns_32ns_32_3_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 2 ALLOW_PRAGMA 1
}


set id 129
set name gemm_mux_83_32_1_1
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
    id 213 \
    name b_buff \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buff \
    op interface \
    ports { b_buff_address0 { O 3 vector } b_buff_ce0 { O 1 bit } b_buff_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 214 \
    name b_buff_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buff_1 \
    op interface \
    ports { b_buff_1_address0 { O 3 vector } b_buff_1_ce0 { O 1 bit } b_buff_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 215 \
    name b_buff_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buff_2 \
    op interface \
    ports { b_buff_2_address0 { O 3 vector } b_buff_2_ce0 { O 1 bit } b_buff_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 216 \
    name b_buff_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buff_3 \
    op interface \
    ports { b_buff_3_address0 { O 3 vector } b_buff_3_ce0 { O 1 bit } b_buff_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 217 \
    name b_buff_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buff_4 \
    op interface \
    ports { b_buff_4_address0 { O 3 vector } b_buff_4_ce0 { O 1 bit } b_buff_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 218 \
    name b_buff_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buff_5 \
    op interface \
    ports { b_buff_5_address0 { O 3 vector } b_buff_5_ce0 { O 1 bit } b_buff_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 219 \
    name b_buff_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buff_6 \
    op interface \
    ports { b_buff_6_address0 { O 3 vector } b_buff_6_ce0 { O 1 bit } b_buff_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 220 \
    name b_buff_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename b_buff_7 \
    op interface \
    ports { b_buff_7_address0 { O 3 vector } b_buff_7_ce0 { O 1 bit } b_buff_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'b_buff_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name c_buff_63_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_63_reload \
    op interface \
    ports { c_buff_63_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name c_buff_62_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_62_reload \
    op interface \
    ports { c_buff_62_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name c_buff_61_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_61_reload \
    op interface \
    ports { c_buff_61_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name c_buff_60_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_60_reload \
    op interface \
    ports { c_buff_60_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name c_buff_59_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_59_reload \
    op interface \
    ports { c_buff_59_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name c_buff_58_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_58_reload \
    op interface \
    ports { c_buff_58_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name c_buff_57_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_57_reload \
    op interface \
    ports { c_buff_57_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name c_buff_56_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_56_reload \
    op interface \
    ports { c_buff_56_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name c_buff_55_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_55_reload \
    op interface \
    ports { c_buff_55_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name c_buff_54_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_54_reload \
    op interface \
    ports { c_buff_54_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name c_buff_53_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_53_reload \
    op interface \
    ports { c_buff_53_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name c_buff_52_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_52_reload \
    op interface \
    ports { c_buff_52_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name c_buff_51_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_51_reload \
    op interface \
    ports { c_buff_51_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name c_buff_50_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_50_reload \
    op interface \
    ports { c_buff_50_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name c_buff_49_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_49_reload \
    op interface \
    ports { c_buff_49_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name c_buff_48_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_48_reload \
    op interface \
    ports { c_buff_48_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name c_buff_47_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_47_reload \
    op interface \
    ports { c_buff_47_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name c_buff_46_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_46_reload \
    op interface \
    ports { c_buff_46_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name c_buff_45_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_45_reload \
    op interface \
    ports { c_buff_45_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name c_buff_44_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_44_reload \
    op interface \
    ports { c_buff_44_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name c_buff_43_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_43_reload \
    op interface \
    ports { c_buff_43_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name c_buff_42_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_42_reload \
    op interface \
    ports { c_buff_42_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name c_buff_41_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_41_reload \
    op interface \
    ports { c_buff_41_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name c_buff_40_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_40_reload \
    op interface \
    ports { c_buff_40_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name c_buff_39_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_39_reload \
    op interface \
    ports { c_buff_39_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name c_buff_38_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_38_reload \
    op interface \
    ports { c_buff_38_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name c_buff_37_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_37_reload \
    op interface \
    ports { c_buff_37_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name c_buff_36_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_36_reload \
    op interface \
    ports { c_buff_36_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name c_buff_35_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_35_reload \
    op interface \
    ports { c_buff_35_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name c_buff_34_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_34_reload \
    op interface \
    ports { c_buff_34_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name c_buff_33_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_33_reload \
    op interface \
    ports { c_buff_33_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name c_buff_32_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_32_reload \
    op interface \
    ports { c_buff_32_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name c_buff_31_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_31_reload \
    op interface \
    ports { c_buff_31_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name c_buff_30_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_30_reload \
    op interface \
    ports { c_buff_30_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name c_buff_29_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_29_reload \
    op interface \
    ports { c_buff_29_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name c_buff_28_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_28_reload \
    op interface \
    ports { c_buff_28_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name c_buff_27_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_27_reload \
    op interface \
    ports { c_buff_27_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name c_buff_26_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_26_reload \
    op interface \
    ports { c_buff_26_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name c_buff_25_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_25_reload \
    op interface \
    ports { c_buff_25_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name c_buff_24_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_24_reload \
    op interface \
    ports { c_buff_24_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name c_buff_23_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_23_reload \
    op interface \
    ports { c_buff_23_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name c_buff_22_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_22_reload \
    op interface \
    ports { c_buff_22_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name c_buff_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_21_reload \
    op interface \
    ports { c_buff_21_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name c_buff_20_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_20_reload \
    op interface \
    ports { c_buff_20_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name c_buff_19_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_19_reload \
    op interface \
    ports { c_buff_19_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name c_buff_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_18_reload \
    op interface \
    ports { c_buff_18_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name c_buff_17_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_17_reload \
    op interface \
    ports { c_buff_17_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name c_buff_16_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_16_reload \
    op interface \
    ports { c_buff_16_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name c_buff_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_15_reload \
    op interface \
    ports { c_buff_15_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name c_buff_14_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_14_reload \
    op interface \
    ports { c_buff_14_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name c_buff_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_13_reload \
    op interface \
    ports { c_buff_13_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name c_buff_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_12_reload \
    op interface \
    ports { c_buff_12_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name c_buff_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_11_reload \
    op interface \
    ports { c_buff_11_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name c_buff_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_10_reload \
    op interface \
    ports { c_buff_10_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name c_buff_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_9_reload \
    op interface \
    ports { c_buff_9_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name c_buff_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_8_reload \
    op interface \
    ports { c_buff_8_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name c_buff_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_7_reload \
    op interface \
    ports { c_buff_7_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name c_buff_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_6_reload \
    op interface \
    ports { c_buff_6_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name c_buff_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_5_reload \
    op interface \
    ports { c_buff_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name c_buff_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_4_reload \
    op interface \
    ports { c_buff_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name c_buff_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_3_reload \
    op interface \
    ports { c_buff_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name c_buff_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_2_reload \
    op interface \
    ports { c_buff_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name c_buff_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_1_reload \
    op interface \
    ports { c_buff_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name c_buff_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_buff_reload \
    op interface \
    ports { c_buff_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name a_buff_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_load \
    op interface \
    ports { a_buff_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name a_buff_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_1_load \
    op interface \
    ports { a_buff_1_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name a_buff_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_2_load \
    op interface \
    ports { a_buff_2_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name a_buff_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_3_load \
    op interface \
    ports { a_buff_3_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name a_buff_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_4_load \
    op interface \
    ports { a_buff_4_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name a_buff_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_5_load \
    op interface \
    ports { a_buff_5_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name a_buff_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_6_load \
    op interface \
    ports { a_buff_6_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name a_buff_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_7_load \
    op interface \
    ports { a_buff_7_load { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name a_buff_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_load_1 \
    op interface \
    ports { a_buff_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name a_buff_1_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_1_load_1 \
    op interface \
    ports { a_buff_1_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name a_buff_2_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_2_load_1 \
    op interface \
    ports { a_buff_2_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name a_buff_3_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_3_load_1 \
    op interface \
    ports { a_buff_3_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name a_buff_4_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_4_load_1 \
    op interface \
    ports { a_buff_4_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name a_buff_5_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_5_load_1 \
    op interface \
    ports { a_buff_5_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name a_buff_6_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_6_load_1 \
    op interface \
    ports { a_buff_6_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name a_buff_7_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_7_load_1 \
    op interface \
    ports { a_buff_7_load_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name a_buff_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_load_2 \
    op interface \
    ports { a_buff_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name a_buff_1_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_1_load_2 \
    op interface \
    ports { a_buff_1_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name a_buff_2_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_2_load_2 \
    op interface \
    ports { a_buff_2_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name a_buff_3_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_3_load_2 \
    op interface \
    ports { a_buff_3_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name a_buff_4_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_4_load_2 \
    op interface \
    ports { a_buff_4_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name a_buff_5_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_5_load_2 \
    op interface \
    ports { a_buff_5_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name a_buff_6_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_6_load_2 \
    op interface \
    ports { a_buff_6_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name a_buff_7_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_7_load_2 \
    op interface \
    ports { a_buff_7_load_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name a_buff_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_load_3 \
    op interface \
    ports { a_buff_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name a_buff_1_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_1_load_3 \
    op interface \
    ports { a_buff_1_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name a_buff_2_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_2_load_3 \
    op interface \
    ports { a_buff_2_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name a_buff_3_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_3_load_3 \
    op interface \
    ports { a_buff_3_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name a_buff_4_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_4_load_3 \
    op interface \
    ports { a_buff_4_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name a_buff_5_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_5_load_3 \
    op interface \
    ports { a_buff_5_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name a_buff_6_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_6_load_3 \
    op interface \
    ports { a_buff_6_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name a_buff_7_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_7_load_3 \
    op interface \
    ports { a_buff_7_load_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name a_buff_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_load_4 \
    op interface \
    ports { a_buff_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name a_buff_1_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_1_load_4 \
    op interface \
    ports { a_buff_1_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name a_buff_2_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_2_load_4 \
    op interface \
    ports { a_buff_2_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name a_buff_3_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_3_load_4 \
    op interface \
    ports { a_buff_3_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name a_buff_4_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_4_load_4 \
    op interface \
    ports { a_buff_4_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name a_buff_5_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_5_load_4 \
    op interface \
    ports { a_buff_5_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name a_buff_6_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_6_load_4 \
    op interface \
    ports { a_buff_6_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name a_buff_7_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_7_load_4 \
    op interface \
    ports { a_buff_7_load_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name a_buff_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_load_5 \
    op interface \
    ports { a_buff_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name a_buff_1_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_1_load_5 \
    op interface \
    ports { a_buff_1_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name a_buff_2_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_2_load_5 \
    op interface \
    ports { a_buff_2_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name a_buff_3_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_3_load_5 \
    op interface \
    ports { a_buff_3_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name a_buff_4_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_4_load_5 \
    op interface \
    ports { a_buff_4_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name a_buff_5_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_5_load_5 \
    op interface \
    ports { a_buff_5_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name a_buff_6_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_6_load_5 \
    op interface \
    ports { a_buff_6_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name a_buff_7_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_7_load_5 \
    op interface \
    ports { a_buff_7_load_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name a_buff_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_load_6 \
    op interface \
    ports { a_buff_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name a_buff_1_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_1_load_6 \
    op interface \
    ports { a_buff_1_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name a_buff_2_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_2_load_6 \
    op interface \
    ports { a_buff_2_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name a_buff_3_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_3_load_6 \
    op interface \
    ports { a_buff_3_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name a_buff_4_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_4_load_6 \
    op interface \
    ports { a_buff_4_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name a_buff_5_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_5_load_6 \
    op interface \
    ports { a_buff_5_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name a_buff_6_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_6_load_6 \
    op interface \
    ports { a_buff_6_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name a_buff_7_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_7_load_6 \
    op interface \
    ports { a_buff_7_load_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name a_buff_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_load_7 \
    op interface \
    ports { a_buff_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name a_buff_1_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_1_load_7 \
    op interface \
    ports { a_buff_1_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name a_buff_2_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_2_load_7 \
    op interface \
    ports { a_buff_2_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name a_buff_3_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_3_load_7 \
    op interface \
    ports { a_buff_3_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name a_buff_4_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_4_load_7 \
    op interface \
    ports { a_buff_4_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name a_buff_5_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_5_load_7 \
    op interface \
    ports { a_buff_5_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name a_buff_6_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_6_load_7 \
    op interface \
    ports { a_buff_6_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name a_buff_7_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buff_7_load_7 \
    op interface \
    ports { a_buff_7_load_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name add_7_7116_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_7116_out \
    op interface \
    ports { add_7_7116_out { O 32 vector } add_7_7116_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name add_7_6115_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_6115_out \
    op interface \
    ports { add_7_6115_out { O 32 vector } add_7_6115_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name add_7_5114_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_5114_out \
    op interface \
    ports { add_7_5114_out { O 32 vector } add_7_5114_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name add_7_4113_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_4113_out \
    op interface \
    ports { add_7_4113_out { O 32 vector } add_7_4113_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name add_7_3112_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_3112_out \
    op interface \
    ports { add_7_3112_out { O 32 vector } add_7_3112_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name add_7_2111_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_2111_out \
    op interface \
    ports { add_7_2111_out { O 32 vector } add_7_2111_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name add_7_1110_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_1110_out \
    op interface \
    ports { add_7_1110_out { O 32 vector } add_7_1110_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name add_7109_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7109_out \
    op interface \
    ports { add_7109_out { O 32 vector } add_7109_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name add_6_7108_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_7108_out \
    op interface \
    ports { add_6_7108_out { O 32 vector } add_6_7108_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name add_6_6107_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_6107_out \
    op interface \
    ports { add_6_6107_out { O 32 vector } add_6_6107_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name add_6_5106_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_5106_out \
    op interface \
    ports { add_6_5106_out { O 32 vector } add_6_5106_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name add_6_4105_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_4105_out \
    op interface \
    ports { add_6_4105_out { O 32 vector } add_6_4105_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name add_6_3104_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_3104_out \
    op interface \
    ports { add_6_3104_out { O 32 vector } add_6_3104_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name add_6_2103_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_2103_out \
    op interface \
    ports { add_6_2103_out { O 32 vector } add_6_2103_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name add_6_1102_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_1102_out \
    op interface \
    ports { add_6_1102_out { O 32 vector } add_6_1102_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name add_6101_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6101_out \
    op interface \
    ports { add_6101_out { O 32 vector } add_6101_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name add_5_7100_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_7100_out \
    op interface \
    ports { add_5_7100_out { O 32 vector } add_5_7100_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name add_5_699_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_699_out \
    op interface \
    ports { add_5_699_out { O 32 vector } add_5_699_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name add_5_598_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_598_out \
    op interface \
    ports { add_5_598_out { O 32 vector } add_5_598_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name add_5_497_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_497_out \
    op interface \
    ports { add_5_497_out { O 32 vector } add_5_497_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name add_5_396_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_396_out \
    op interface \
    ports { add_5_396_out { O 32 vector } add_5_396_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name add_5_295_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_295_out \
    op interface \
    ports { add_5_295_out { O 32 vector } add_5_295_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name add_5_194_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_194_out \
    op interface \
    ports { add_5_194_out { O 32 vector } add_5_194_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name add_593_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_593_out \
    op interface \
    ports { add_593_out { O 32 vector } add_593_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name add_4_792_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_792_out \
    op interface \
    ports { add_4_792_out { O 32 vector } add_4_792_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name add_4_691_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_691_out \
    op interface \
    ports { add_4_691_out { O 32 vector } add_4_691_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name add_4_590_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_590_out \
    op interface \
    ports { add_4_590_out { O 32 vector } add_4_590_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name add_4_489_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_489_out \
    op interface \
    ports { add_4_489_out { O 32 vector } add_4_489_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name add_4_388_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_388_out \
    op interface \
    ports { add_4_388_out { O 32 vector } add_4_388_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name add_4_287_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_287_out \
    op interface \
    ports { add_4_287_out { O 32 vector } add_4_287_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name add_4_186_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_186_out \
    op interface \
    ports { add_4_186_out { O 32 vector } add_4_186_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name add_485_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_485_out \
    op interface \
    ports { add_485_out { O 32 vector } add_485_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name add_3_784_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_784_out \
    op interface \
    ports { add_3_784_out { O 32 vector } add_3_784_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name add_3_683_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_683_out \
    op interface \
    ports { add_3_683_out { O 32 vector } add_3_683_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name add_3_582_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_582_out \
    op interface \
    ports { add_3_582_out { O 32 vector } add_3_582_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name add_3_481_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_481_out \
    op interface \
    ports { add_3_481_out { O 32 vector } add_3_481_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name add_3_380_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_380_out \
    op interface \
    ports { add_3_380_out { O 32 vector } add_3_380_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name add_3_279_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_279_out \
    op interface \
    ports { add_3_279_out { O 32 vector } add_3_279_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name add_3_178_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_178_out \
    op interface \
    ports { add_3_178_out { O 32 vector } add_3_178_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name add_377_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_377_out \
    op interface \
    ports { add_377_out { O 32 vector } add_377_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name add_2_776_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_776_out \
    op interface \
    ports { add_2_776_out { O 32 vector } add_2_776_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name add_2_675_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_675_out \
    op interface \
    ports { add_2_675_out { O 32 vector } add_2_675_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name add_2_574_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_574_out \
    op interface \
    ports { add_2_574_out { O 32 vector } add_2_574_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name add_2_473_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_473_out \
    op interface \
    ports { add_2_473_out { O 32 vector } add_2_473_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name add_2_372_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_372_out \
    op interface \
    ports { add_2_372_out { O 32 vector } add_2_372_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name add_2_271_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_271_out \
    op interface \
    ports { add_2_271_out { O 32 vector } add_2_271_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name add_2_170_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_170_out \
    op interface \
    ports { add_2_170_out { O 32 vector } add_2_170_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name add_269_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_269_out \
    op interface \
    ports { add_269_out { O 32 vector } add_269_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name add_1_768_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_768_out \
    op interface \
    ports { add_1_768_out { O 32 vector } add_1_768_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name add_1_667_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_667_out \
    op interface \
    ports { add_1_667_out { O 32 vector } add_1_667_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name add_1_566_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_566_out \
    op interface \
    ports { add_1_566_out { O 32 vector } add_1_566_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name add_1_465_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_465_out \
    op interface \
    ports { add_1_465_out { O 32 vector } add_1_465_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name add_1_364_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_364_out \
    op interface \
    ports { add_1_364_out { O 32 vector } add_1_364_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name add_1_263_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_263_out \
    op interface \
    ports { add_1_263_out { O 32 vector } add_1_263_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name add_1_162_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_162_out \
    op interface \
    ports { add_1_162_out { O 32 vector } add_1_162_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name add_161_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_161_out \
    op interface \
    ports { add_161_out { O 32 vector } add_161_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name add_75260_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_75260_out \
    op interface \
    ports { add_75260_out { O 32 vector } add_75260_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name add_64759_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_64759_out \
    op interface \
    ports { add_64759_out { O 32 vector } add_64759_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name add_54258_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_54258_out \
    op interface \
    ports { add_54258_out { O 32 vector } add_54258_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name add_43757_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_43757_out \
    op interface \
    ports { add_43757_out { O 32 vector } add_43757_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name add_33256_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_33256_out \
    op interface \
    ports { add_33256_out { O 32 vector } add_33256_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name add_22755_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_22755_out \
    op interface \
    ports { add_22755_out { O 32 vector } add_22755_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name add_12254_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_add_12254_out \
    op interface \
    ports { add_12254_out { O 32 vector } add_12254_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name p_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out { O 32 vector } p_out_ap_vld { O 1 bit } } \
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


