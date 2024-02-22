set SynModuleInfo {
  {SRCNAME mm_Pipeline_1 MODELNAME mm_Pipeline_1 RTLNAME mm_mm_Pipeline_1
    SUBMODULES {
      {MODELNAME mm_flow_control_loop_pipe_sequential_init RTLNAME mm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mm_Pipeline_2 MODELNAME mm_Pipeline_2 RTLNAME mm_mm_Pipeline_2}
  {SRCNAME mm_Pipeline_row MODELNAME mm_Pipeline_row RTLNAME mm_mm_Pipeline_row
    SUBMODULES {
      {MODELNAME mm_mul_32s_32s_32_1_1 RTLNAME mm_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mm_Pipeline_4 MODELNAME mm_Pipeline_4 RTLNAME mm_mm_Pipeline_4
    SUBMODULES {
      {MODELNAME mm_mux_83_32_1_1 RTLNAME mm_mux_83_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mm MODELNAME mm RTLNAME mm IS_TOP 1
    SUBMODULES {
      {MODELNAME mm_A_buff_RAM_AUTO_1R1W RTLNAME mm_A_buff_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mm_A_port_m_axi RTLNAME mm_A_port_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mm_B_port_m_axi RTLNAME mm_B_port_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mm_AB_port_m_axi RTLNAME mm_AB_port_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mm_CONTROL_BUS_s_axi RTLNAME mm_CONTROL_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
