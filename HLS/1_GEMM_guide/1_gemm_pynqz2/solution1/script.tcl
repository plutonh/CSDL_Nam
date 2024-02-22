############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project 1_gemm
set_top mm
add_files gemm.cc
add_files gemm.h
add_files -tb gemm_tb.cc
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
#source "./1_gemm/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
