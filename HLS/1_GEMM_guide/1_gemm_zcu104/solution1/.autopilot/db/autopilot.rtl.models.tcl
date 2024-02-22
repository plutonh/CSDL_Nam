set SynModuleInfo {
  {SRCNAME mm MODELNAME mm RTLNAME mm IS_TOP 1
    SUBMODULES {
      {MODELNAME mm_mul_32s_32s_32_1_1 RTLNAME mm_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mm_flow_control_loop_pipe RTLNAME mm_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mm_flow_control_loop_pipe_U}
    }
  }
}
