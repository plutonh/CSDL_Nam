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
    id 350 \
    name c_port \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_port \
    op interface \
    ports { m_axi_c_port_AWVALID { O 1 bit } m_axi_c_port_AWREADY { I 1 bit } m_axi_c_port_AWADDR { O 64 vector } m_axi_c_port_AWID { O 1 vector } m_axi_c_port_AWLEN { O 32 vector } m_axi_c_port_AWSIZE { O 3 vector } m_axi_c_port_AWBURST { O 2 vector } m_axi_c_port_AWLOCK { O 2 vector } m_axi_c_port_AWCACHE { O 4 vector } m_axi_c_port_AWPROT { O 3 vector } m_axi_c_port_AWQOS { O 4 vector } m_axi_c_port_AWREGION { O 4 vector } m_axi_c_port_AWUSER { O 1 vector } m_axi_c_port_WVALID { O 1 bit } m_axi_c_port_WREADY { I 1 bit } m_axi_c_port_WDATA { O 32 vector } m_axi_c_port_WSTRB { O 4 vector } m_axi_c_port_WLAST { O 1 bit } m_axi_c_port_WID { O 1 vector } m_axi_c_port_WUSER { O 1 vector } m_axi_c_port_ARVALID { O 1 bit } m_axi_c_port_ARREADY { I 1 bit } m_axi_c_port_ARADDR { O 64 vector } m_axi_c_port_ARID { O 1 vector } m_axi_c_port_ARLEN { O 32 vector } m_axi_c_port_ARSIZE { O 3 vector } m_axi_c_port_ARBURST { O 2 vector } m_axi_c_port_ARLOCK { O 2 vector } m_axi_c_port_ARCACHE { O 4 vector } m_axi_c_port_ARPROT { O 3 vector } m_axi_c_port_ARQOS { O 4 vector } m_axi_c_port_ARREGION { O 4 vector } m_axi_c_port_ARUSER { O 1 vector } m_axi_c_port_RVALID { I 1 bit } m_axi_c_port_RREADY { O 1 bit } m_axi_c_port_RDATA { I 32 vector } m_axi_c_port_RLAST { I 1 bit } m_axi_c_port_RID { I 1 vector } m_axi_c_port_RFIFONUM { I 9 vector } m_axi_c_port_RUSER { I 1 vector } m_axi_c_port_RRESP { I 2 vector } m_axi_c_port_BVALID { I 1 bit } m_axi_c_port_BREADY { O 1 bit } m_axi_c_port_BRESP { I 2 vector } m_axi_c_port_BID { I 1 vector } m_axi_c_port_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name sext_ln62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln62 \
    op interface \
    ports { sext_ln62 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name p_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload \
    op interface \
    ports { p_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name add_12254_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_12254_reload \
    op interface \
    ports { add_12254_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name add_22755_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_22755_reload \
    op interface \
    ports { add_22755_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name add_33256_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_33256_reload \
    op interface \
    ports { add_33256_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name add_43757_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_43757_reload \
    op interface \
    ports { add_43757_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name add_54258_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_54258_reload \
    op interface \
    ports { add_54258_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name add_64759_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_64759_reload \
    op interface \
    ports { add_64759_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name add_75260_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_75260_reload \
    op interface \
    ports { add_75260_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name add_161_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_161_reload \
    op interface \
    ports { add_161_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name add_1_162_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_162_reload \
    op interface \
    ports { add_1_162_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name add_1_263_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_263_reload \
    op interface \
    ports { add_1_263_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name add_1_364_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_364_reload \
    op interface \
    ports { add_1_364_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name add_1_465_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_465_reload \
    op interface \
    ports { add_1_465_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name add_1_566_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_566_reload \
    op interface \
    ports { add_1_566_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name add_1_667_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_667_reload \
    op interface \
    ports { add_1_667_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name add_1_768_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_1_768_reload \
    op interface \
    ports { add_1_768_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name add_269_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_269_reload \
    op interface \
    ports { add_269_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name add_2_170_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_170_reload \
    op interface \
    ports { add_2_170_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name add_2_271_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_271_reload \
    op interface \
    ports { add_2_271_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name add_2_372_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_372_reload \
    op interface \
    ports { add_2_372_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name add_2_473_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_473_reload \
    op interface \
    ports { add_2_473_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name add_2_574_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_574_reload \
    op interface \
    ports { add_2_574_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name add_2_675_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_675_reload \
    op interface \
    ports { add_2_675_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name add_2_776_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_2_776_reload \
    op interface \
    ports { add_2_776_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name add_377_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_377_reload \
    op interface \
    ports { add_377_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name add_3_178_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_178_reload \
    op interface \
    ports { add_3_178_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name add_3_279_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_279_reload \
    op interface \
    ports { add_3_279_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name add_3_380_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_380_reload \
    op interface \
    ports { add_3_380_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name add_3_481_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_481_reload \
    op interface \
    ports { add_3_481_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name add_3_582_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_582_reload \
    op interface \
    ports { add_3_582_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name add_3_683_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_683_reload \
    op interface \
    ports { add_3_683_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name add_3_784_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_3_784_reload \
    op interface \
    ports { add_3_784_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name add_485_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_485_reload \
    op interface \
    ports { add_485_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name add_4_186_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_186_reload \
    op interface \
    ports { add_4_186_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name add_4_287_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_287_reload \
    op interface \
    ports { add_4_287_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name add_4_388_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_388_reload \
    op interface \
    ports { add_4_388_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name add_4_489_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_489_reload \
    op interface \
    ports { add_4_489_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name add_4_590_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_590_reload \
    op interface \
    ports { add_4_590_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name add_4_691_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_691_reload \
    op interface \
    ports { add_4_691_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name add_4_792_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_4_792_reload \
    op interface \
    ports { add_4_792_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name add_593_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_593_reload \
    op interface \
    ports { add_593_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name add_5_194_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_194_reload \
    op interface \
    ports { add_5_194_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name add_5_295_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_295_reload \
    op interface \
    ports { add_5_295_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name add_5_396_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_396_reload \
    op interface \
    ports { add_5_396_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name add_5_497_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_497_reload \
    op interface \
    ports { add_5_497_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name add_5_598_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_598_reload \
    op interface \
    ports { add_5_598_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name add_5_699_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_699_reload \
    op interface \
    ports { add_5_699_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name add_5_7100_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_5_7100_reload \
    op interface \
    ports { add_5_7100_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name add_6101_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6101_reload \
    op interface \
    ports { add_6101_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name add_6_1102_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_1102_reload \
    op interface \
    ports { add_6_1102_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name add_6_2103_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_2103_reload \
    op interface \
    ports { add_6_2103_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name add_6_3104_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_3104_reload \
    op interface \
    ports { add_6_3104_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name add_6_4105_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_4105_reload \
    op interface \
    ports { add_6_4105_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name add_6_5106_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_5106_reload \
    op interface \
    ports { add_6_5106_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name add_6_6107_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_6107_reload \
    op interface \
    ports { add_6_6107_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name add_6_7108_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_6_7108_reload \
    op interface \
    ports { add_6_7108_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name add_7109_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7109_reload \
    op interface \
    ports { add_7109_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name add_7_1110_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_1110_reload \
    op interface \
    ports { add_7_1110_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name add_7_2111_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_2111_reload \
    op interface \
    ports { add_7_2111_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name add_7_3112_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_3112_reload \
    op interface \
    ports { add_7_3112_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name add_7_4113_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_4113_reload \
    op interface \
    ports { add_7_4113_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name add_7_5114_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_5114_reload \
    op interface \
    ports { add_7_5114_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name add_7_6115_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_6115_reload \
    op interface \
    ports { add_7_6115_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name add_7_7116_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_7_7116_reload \
    op interface \
    ports { add_7_7116_reload { I 32 vector } } \
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


