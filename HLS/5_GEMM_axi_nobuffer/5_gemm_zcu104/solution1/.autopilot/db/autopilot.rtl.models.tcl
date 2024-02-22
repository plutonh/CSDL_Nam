set SynModuleInfo {
  {SRCNAME mm MODELNAME mm RTLNAME mm IS_TOP 1
    SUBMODULES {
      {MODELNAME mm_mul_32s_32s_32_1_1 RTLNAME mm_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mm_A_port_m_axi RTLNAME mm_A_port_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mm_B_port_m_axi RTLNAME mm_B_port_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mm_AB_port_m_axi RTLNAME mm_AB_port_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mm_CONTROL_BUS_s_axi RTLNAME mm_CONTROL_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
