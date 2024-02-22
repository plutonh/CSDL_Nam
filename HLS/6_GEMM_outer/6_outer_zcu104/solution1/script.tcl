############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project 6_outer_zcu104
set_top gemm
add_files gemm.h
add_files gemm_outer.cc
add_files -tb gemm_test.cc
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
#source "./6_outer_zcu104/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
