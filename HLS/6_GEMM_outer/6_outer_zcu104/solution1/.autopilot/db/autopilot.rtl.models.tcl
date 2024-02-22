set SynModuleInfo {
  {SRCNAME gemm_Pipeline_1 MODELNAME gemm_Pipeline_1 RTLNAME gemm_gemm_Pipeline_1
    SUBMODULES {
      {MODELNAME gemm_flow_control_loop_pipe_sequential_init RTLNAME gemm_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gemm_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME gemm_Pipeline_2 MODELNAME gemm_Pipeline_2 RTLNAME gemm_gemm_Pipeline_2}
  {SRCNAME gemm_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_46_2 MODELNAME gemm_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_46_2 RTLNAME gemm_gemm_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_46_2}
  {SRCNAME gemm_Pipeline_VITIS_LOOP_51_3 MODELNAME gemm_Pipeline_VITIS_LOOP_51_3 RTLNAME gemm_gemm_Pipeline_VITIS_LOOP_51_3
    SUBMODULES {
      {MODELNAME gemm_fadd_32ns_32ns_32_4_no_dsp_1 RTLNAME gemm_fadd_32ns_32ns_32_4_no_dsp_1 BINDTYPE op TYPE fadd IMPL fabric LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gemm_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME gemm_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gemm_fmul_32ns_32ns_32_3_max_dsp_1 RTLNAME gemm_fmul_32ns_32ns_32_3_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gemm_mux_83_32_1_1 RTLNAME gemm_mux_83_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME gemm_Pipeline_5 MODELNAME gemm_Pipeline_5 RTLNAME gemm_gemm_Pipeline_5}
  {SRCNAME gemm MODELNAME gemm RTLNAME gemm IS_TOP 1
    SUBMODULES {
      {MODELNAME gemm_a_buff_RAM_AUTO_1R1W RTLNAME gemm_a_buff_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gemm_b_buff_RAM_AUTO_1R1W RTLNAME gemm_b_buff_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME gemm_a_port_m_axi RTLNAME gemm_a_port_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gemm_b_port_m_axi RTLNAME gemm_b_port_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gemm_c_port_m_axi RTLNAME gemm_c_port_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gemm_CONTROL_BUS_s_axi RTLNAME gemm_CONTROL_BUS_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
