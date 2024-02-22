; ModuleID = 'C:/Users/CSDL_GUEST.DESKTOP-HHKUDFN/Desktop/06_LIG/23-02/HLS/2_GEMM/2_gemm_zcu104/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_mm_ir([8 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %A, [8 x i32]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8" %B, [8 x i32]* noalias nocapture nonnull "fpga.decayed.dim.hint"="8" %AB) local_unnamed_addr #1 {
entry:
  %A_copy_0 = alloca [8 x i32], align 512
  %A_copy_1 = alloca [8 x i32], align 512
  %A_copy_2 = alloca [8 x i32], align 512
  %A_copy_3 = alloca [8 x i32], align 512
  %A_copy_4 = alloca [8 x i32], align 512
  %A_copy_5 = alloca [8 x i32], align 512
  %A_copy_6 = alloca [8 x i32], align 512
  %A_copy_7 = alloca [8 x i32], align 512
  %B_copy_0_0 = alloca i32, align 512
  %B_copy_0_1 = alloca i32, align 512
  %B_copy_0_2 = alloca i32, align 512
  %B_copy_0_3 = alloca i32, align 512
  %B_copy_0_4 = alloca i32, align 512
  %B_copy_0_5 = alloca i32, align 512
  %B_copy_0_6 = alloca i32, align 512
  %B_copy_0_7 = alloca i32, align 512
  %B_copy_1_0 = alloca i32, align 512
  %B_copy_1_1 = alloca i32, align 512
  %B_copy_1_2 = alloca i32, align 512
  %B_copy_1_3 = alloca i32, align 512
  %B_copy_1_4 = alloca i32, align 512
  %B_copy_1_5 = alloca i32, align 512
  %B_copy_1_6 = alloca i32, align 512
  %B_copy_1_7 = alloca i32, align 512
  %B_copy_2_0 = alloca i32, align 512
  %B_copy_2_1 = alloca i32, align 512
  %B_copy_2_2 = alloca i32, align 512
  %B_copy_2_3 = alloca i32, align 512
  %B_copy_2_4 = alloca i32, align 512
  %B_copy_2_5 = alloca i32, align 512
  %B_copy_2_6 = alloca i32, align 512
  %B_copy_2_7 = alloca i32, align 512
  %B_copy_3_0 = alloca i32, align 512
  %B_copy_3_1 = alloca i32, align 512
  %B_copy_3_2 = alloca i32, align 512
  %B_copy_3_3 = alloca i32, align 512
  %B_copy_3_4 = alloca i32, align 512
  %B_copy_3_5 = alloca i32, align 512
  %B_copy_3_6 = alloca i32, align 512
  %B_copy_3_7 = alloca i32, align 512
  %B_copy_4_0 = alloca i32, align 512
  %B_copy_4_1 = alloca i32, align 512
  %B_copy_4_2 = alloca i32, align 512
  %B_copy_4_3 = alloca i32, align 512
  %B_copy_4_4 = alloca i32, align 512
  %B_copy_4_5 = alloca i32, align 512
  %B_copy_4_6 = alloca i32, align 512
  %B_copy_4_7 = alloca i32, align 512
  %B_copy_5_0 = alloca i32, align 512
  %B_copy_5_1 = alloca i32, align 512
  %B_copy_5_2 = alloca i32, align 512
  %B_copy_5_3 = alloca i32, align 512
  %B_copy_5_4 = alloca i32, align 512
  %B_copy_5_5 = alloca i32, align 512
  %B_copy_5_6 = alloca i32, align 512
  %B_copy_5_7 = alloca i32, align 512
  %B_copy_6_0 = alloca i32, align 512
  %B_copy_6_1 = alloca i32, align 512
  %B_copy_6_2 = alloca i32, align 512
  %B_copy_6_3 = alloca i32, align 512
  %B_copy_6_4 = alloca i32, align 512
  %B_copy_6_5 = alloca i32, align 512
  %B_copy_6_6 = alloca i32, align 512
  %B_copy_6_7 = alloca i32, align 512
  %B_copy_7_0 = alloca i32, align 512
  %B_copy_7_1 = alloca i32, align 512
  %B_copy_7_2 = alloca i32, align 512
  %B_copy_7_3 = alloca i32, align 512
  %B_copy_7_4 = alloca i32, align 512
  %B_copy_7_5 = alloca i32, align 512
  %B_copy_7_6 = alloca i32, align 512
  %B_copy_7_7 = alloca i32, align 512
  %AB_copy_0 = alloca [8 x i32], align 512
  %AB_copy_1 = alloca [8 x i32], align 512
  %AB_copy_2 = alloca [8 x i32], align 512
  %AB_copy_3 = alloca [8 x i32], align 512
  %AB_copy_4 = alloca [8 x i32], align 512
  %AB_copy_5 = alloca [8 x i32], align 512
  %AB_copy_6 = alloca [8 x i32], align 512
  %AB_copy_7 = alloca [8 x i32], align 512
  %0 = bitcast [8 x i32]* %A to [8 x [8 x i32]]*
  %1 = bitcast [8 x i32]* %B to [8 x [8 x i32]]*
  %2 = bitcast [8 x i32]* %AB to [8 x [8 x i32]]*
  call void @copy_in([8 x [8 x i32]]* nonnull %0, [8 x i32]* nonnull align 512 %A_copy_0, [8 x i32]* nonnull align 512 %A_copy_1, [8 x i32]* nonnull align 512 %A_copy_2, [8 x i32]* nonnull align 512 %A_copy_3, [8 x i32]* nonnull align 512 %A_copy_4, [8 x i32]* nonnull align 512 %A_copy_5, [8 x i32]* nonnull align 512 %A_copy_6, [8 x i32]* nonnull align 512 %A_copy_7, [8 x [8 x i32]]* nonnull %1, i32* nonnull align 512 %B_copy_0_0, i32* nonnull align 512 %B_copy_0_1, i32* nonnull align 512 %B_copy_0_2, i32* nonnull align 512 %B_copy_0_3, i32* nonnull align 512 %B_copy_0_4, i32* nonnull align 512 %B_copy_0_5, i32* nonnull align 512 %B_copy_0_6, i32* nonnull align 512 %B_copy_0_7, i32* nonnull align 512 %B_copy_1_0, i32* nonnull align 512 %B_copy_1_1, i32* nonnull align 512 %B_copy_1_2, i32* nonnull align 512 %B_copy_1_3, i32* nonnull align 512 %B_copy_1_4, i32* nonnull align 512 %B_copy_1_5, i32* nonnull align 512 %B_copy_1_6, i32* nonnull align 512 %B_copy_1_7, i32* nonnull align 512 %B_copy_2_0, i32* nonnull align 512 %B_copy_2_1, i32* nonnull align 512 %B_copy_2_2, i32* nonnull align 512 %B_copy_2_3, i32* nonnull align 512 %B_copy_2_4, i32* nonnull align 512 %B_copy_2_5, i32* nonnull align 512 %B_copy_2_6, i32* nonnull align 512 %B_copy_2_7, i32* nonnull align 512 %B_copy_3_0, i32* nonnull align 512 %B_copy_3_1, i32* nonnull align 512 %B_copy_3_2, i32* nonnull align 512 %B_copy_3_3, i32* nonnull align 512 %B_copy_3_4, i32* nonnull align 512 %B_copy_3_5, i32* nonnull align 512 %B_copy_3_6, i32* nonnull align 512 %B_copy_3_7, i32* nonnull align 512 %B_copy_4_0, i32* nonnull align 512 %B_copy_4_1, i32* nonnull align 512 %B_copy_4_2, i32* nonnull align 512 %B_copy_4_3, i32* nonnull align 512 %B_copy_4_4, i32* nonnull align 512 %B_copy_4_5, i32* nonnull align 512 %B_copy_4_6, i32* nonnull align 512 %B_copy_4_7, i32* nonnull align 512 %B_copy_5_0, i32* nonnull align 512 %B_copy_5_1, i32* nonnull align 512 %B_copy_5_2, i32* nonnull align 512 %B_copy_5_3, i32* nonnull align 512 %B_copy_5_4, i32* nonnull align 512 %B_copy_5_5, i32* nonnull align 512 %B_copy_5_6, i32* nonnull align 512 %B_copy_5_7, i32* nonnull align 512 %B_copy_6_0, i32* nonnull align 512 %B_copy_6_1, i32* nonnull align 512 %B_copy_6_2, i32* nonnull align 512 %B_copy_6_3, i32* nonnull align 512 %B_copy_6_4, i32* nonnull align 512 %B_copy_6_5, i32* nonnull align 512 %B_copy_6_6, i32* nonnull align 512 %B_copy_6_7, i32* nonnull align 512 %B_copy_7_0, i32* nonnull align 512 %B_copy_7_1, i32* nonnull align 512 %B_copy_7_2, i32* nonnull align 512 %B_copy_7_3, i32* nonnull align 512 %B_copy_7_4, i32* nonnull align 512 %B_copy_7_5, i32* nonnull align 512 %B_copy_7_6, i32* nonnull align 512 %B_copy_7_7, [8 x [8 x i32]]* nonnull %2, [8 x i32]* nonnull align 512 %AB_copy_0, [8 x i32]* nonnull align 512 %AB_copy_1, [8 x i32]* nonnull align 512 %AB_copy_2, [8 x i32]* nonnull align 512 %AB_copy_3, [8 x i32]* nonnull align 512 %AB_copy_4, [8 x i32]* nonnull align 512 %AB_copy_5, [8 x i32]* nonnull align 512 %AB_copy_6, [8 x i32]* nonnull align 512 %AB_copy_7)
  %A_copy.gep_0 = getelementptr [8 x i32], [8 x i32]* %A_copy_0, i64 0, i32 0
  %A_copy.gep_1 = getelementptr [8 x i32], [8 x i32]* %A_copy_1, i64 0, i32 0
  %A_copy.gep_2 = getelementptr [8 x i32], [8 x i32]* %A_copy_2, i64 0, i32 0
  %A_copy.gep_3 = getelementptr [8 x i32], [8 x i32]* %A_copy_3, i64 0, i32 0
  %A_copy.gep_4 = getelementptr [8 x i32], [8 x i32]* %A_copy_4, i64 0, i32 0
  %A_copy.gep_5 = getelementptr [8 x i32], [8 x i32]* %A_copy_5, i64 0, i32 0
  %A_copy.gep_6 = getelementptr [8 x i32], [8 x i32]* %A_copy_6, i64 0, i32 0
  %A_copy.gep_7 = getelementptr [8 x i32], [8 x i32]* %A_copy_7, i64 0, i32 0
  %AB_copy.gep_0 = getelementptr [8 x i32], [8 x i32]* %AB_copy_0, i64 0, i32 0
  %AB_copy.gep_1 = getelementptr [8 x i32], [8 x i32]* %AB_copy_1, i64 0, i32 0
  %AB_copy.gep_2 = getelementptr [8 x i32], [8 x i32]* %AB_copy_2, i64 0, i32 0
  %AB_copy.gep_3 = getelementptr [8 x i32], [8 x i32]* %AB_copy_3, i64 0, i32 0
  %AB_copy.gep_4 = getelementptr [8 x i32], [8 x i32]* %AB_copy_4, i64 0, i32 0
  %AB_copy.gep_5 = getelementptr [8 x i32], [8 x i32]* %AB_copy_5, i64 0, i32 0
  %AB_copy.gep_6 = getelementptr [8 x i32], [8 x i32]* %AB_copy_6, i64 0, i32 0
  %AB_copy.gep_7 = getelementptr [8 x i32], [8 x i32]* %AB_copy_7, i64 0, i32 0
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %A_copy.gep_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !101
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %A_copy.gep_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !101
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %A_copy.gep_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !101
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %A_copy.gep_3, i32 998, i32 1, i32 0, i1 false) ], !dbg !101
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %A_copy.gep_4, i32 998, i32 1, i32 0, i1 false) ], !dbg !101
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %A_copy.gep_5, i32 998, i32 1, i32 0, i1 false) ], !dbg !101
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %A_copy.gep_6, i32 998, i32 1, i32 0, i1 false) ], !dbg !101
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %A_copy.gep_7, i32 998, i32 1, i32 0, i1 false) ], !dbg !101
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %AB_copy.gep_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !686
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %AB_copy.gep_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !686
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %AB_copy.gep_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !686
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %AB_copy.gep_3, i32 998, i32 1, i32 0, i1 false) ], !dbg !686
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %AB_copy.gep_4, i32 998, i32 1, i32 0, i1 false) ], !dbg !686
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %AB_copy.gep_5, i32 998, i32 1, i32 0, i1 false) ], !dbg !686
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %AB_copy.gep_6, i32 998, i32 1, i32 0, i1 false) ], !dbg !686
  call void @llvm.sideeffect() #6 [ "xlx_array_partition"(i32* %AB_copy.gep_7, i32 998, i32 1, i32 0, i1 false) ], !dbg !686
  call void @apatb_mm_hw([8 x i32]* %A_copy_0, [8 x i32]* %A_copy_1, [8 x i32]* %A_copy_2, [8 x i32]* %A_copy_3, [8 x i32]* %A_copy_4, [8 x i32]* %A_copy_5, [8 x i32]* %A_copy_6, [8 x i32]* %A_copy_7, i32* %B_copy_0_0, i32* %B_copy_0_1, i32* %B_copy_0_2, i32* %B_copy_0_3, i32* %B_copy_0_4, i32* %B_copy_0_5, i32* %B_copy_0_6, i32* %B_copy_0_7, i32* %B_copy_1_0, i32* %B_copy_1_1, i32* %B_copy_1_2, i32* %B_copy_1_3, i32* %B_copy_1_4, i32* %B_copy_1_5, i32* %B_copy_1_6, i32* %B_copy_1_7, i32* %B_copy_2_0, i32* %B_copy_2_1, i32* %B_copy_2_2, i32* %B_copy_2_3, i32* %B_copy_2_4, i32* %B_copy_2_5, i32* %B_copy_2_6, i32* %B_copy_2_7, i32* %B_copy_3_0, i32* %B_copy_3_1, i32* %B_copy_3_2, i32* %B_copy_3_3, i32* %B_copy_3_4, i32* %B_copy_3_5, i32* %B_copy_3_6, i32* %B_copy_3_7, i32* %B_copy_4_0, i32* %B_copy_4_1, i32* %B_copy_4_2, i32* %B_copy_4_3, i32* %B_copy_4_4, i32* %B_copy_4_5, i32* %B_copy_4_6, i32* %B_copy_4_7, i32* %B_copy_5_0, i32* %B_copy_5_1, i32* %B_copy_5_2, i32* %B_copy_5_3, i32* %B_copy_5_4, i32* %B_copy_5_5, i32* %B_copy_5_6, i32* %B_copy_5_7, i32* %B_copy_6_0, i32* %B_copy_6_1, i32* %B_copy_6_2, i32* %B_copy_6_3, i32* %B_copy_6_4, i32* %B_copy_6_5, i32* %B_copy_6_6, i32* %B_copy_6_7, i32* %B_copy_7_0, i32* %B_copy_7_1, i32* %B_copy_7_2, i32* %B_copy_7_3, i32* %B_copy_7_4, i32* %B_copy_7_5, i32* %B_copy_7_6, i32* %B_copy_7_7, [8 x i32]* %AB_copy_0, [8 x i32]* %AB_copy_1, [8 x i32]* %AB_copy_2, [8 x i32]* %AB_copy_3, [8 x i32]* %AB_copy_4, [8 x i32]* %AB_copy_5, [8 x i32]* %AB_copy_6, [8 x i32]* %AB_copy_7)
  call void @copy_back([8 x [8 x i32]]* %0, [8 x i32]* %A_copy_0, [8 x i32]* %A_copy_1, [8 x i32]* %A_copy_2, [8 x i32]* %A_copy_3, [8 x i32]* %A_copy_4, [8 x i32]* %A_copy_5, [8 x i32]* %A_copy_6, [8 x i32]* %A_copy_7, [8 x [8 x i32]]* %1, i32* %B_copy_0_0, i32* %B_copy_0_1, i32* %B_copy_0_2, i32* %B_copy_0_3, i32* %B_copy_0_4, i32* %B_copy_0_5, i32* %B_copy_0_6, i32* %B_copy_0_7, i32* %B_copy_1_0, i32* %B_copy_1_1, i32* %B_copy_1_2, i32* %B_copy_1_3, i32* %B_copy_1_4, i32* %B_copy_1_5, i32* %B_copy_1_6, i32* %B_copy_1_7, i32* %B_copy_2_0, i32* %B_copy_2_1, i32* %B_copy_2_2, i32* %B_copy_2_3, i32* %B_copy_2_4, i32* %B_copy_2_5, i32* %B_copy_2_6, i32* %B_copy_2_7, i32* %B_copy_3_0, i32* %B_copy_3_1, i32* %B_copy_3_2, i32* %B_copy_3_3, i32* %B_copy_3_4, i32* %B_copy_3_5, i32* %B_copy_3_6, i32* %B_copy_3_7, i32* %B_copy_4_0, i32* %B_copy_4_1, i32* %B_copy_4_2, i32* %B_copy_4_3, i32* %B_copy_4_4, i32* %B_copy_4_5, i32* %B_copy_4_6, i32* %B_copy_4_7, i32* %B_copy_5_0, i32* %B_copy_5_1, i32* %B_copy_5_2, i32* %B_copy_5_3, i32* %B_copy_5_4, i32* %B_copy_5_5, i32* %B_copy_5_6, i32* %B_copy_5_7, i32* %B_copy_6_0, i32* %B_copy_6_1, i32* %B_copy_6_2, i32* %B_copy_6_3, i32* %B_copy_6_4, i32* %B_copy_6_5, i32* %B_copy_6_6, i32* %B_copy_6_7, i32* %B_copy_7_0, i32* %B_copy_7_1, i32* %B_copy_7_2, i32* %B_copy_7_3, i32* %B_copy_7_4, i32* %B_copy_7_5, i32* %B_copy_7_6, i32* %B_copy_7_7, [8 x [8 x i32]]* %2, [8 x i32]* %AB_copy_0, [8 x i32]* %AB_copy_1, [8 x i32]* %AB_copy_2, [8 x i32]* %AB_copy_3, [8 x i32]* %AB_copy_4, [8 x i32]* %AB_copy_5, [8 x i32]* %AB_copy_6, [8 x i32]* %AB_copy_7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8a8i32.3.4([8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_1, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2" %_2, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3" %_3, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4" %_4, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5" %_5, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.6" %_6, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.7" %_7, [8 x [8 x i32]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [8 x i32]* %_0, null
  %2 = icmp eq [8 x [8 x i32]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %dst.addr57_0 = getelementptr [8 x i32], [8 x i32]* %_0, i64 0, i64 %for.loop.idx10
  %dst.addr57_1 = getelementptr [8 x i32], [8 x i32]* %_1, i64 0, i64 %for.loop.idx10
  %dst.addr57_2 = getelementptr [8 x i32], [8 x i32]* %_2, i64 0, i64 %for.loop.idx10
  %dst.addr57_3 = getelementptr [8 x i32], [8 x i32]* %_3, i64 0, i64 %for.loop.idx10
  %dst.addr57_4 = getelementptr [8 x i32], [8 x i32]* %_4, i64 0, i64 %for.loop.idx10
  %dst.addr57_5 = getelementptr [8 x i32], [8 x i32]* %_5, i64 0, i64 %for.loop.idx10
  %dst.addr57_6 = getelementptr [8 x i32], [8 x i32]* %_6, i64 0, i64 %for.loop.idx10
  %dst.addr57_7 = getelementptr [8 x i32], [8 x i32]* %_7, i64 0, i64 %for.loop.idx10
  br label %for.loop2

for.loop2:                                        ; preds = %dst.addr57.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %dst.addr57.exit ]
  %src.addr68 = getelementptr [8 x [8 x i32]], [8 x [8 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %4 = load i32, i32* %src.addr68, align 4
  %5 = trunc i64 %for.loop.idx39 to i3
  switch i3 %5, label %dst.addr57.case.7 [
    i3 0, label %dst.addr57.case.0
    i3 1, label %dst.addr57.case.1
    i3 2, label %dst.addr57.case.2
    i3 3, label %dst.addr57.case.3
    i3 -4, label %dst.addr57.case.4
    i3 -3, label %dst.addr57.case.5
    i3 -2, label %dst.addr57.case.6
  ]

dst.addr57.case.0:                                ; preds = %for.loop2
  store i32 %4, i32* %dst.addr57_0, align 4
  br label %dst.addr57.exit

dst.addr57.case.1:                                ; preds = %for.loop2
  store i32 %4, i32* %dst.addr57_1, align 4
  br label %dst.addr57.exit

dst.addr57.case.2:                                ; preds = %for.loop2
  store i32 %4, i32* %dst.addr57_2, align 4
  br label %dst.addr57.exit

dst.addr57.case.3:                                ; preds = %for.loop2
  store i32 %4, i32* %dst.addr57_3, align 4
  br label %dst.addr57.exit

dst.addr57.case.4:                                ; preds = %for.loop2
  store i32 %4, i32* %dst.addr57_4, align 4
  br label %dst.addr57.exit

dst.addr57.case.5:                                ; preds = %for.loop2
  store i32 %4, i32* %dst.addr57_5, align 4
  br label %dst.addr57.exit

dst.addr57.case.6:                                ; preds = %for.loop2
  store i32 %4, i32* %dst.addr57_6, align 4
  br label %dst.addr57.exit

dst.addr57.case.7:                                ; preds = %for.loop2
  store i32 %4, i32* %dst.addr57_7, align 4
  br label %dst.addr57.exit

dst.addr57.exit:                                  ; preds = %dst.addr57.case.7, %dst.addr57.case.6, %dst.addr57.case.5, %dst.addr57.case.4, %dst.addr57.case.3, %dst.addr57.case.2, %dst.addr57.case.1, %dst.addr57.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %dst.addr57.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8a8i32.5.6(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.0" %_0_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.1" %_0_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.2" %_0_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.3" %_0_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.4" %_0_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.5" %_0_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.6" %_0_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.7" %_0_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.0" %_1_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.1" %_1_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.2" %_1_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.3" %_1_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.4" %_1_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.5" %_1_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.6" %_1_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.7" %_1_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2.0" %_2_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2.1" %_2_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2.2" %_2_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2.3" %_2_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2.4" %_2_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2.5" %_2_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2.6" %_2_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2.7" %_2_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3.0" %_3_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3.1" %_3_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3.2" %_3_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3.3" %_3_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3.4" %_3_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3.5" %_3_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3.6" %_3_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3.7" %_3_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4.0" %_4_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4.1" %_4_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4.2" %_4_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4.3" %_4_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4.4" %_4_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4.5" %_4_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4.6" %_4_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4.7" %_4_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5.0" %_5_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5.1" %_5_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5.2" %_5_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5.3" %_5_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5.4" %_5_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5.5" %_5_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5.6" %_5_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5.7" %_5_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.6.0" %_6_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.6.1" %_6_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.6.2" %_6_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.6.3" %_6_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.6.4" %_6_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.6.5" %_6_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.6.6" %_6_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.6.7" %_6_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.7.0" %_7_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.7.1" %_7_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.7.2" %_7_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.7.3" %_7_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.7.4" %_7_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.7.5" %_7_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.7.6" %_7_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.7.7" %_7_7, [8 x [8 x i32]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq i32* %_0_0, null
  %2 = icmp eq [8 x [8 x i32]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = trunc i64 %for.loop.idx10 to i3
  br label %for.loop2

for.loop2:                                        ; preds = %dst.addr57.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %dst.addr57.exit ]
  %src.addr68 = getelementptr [8 x [8 x i32]], [8 x [8 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load i32, i32* %src.addr68, align 4
  %6 = trunc i64 %for.loop.idx39 to i3
  switch i3 %4, label %dst.addr57.case.7 [
    i3 0, label %dst.addr57.case.0
    i3 1, label %dst.addr57.case.1
    i3 2, label %dst.addr57.case.2
    i3 3, label %dst.addr57.case.3
    i3 -4, label %dst.addr57.case.4
    i3 -3, label %dst.addr57.case.5
    i3 -2, label %dst.addr57.case.6
  ]

dst.addr57.case.0:                                ; preds = %for.loop2
  switch i3 %6, label %dst.addr57.case.710 [
    i3 0, label %dst.addr57.case.03
    i3 1, label %dst.addr57.case.14
    i3 2, label %dst.addr57.case.25
    i3 3, label %dst.addr57.case.36
    i3 -4, label %dst.addr57.case.47
    i3 -3, label %dst.addr57.case.58
    i3 -2, label %dst.addr57.case.69
  ]

dst.addr57.case.03:                               ; preds = %dst.addr57.case.0
  store i32 %5, i32* %_0_0, align 512
  br label %dst.addr57.exit2

dst.addr57.case.14:                               ; preds = %dst.addr57.case.0
  store i32 %5, i32* %_0_1, align 512
  br label %dst.addr57.exit2

dst.addr57.case.25:                               ; preds = %dst.addr57.case.0
  store i32 %5, i32* %_0_2, align 512
  br label %dst.addr57.exit2

dst.addr57.case.36:                               ; preds = %dst.addr57.case.0
  store i32 %5, i32* %_0_3, align 512
  br label %dst.addr57.exit2

dst.addr57.case.47:                               ; preds = %dst.addr57.case.0
  store i32 %5, i32* %_0_4, align 512
  br label %dst.addr57.exit2

dst.addr57.case.58:                               ; preds = %dst.addr57.case.0
  store i32 %5, i32* %_0_5, align 512
  br label %dst.addr57.exit2

dst.addr57.case.69:                               ; preds = %dst.addr57.case.0
  store i32 %5, i32* %_0_6, align 512
  br label %dst.addr57.exit2

dst.addr57.case.710:                              ; preds = %dst.addr57.case.0
  store i32 %5, i32* %_0_7, align 512
  br label %dst.addr57.exit2

dst.addr57.exit2:                                 ; preds = %dst.addr57.case.710, %dst.addr57.case.69, %dst.addr57.case.58, %dst.addr57.case.47, %dst.addr57.case.36, %dst.addr57.case.25, %dst.addr57.case.14, %dst.addr57.case.03
  br label %dst.addr57.exit

dst.addr57.case.1:                                ; preds = %for.loop2
  switch i3 %6, label %dst.addr57.case.720 [
    i3 0, label %dst.addr57.case.013
    i3 1, label %dst.addr57.case.114
    i3 2, label %dst.addr57.case.215
    i3 3, label %dst.addr57.case.316
    i3 -4, label %dst.addr57.case.417
    i3 -3, label %dst.addr57.case.518
    i3 -2, label %dst.addr57.case.619
  ]

dst.addr57.case.013:                              ; preds = %dst.addr57.case.1
  store i32 %5, i32* %_1_0, align 512
  br label %dst.addr57.exit12

dst.addr57.case.114:                              ; preds = %dst.addr57.case.1
  store i32 %5, i32* %_1_1, align 512
  br label %dst.addr57.exit12

dst.addr57.case.215:                              ; preds = %dst.addr57.case.1
  store i32 %5, i32* %_1_2, align 512
  br label %dst.addr57.exit12

dst.addr57.case.316:                              ; preds = %dst.addr57.case.1
  store i32 %5, i32* %_1_3, align 512
  br label %dst.addr57.exit12

dst.addr57.case.417:                              ; preds = %dst.addr57.case.1
  store i32 %5, i32* %_1_4, align 512
  br label %dst.addr57.exit12

dst.addr57.case.518:                              ; preds = %dst.addr57.case.1
  store i32 %5, i32* %_1_5, align 512
  br label %dst.addr57.exit12

dst.addr57.case.619:                              ; preds = %dst.addr57.case.1
  store i32 %5, i32* %_1_6, align 512
  br label %dst.addr57.exit12

dst.addr57.case.720:                              ; preds = %dst.addr57.case.1
  store i32 %5, i32* %_1_7, align 512
  br label %dst.addr57.exit12

dst.addr57.exit12:                                ; preds = %dst.addr57.case.720, %dst.addr57.case.619, %dst.addr57.case.518, %dst.addr57.case.417, %dst.addr57.case.316, %dst.addr57.case.215, %dst.addr57.case.114, %dst.addr57.case.013
  br label %dst.addr57.exit

dst.addr57.case.2:                                ; preds = %for.loop2
  switch i3 %6, label %dst.addr57.case.730 [
    i3 0, label %dst.addr57.case.023
    i3 1, label %dst.addr57.case.124
    i3 2, label %dst.addr57.case.225
    i3 3, label %dst.addr57.case.326
    i3 -4, label %dst.addr57.case.427
    i3 -3, label %dst.addr57.case.528
    i3 -2, label %dst.addr57.case.629
  ]

dst.addr57.case.023:                              ; preds = %dst.addr57.case.2
  store i32 %5, i32* %_2_0, align 512
  br label %dst.addr57.exit22

dst.addr57.case.124:                              ; preds = %dst.addr57.case.2
  store i32 %5, i32* %_2_1, align 512
  br label %dst.addr57.exit22

dst.addr57.case.225:                              ; preds = %dst.addr57.case.2
  store i32 %5, i32* %_2_2, align 512
  br label %dst.addr57.exit22

dst.addr57.case.326:                              ; preds = %dst.addr57.case.2
  store i32 %5, i32* %_2_3, align 512
  br label %dst.addr57.exit22

dst.addr57.case.427:                              ; preds = %dst.addr57.case.2
  store i32 %5, i32* %_2_4, align 512
  br label %dst.addr57.exit22

dst.addr57.case.528:                              ; preds = %dst.addr57.case.2
  store i32 %5, i32* %_2_5, align 512
  br label %dst.addr57.exit22

dst.addr57.case.629:                              ; preds = %dst.addr57.case.2
  store i32 %5, i32* %_2_6, align 512
  br label %dst.addr57.exit22

dst.addr57.case.730:                              ; preds = %dst.addr57.case.2
  store i32 %5, i32* %_2_7, align 512
  br label %dst.addr57.exit22

dst.addr57.exit22:                                ; preds = %dst.addr57.case.730, %dst.addr57.case.629, %dst.addr57.case.528, %dst.addr57.case.427, %dst.addr57.case.326, %dst.addr57.case.225, %dst.addr57.case.124, %dst.addr57.case.023
  br label %dst.addr57.exit

dst.addr57.case.3:                                ; preds = %for.loop2
  switch i3 %6, label %dst.addr57.case.740 [
    i3 0, label %dst.addr57.case.033
    i3 1, label %dst.addr57.case.134
    i3 2, label %dst.addr57.case.235
    i3 3, label %dst.addr57.case.336
    i3 -4, label %dst.addr57.case.437
    i3 -3, label %dst.addr57.case.538
    i3 -2, label %dst.addr57.case.639
  ]

dst.addr57.case.033:                              ; preds = %dst.addr57.case.3
  store i32 %5, i32* %_3_0, align 512
  br label %dst.addr57.exit32

dst.addr57.case.134:                              ; preds = %dst.addr57.case.3
  store i32 %5, i32* %_3_1, align 512
  br label %dst.addr57.exit32

dst.addr57.case.235:                              ; preds = %dst.addr57.case.3
  store i32 %5, i32* %_3_2, align 512
  br label %dst.addr57.exit32

dst.addr57.case.336:                              ; preds = %dst.addr57.case.3
  store i32 %5, i32* %_3_3, align 512
  br label %dst.addr57.exit32

dst.addr57.case.437:                              ; preds = %dst.addr57.case.3
  store i32 %5, i32* %_3_4, align 512
  br label %dst.addr57.exit32

dst.addr57.case.538:                              ; preds = %dst.addr57.case.3
  store i32 %5, i32* %_3_5, align 512
  br label %dst.addr57.exit32

dst.addr57.case.639:                              ; preds = %dst.addr57.case.3
  store i32 %5, i32* %_3_6, align 512
  br label %dst.addr57.exit32

dst.addr57.case.740:                              ; preds = %dst.addr57.case.3
  store i32 %5, i32* %_3_7, align 512
  br label %dst.addr57.exit32

dst.addr57.exit32:                                ; preds = %dst.addr57.case.740, %dst.addr57.case.639, %dst.addr57.case.538, %dst.addr57.case.437, %dst.addr57.case.336, %dst.addr57.case.235, %dst.addr57.case.134, %dst.addr57.case.033
  br label %dst.addr57.exit

dst.addr57.case.4:                                ; preds = %for.loop2
  switch i3 %6, label %dst.addr57.case.750 [
    i3 0, label %dst.addr57.case.043
    i3 1, label %dst.addr57.case.144
    i3 2, label %dst.addr57.case.245
    i3 3, label %dst.addr57.case.346
    i3 -4, label %dst.addr57.case.447
    i3 -3, label %dst.addr57.case.548
    i3 -2, label %dst.addr57.case.649
  ]

dst.addr57.case.043:                              ; preds = %dst.addr57.case.4
  store i32 %5, i32* %_4_0, align 512
  br label %dst.addr57.exit42

dst.addr57.case.144:                              ; preds = %dst.addr57.case.4
  store i32 %5, i32* %_4_1, align 512
  br label %dst.addr57.exit42

dst.addr57.case.245:                              ; preds = %dst.addr57.case.4
  store i32 %5, i32* %_4_2, align 512
  br label %dst.addr57.exit42

dst.addr57.case.346:                              ; preds = %dst.addr57.case.4
  store i32 %5, i32* %_4_3, align 512
  br label %dst.addr57.exit42

dst.addr57.case.447:                              ; preds = %dst.addr57.case.4
  store i32 %5, i32* %_4_4, align 512
  br label %dst.addr57.exit42

dst.addr57.case.548:                              ; preds = %dst.addr57.case.4
  store i32 %5, i32* %_4_5, align 512
  br label %dst.addr57.exit42

dst.addr57.case.649:                              ; preds = %dst.addr57.case.4
  store i32 %5, i32* %_4_6, align 512
  br label %dst.addr57.exit42

dst.addr57.case.750:                              ; preds = %dst.addr57.case.4
  store i32 %5, i32* %_4_7, align 512
  br label %dst.addr57.exit42

dst.addr57.exit42:                                ; preds = %dst.addr57.case.750, %dst.addr57.case.649, %dst.addr57.case.548, %dst.addr57.case.447, %dst.addr57.case.346, %dst.addr57.case.245, %dst.addr57.case.144, %dst.addr57.case.043
  br label %dst.addr57.exit

dst.addr57.case.5:                                ; preds = %for.loop2
  switch i3 %6, label %dst.addr57.case.760 [
    i3 0, label %dst.addr57.case.053
    i3 1, label %dst.addr57.case.154
    i3 2, label %dst.addr57.case.255
    i3 3, label %dst.addr57.case.356
    i3 -4, label %dst.addr57.case.457
    i3 -3, label %dst.addr57.case.558
    i3 -2, label %dst.addr57.case.659
  ]

dst.addr57.case.053:                              ; preds = %dst.addr57.case.5
  store i32 %5, i32* %_5_0, align 512
  br label %dst.addr57.exit52

dst.addr57.case.154:                              ; preds = %dst.addr57.case.5
  store i32 %5, i32* %_5_1, align 512
  br label %dst.addr57.exit52

dst.addr57.case.255:                              ; preds = %dst.addr57.case.5
  store i32 %5, i32* %_5_2, align 512
  br label %dst.addr57.exit52

dst.addr57.case.356:                              ; preds = %dst.addr57.case.5
  store i32 %5, i32* %_5_3, align 512
  br label %dst.addr57.exit52

dst.addr57.case.457:                              ; preds = %dst.addr57.case.5
  store i32 %5, i32* %_5_4, align 512
  br label %dst.addr57.exit52

dst.addr57.case.558:                              ; preds = %dst.addr57.case.5
  store i32 %5, i32* %_5_5, align 512
  br label %dst.addr57.exit52

dst.addr57.case.659:                              ; preds = %dst.addr57.case.5
  store i32 %5, i32* %_5_6, align 512
  br label %dst.addr57.exit52

dst.addr57.case.760:                              ; preds = %dst.addr57.case.5
  store i32 %5, i32* %_5_7, align 512
  br label %dst.addr57.exit52

dst.addr57.exit52:                                ; preds = %dst.addr57.case.760, %dst.addr57.case.659, %dst.addr57.case.558, %dst.addr57.case.457, %dst.addr57.case.356, %dst.addr57.case.255, %dst.addr57.case.154, %dst.addr57.case.053
  br label %dst.addr57.exit

dst.addr57.case.6:                                ; preds = %for.loop2
  switch i3 %6, label %dst.addr57.case.770 [
    i3 0, label %dst.addr57.case.063
    i3 1, label %dst.addr57.case.164
    i3 2, label %dst.addr57.case.265
    i3 3, label %dst.addr57.case.366
    i3 -4, label %dst.addr57.case.467
    i3 -3, label %dst.addr57.case.568
    i3 -2, label %dst.addr57.case.669
  ]

dst.addr57.case.063:                              ; preds = %dst.addr57.case.6
  store i32 %5, i32* %_6_0, align 512
  br label %dst.addr57.exit62

dst.addr57.case.164:                              ; preds = %dst.addr57.case.6
  store i32 %5, i32* %_6_1, align 512
  br label %dst.addr57.exit62

dst.addr57.case.265:                              ; preds = %dst.addr57.case.6
  store i32 %5, i32* %_6_2, align 512
  br label %dst.addr57.exit62

dst.addr57.case.366:                              ; preds = %dst.addr57.case.6
  store i32 %5, i32* %_6_3, align 512
  br label %dst.addr57.exit62

dst.addr57.case.467:                              ; preds = %dst.addr57.case.6
  store i32 %5, i32* %_6_4, align 512
  br label %dst.addr57.exit62

dst.addr57.case.568:                              ; preds = %dst.addr57.case.6
  store i32 %5, i32* %_6_5, align 512
  br label %dst.addr57.exit62

dst.addr57.case.669:                              ; preds = %dst.addr57.case.6
  store i32 %5, i32* %_6_6, align 512
  br label %dst.addr57.exit62

dst.addr57.case.770:                              ; preds = %dst.addr57.case.6
  store i32 %5, i32* %_6_7, align 512
  br label %dst.addr57.exit62

dst.addr57.exit62:                                ; preds = %dst.addr57.case.770, %dst.addr57.case.669, %dst.addr57.case.568, %dst.addr57.case.467, %dst.addr57.case.366, %dst.addr57.case.265, %dst.addr57.case.164, %dst.addr57.case.063
  br label %dst.addr57.exit

dst.addr57.case.7:                                ; preds = %for.loop2
  switch i3 %6, label %dst.addr57.case.780 [
    i3 0, label %dst.addr57.case.073
    i3 1, label %dst.addr57.case.174
    i3 2, label %dst.addr57.case.275
    i3 3, label %dst.addr57.case.376
    i3 -4, label %dst.addr57.case.477
    i3 -3, label %dst.addr57.case.578
    i3 -2, label %dst.addr57.case.679
  ]

dst.addr57.case.073:                              ; preds = %dst.addr57.case.7
  store i32 %5, i32* %_7_0, align 512
  br label %dst.addr57.exit72

dst.addr57.case.174:                              ; preds = %dst.addr57.case.7
  store i32 %5, i32* %_7_1, align 512
  br label %dst.addr57.exit72

dst.addr57.case.275:                              ; preds = %dst.addr57.case.7
  store i32 %5, i32* %_7_2, align 512
  br label %dst.addr57.exit72

dst.addr57.case.376:                              ; preds = %dst.addr57.case.7
  store i32 %5, i32* %_7_3, align 512
  br label %dst.addr57.exit72

dst.addr57.case.477:                              ; preds = %dst.addr57.case.7
  store i32 %5, i32* %_7_4, align 512
  br label %dst.addr57.exit72

dst.addr57.case.578:                              ; preds = %dst.addr57.case.7
  store i32 %5, i32* %_7_5, align 512
  br label %dst.addr57.exit72

dst.addr57.case.679:                              ; preds = %dst.addr57.case.7
  store i32 %5, i32* %_7_6, align 512
  br label %dst.addr57.exit72

dst.addr57.case.780:                              ; preds = %dst.addr57.case.7
  store i32 %5, i32* %_7_7, align 512
  br label %dst.addr57.exit72

dst.addr57.exit72:                                ; preds = %dst.addr57.case.780, %dst.addr57.case.679, %dst.addr57.case.578, %dst.addr57.case.477, %dst.addr57.case.376, %dst.addr57.case.275, %dst.addr57.case.174, %dst.addr57.case.073
  br label %dst.addr57.exit

dst.addr57.exit:                                  ; preds = %dst.addr57.exit72, %dst.addr57.exit62, %dst.addr57.exit52, %dst.addr57.exit42, %dst.addr57.exit32, %dst.addr57.exit22, %dst.addr57.exit12, %dst.addr57.exit2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %dst.addr57.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([8 x [8 x i32]]* noalias readonly "orig.arg.no"="0", [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7, [8 x [8 x i32]]* noalias readonly "orig.arg.no"="2", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.0" %_0_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.1" %_0_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.2" %_0_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.3" %_0_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.4" %_0_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.5" %_0_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.6" %_0_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.7" %_0_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.0" %_1_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.1" %_1_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.2" %_1_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.3" %_1_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.4" %_1_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.5" %_1_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.6" %_1_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.7" %_1_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.0" %_2_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.1" %_2_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.2" %_2_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.3" %_2_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.4" %_2_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.5" %_2_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.6" %_2_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.7" %_2_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.0" %_3_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.1" %_3_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.2" %_3_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.3" %_3_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.4" %_3_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.5" %_3_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.6" %_3_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.7" %_3_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.0" %_4_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.1" %_4_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.2" %_4_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.3" %_4_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.4" %_4_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.5" %_4_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.6" %_4_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.7" %_4_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.0" %_5_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.1" %_5_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.2" %_5_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.3" %_5_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.4" %_5_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.5" %_5_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.6" %_5_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.7" %_5_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.0" %_6_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.1" %_6_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.2" %_6_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.3" %_6_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.4" %_6_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.5" %_6_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.6" %_6_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.7" %_6_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.0" %_7_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.1" %_7_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.2" %_7_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.3" %_7_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.4" %_7_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.5" %_7_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.6" %_7_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.7" %_7_7, [8 x [8 x i32]]* noalias readonly "orig.arg.no"="4", [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_01, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_12, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.2" %_23, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.3" %_34, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.4" %_45, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.5" %_56, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.6" %_67, [8 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.7" %_78) #3 {
entry:
  call void @onebyonecpy_hls.p0a8a8i32.3.4([8 x i32]* align 512 %_0, [8 x i32]* align 512 %_1, [8 x i32]* align 512 %_2, [8 x i32]* align 512 %_3, [8 x i32]* align 512 %_4, [8 x i32]* align 512 %_5, [8 x i32]* align 512 %_6, [8 x i32]* align 512 %_7, [8 x [8 x i32]]* %0)
  call void @onebyonecpy_hls.p0a8a8i32.5.6(i32* align 512 %_0_0, i32* align 512 %_0_1, i32* align 512 %_0_2, i32* align 512 %_0_3, i32* align 512 %_0_4, i32* align 512 %_0_5, i32* align 512 %_0_6, i32* align 512 %_0_7, i32* align 512 %_1_0, i32* align 512 %_1_1, i32* align 512 %_1_2, i32* align 512 %_1_3, i32* align 512 %_1_4, i32* align 512 %_1_5, i32* align 512 %_1_6, i32* align 512 %_1_7, i32* align 512 %_2_0, i32* align 512 %_2_1, i32* align 512 %_2_2, i32* align 512 %_2_3, i32* align 512 %_2_4, i32* align 512 %_2_5, i32* align 512 %_2_6, i32* align 512 %_2_7, i32* align 512 %_3_0, i32* align 512 %_3_1, i32* align 512 %_3_2, i32* align 512 %_3_3, i32* align 512 %_3_4, i32* align 512 %_3_5, i32* align 512 %_3_6, i32* align 512 %_3_7, i32* align 512 %_4_0, i32* align 512 %_4_1, i32* align 512 %_4_2, i32* align 512 %_4_3, i32* align 512 %_4_4, i32* align 512 %_4_5, i32* align 512 %_4_6, i32* align 512 %_4_7, i32* align 512 %_5_0, i32* align 512 %_5_1, i32* align 512 %_5_2, i32* align 512 %_5_3, i32* align 512 %_5_4, i32* align 512 %_5_5, i32* align 512 %_5_6, i32* align 512 %_5_7, i32* align 512 %_6_0, i32* align 512 %_6_1, i32* align 512 %_6_2, i32* align 512 %_6_3, i32* align 512 %_6_4, i32* align 512 %_6_5, i32* align 512 %_6_6, i32* align 512 %_6_7, i32* align 512 %_7_0, i32* align 512 %_7_1, i32* align 512 %_7_2, i32* align 512 %_7_3, i32* align 512 %_7_4, i32* align 512 %_7_5, i32* align 512 %_7_6, i32* align 512 %_7_7, [8 x [8 x i32]]* %1)
  call void @onebyonecpy_hls.p0a8a8i32.3.4([8 x i32]* align 512 %_01, [8 x i32]* align 512 %_12, [8 x i32]* align 512 %_23, [8 x i32]* align 512 %_34, [8 x i32]* align 512 %_45, [8 x i32]* align 512 %_56, [8 x i32]* align 512 %_67, [8 x i32]* align 512 %_78, [8 x [8 x i32]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8a8i32.11.12([8 x [8 x i32]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7) #2 {
entry:
  %1 = icmp eq [8 x [8 x i32]]* %0, null
  %2 = icmp eq [8 x i32]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %src.addr68_0 = getelementptr [8 x i32], [8 x i32]* %_0, i64 0, i64 %for.loop.idx10
  %src.addr68_1 = getelementptr [8 x i32], [8 x i32]* %_1, i64 0, i64 %for.loop.idx10
  %src.addr68_2 = getelementptr [8 x i32], [8 x i32]* %_2, i64 0, i64 %for.loop.idx10
  %src.addr68_3 = getelementptr [8 x i32], [8 x i32]* %_3, i64 0, i64 %for.loop.idx10
  %src.addr68_4 = getelementptr [8 x i32], [8 x i32]* %_4, i64 0, i64 %for.loop.idx10
  %src.addr68_5 = getelementptr [8 x i32], [8 x i32]* %_5, i64 0, i64 %for.loop.idx10
  %src.addr68_6 = getelementptr [8 x i32], [8 x i32]* %_6, i64 0, i64 %for.loop.idx10
  %src.addr68_7 = getelementptr [8 x i32], [8 x i32]* %_7, i64 0, i64 %for.loop.idx10
  br label %for.loop2

for.loop2:                                        ; preds = %src.addr68.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %src.addr68.exit ]
  %dst.addr57 = getelementptr [8 x [8 x i32]], [8 x [8 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %4 = trunc i64 %for.loop.idx39 to i3
  switch i3 %4, label %src.addr68.case.7 [
    i3 0, label %src.addr68.case.0
    i3 1, label %src.addr68.case.1
    i3 2, label %src.addr68.case.2
    i3 3, label %src.addr68.case.3
    i3 -4, label %src.addr68.case.4
    i3 -3, label %src.addr68.case.5
    i3 -2, label %src.addr68.case.6
  ]

src.addr68.case.0:                                ; preds = %for.loop2
  %_01 = load i32, i32* %src.addr68_0, align 4
  br label %src.addr68.exit

src.addr68.case.1:                                ; preds = %for.loop2
  %_12 = load i32, i32* %src.addr68_1, align 4
  br label %src.addr68.exit

src.addr68.case.2:                                ; preds = %for.loop2
  %_23 = load i32, i32* %src.addr68_2, align 4
  br label %src.addr68.exit

src.addr68.case.3:                                ; preds = %for.loop2
  %_34 = load i32, i32* %src.addr68_3, align 4
  br label %src.addr68.exit

src.addr68.case.4:                                ; preds = %for.loop2
  %_45 = load i32, i32* %src.addr68_4, align 4
  br label %src.addr68.exit

src.addr68.case.5:                                ; preds = %for.loop2
  %_56 = load i32, i32* %src.addr68_5, align 4
  br label %src.addr68.exit

src.addr68.case.6:                                ; preds = %for.loop2
  %_67 = load i32, i32* %src.addr68_6, align 4
  br label %src.addr68.exit

src.addr68.case.7:                                ; preds = %for.loop2
  %_78 = load i32, i32* %src.addr68_7, align 4
  br label %src.addr68.exit

src.addr68.exit:                                  ; preds = %src.addr68.case.7, %src.addr68.case.6, %src.addr68.case.5, %src.addr68.case.4, %src.addr68.case.3, %src.addr68.case.2, %src.addr68.case.1, %src.addr68.case.0
  %5 = phi i32 [ %_01, %src.addr68.case.0 ], [ %_12, %src.addr68.case.1 ], [ %_23, %src.addr68.case.2 ], [ %_34, %src.addr68.case.3 ], [ %_45, %src.addr68.case.4 ], [ %_56, %src.addr68.case.5 ], [ %_67, %src.addr68.case.6 ], [ %_78, %src.addr68.case.7 ]
  store i32 %5, i32* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %src.addr68.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a8a8i32.13.14([8 x [8 x i32]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.0" %_0_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.1" %_0_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.2" %_0_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.3" %_0_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.4" %_0_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.5" %_0_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.6" %_0_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.7" %_0_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.0" %_1_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.1" %_1_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.2" %_1_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.3" %_1_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.4" %_1_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.5" %_1_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.6" %_1_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.7" %_1_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.0" %_2_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.1" %_2_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.2" %_2_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.3" %_2_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.4" %_2_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.5" %_2_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.6" %_2_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.7" %_2_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3.0" %_3_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3.1" %_3_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3.2" %_3_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3.3" %_3_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3.4" %_3_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3.5" %_3_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3.6" %_3_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3.7" %_3_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4.0" %_4_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4.1" %_4_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4.2" %_4_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4.3" %_4_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4.4" %_4_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4.5" %_4_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4.6" %_4_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4.7" %_4_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5.0" %_5_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5.1" %_5_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5.2" %_5_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5.3" %_5_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5.4" %_5_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5.5" %_5_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5.6" %_5_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5.7" %_5_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6.0" %_6_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6.1" %_6_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6.2" %_6_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6.3" %_6_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6.4" %_6_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6.5" %_6_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6.6" %_6_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6.7" %_6_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7.0" %_7_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7.1" %_7_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7.2" %_7_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7.3" %_7_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7.4" %_7_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7.5" %_7_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7.6" %_7_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7.7" %_7_7) #2 {
entry:
  %1 = icmp eq [8 x [8 x i32]]* %0, null
  %2 = icmp eq i32* %_0_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = trunc i64 %for.loop.idx10 to i3
  br label %for.loop2

for.loop2:                                        ; preds = %src.addr68.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %src.addr68.exit ]
  %dst.addr57 = getelementptr [8 x [8 x i32]], [8 x [8 x i32]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = trunc i64 %for.loop.idx39 to i3
  switch i3 %4, label %src.addr68.case.7 [
    i3 0, label %src.addr68.case.0
    i3 1, label %src.addr68.case.1
    i3 2, label %src.addr68.case.2
    i3 3, label %src.addr68.case.3
    i3 -4, label %src.addr68.case.4
    i3 -3, label %src.addr68.case.5
    i3 -2, label %src.addr68.case.6
  ]

src.addr68.case.0:                                ; preds = %for.loop2
  switch i3 %5, label %src.addr68.case.710 [
    i3 0, label %src.addr68.case.03
    i3 1, label %src.addr68.case.14
    i3 2, label %src.addr68.case.25
    i3 3, label %src.addr68.case.36
    i3 -4, label %src.addr68.case.47
    i3 -3, label %src.addr68.case.58
    i3 -2, label %src.addr68.case.69
  ]

src.addr68.case.03:                               ; preds = %src.addr68.case.0
  %_0_011 = load i32, i32* %_0_0, align 512
  br label %src.addr68.exit

src.addr68.case.14:                               ; preds = %src.addr68.case.0
  %_0_112 = load i32, i32* %_0_1, align 512
  br label %src.addr68.exit

src.addr68.case.25:                               ; preds = %src.addr68.case.0
  %_0_213 = load i32, i32* %_0_2, align 512
  br label %src.addr68.exit

src.addr68.case.36:                               ; preds = %src.addr68.case.0
  %_0_314 = load i32, i32* %_0_3, align 512
  br label %src.addr68.exit

src.addr68.case.47:                               ; preds = %src.addr68.case.0
  %_0_415 = load i32, i32* %_0_4, align 512
  br label %src.addr68.exit

src.addr68.case.58:                               ; preds = %src.addr68.case.0
  %_0_516 = load i32, i32* %_0_5, align 512
  br label %src.addr68.exit

src.addr68.case.69:                               ; preds = %src.addr68.case.0
  %_0_617 = load i32, i32* %_0_6, align 512
  br label %src.addr68.exit

src.addr68.case.710:                              ; preds = %src.addr68.case.0
  %_0_718 = load i32, i32* %_0_7, align 512
  br label %src.addr68.exit

src.addr68.case.1:                                ; preds = %for.loop2
  switch i3 %5, label %src.addr68.case.728 [
    i3 0, label %src.addr68.case.021
    i3 1, label %src.addr68.case.122
    i3 2, label %src.addr68.case.223
    i3 3, label %src.addr68.case.324
    i3 -4, label %src.addr68.case.425
    i3 -3, label %src.addr68.case.526
    i3 -2, label %src.addr68.case.627
  ]

src.addr68.case.021:                              ; preds = %src.addr68.case.1
  %_1_029 = load i32, i32* %_1_0, align 512
  br label %src.addr68.exit

src.addr68.case.122:                              ; preds = %src.addr68.case.1
  %_1_130 = load i32, i32* %_1_1, align 512
  br label %src.addr68.exit

src.addr68.case.223:                              ; preds = %src.addr68.case.1
  %_1_231 = load i32, i32* %_1_2, align 512
  br label %src.addr68.exit

src.addr68.case.324:                              ; preds = %src.addr68.case.1
  %_1_332 = load i32, i32* %_1_3, align 512
  br label %src.addr68.exit

src.addr68.case.425:                              ; preds = %src.addr68.case.1
  %_1_433 = load i32, i32* %_1_4, align 512
  br label %src.addr68.exit

src.addr68.case.526:                              ; preds = %src.addr68.case.1
  %_1_534 = load i32, i32* %_1_5, align 512
  br label %src.addr68.exit

src.addr68.case.627:                              ; preds = %src.addr68.case.1
  %_1_635 = load i32, i32* %_1_6, align 512
  br label %src.addr68.exit

src.addr68.case.728:                              ; preds = %src.addr68.case.1
  %_1_736 = load i32, i32* %_1_7, align 512
  br label %src.addr68.exit

src.addr68.case.2:                                ; preds = %for.loop2
  switch i3 %5, label %src.addr68.case.746 [
    i3 0, label %src.addr68.case.039
    i3 1, label %src.addr68.case.140
    i3 2, label %src.addr68.case.241
    i3 3, label %src.addr68.case.342
    i3 -4, label %src.addr68.case.443
    i3 -3, label %src.addr68.case.544
    i3 -2, label %src.addr68.case.645
  ]

src.addr68.case.039:                              ; preds = %src.addr68.case.2
  %_2_047 = load i32, i32* %_2_0, align 512
  br label %src.addr68.exit

src.addr68.case.140:                              ; preds = %src.addr68.case.2
  %_2_148 = load i32, i32* %_2_1, align 512
  br label %src.addr68.exit

src.addr68.case.241:                              ; preds = %src.addr68.case.2
  %_2_249 = load i32, i32* %_2_2, align 512
  br label %src.addr68.exit

src.addr68.case.342:                              ; preds = %src.addr68.case.2
  %_2_350 = load i32, i32* %_2_3, align 512
  br label %src.addr68.exit

src.addr68.case.443:                              ; preds = %src.addr68.case.2
  %_2_451 = load i32, i32* %_2_4, align 512
  br label %src.addr68.exit

src.addr68.case.544:                              ; preds = %src.addr68.case.2
  %_2_552 = load i32, i32* %_2_5, align 512
  br label %src.addr68.exit

src.addr68.case.645:                              ; preds = %src.addr68.case.2
  %_2_653 = load i32, i32* %_2_6, align 512
  br label %src.addr68.exit

src.addr68.case.746:                              ; preds = %src.addr68.case.2
  %_2_754 = load i32, i32* %_2_7, align 512
  br label %src.addr68.exit

src.addr68.case.3:                                ; preds = %for.loop2
  switch i3 %5, label %src.addr68.case.764 [
    i3 0, label %src.addr68.case.057
    i3 1, label %src.addr68.case.158
    i3 2, label %src.addr68.case.259
    i3 3, label %src.addr68.case.360
    i3 -4, label %src.addr68.case.461
    i3 -3, label %src.addr68.case.562
    i3 -2, label %src.addr68.case.663
  ]

src.addr68.case.057:                              ; preds = %src.addr68.case.3
  %_3_065 = load i32, i32* %_3_0, align 512
  br label %src.addr68.exit

src.addr68.case.158:                              ; preds = %src.addr68.case.3
  %_3_166 = load i32, i32* %_3_1, align 512
  br label %src.addr68.exit

src.addr68.case.259:                              ; preds = %src.addr68.case.3
  %_3_267 = load i32, i32* %_3_2, align 512
  br label %src.addr68.exit

src.addr68.case.360:                              ; preds = %src.addr68.case.3
  %_3_368 = load i32, i32* %_3_3, align 512
  br label %src.addr68.exit

src.addr68.case.461:                              ; preds = %src.addr68.case.3
  %_3_469 = load i32, i32* %_3_4, align 512
  br label %src.addr68.exit

src.addr68.case.562:                              ; preds = %src.addr68.case.3
  %_3_570 = load i32, i32* %_3_5, align 512
  br label %src.addr68.exit

src.addr68.case.663:                              ; preds = %src.addr68.case.3
  %_3_671 = load i32, i32* %_3_6, align 512
  br label %src.addr68.exit

src.addr68.case.764:                              ; preds = %src.addr68.case.3
  %_3_772 = load i32, i32* %_3_7, align 512
  br label %src.addr68.exit

src.addr68.case.4:                                ; preds = %for.loop2
  switch i3 %5, label %src.addr68.case.782 [
    i3 0, label %src.addr68.case.075
    i3 1, label %src.addr68.case.176
    i3 2, label %src.addr68.case.277
    i3 3, label %src.addr68.case.378
    i3 -4, label %src.addr68.case.479
    i3 -3, label %src.addr68.case.580
    i3 -2, label %src.addr68.case.681
  ]

src.addr68.case.075:                              ; preds = %src.addr68.case.4
  %_4_083 = load i32, i32* %_4_0, align 512
  br label %src.addr68.exit

src.addr68.case.176:                              ; preds = %src.addr68.case.4
  %_4_184 = load i32, i32* %_4_1, align 512
  br label %src.addr68.exit

src.addr68.case.277:                              ; preds = %src.addr68.case.4
  %_4_285 = load i32, i32* %_4_2, align 512
  br label %src.addr68.exit

src.addr68.case.378:                              ; preds = %src.addr68.case.4
  %_4_386 = load i32, i32* %_4_3, align 512
  br label %src.addr68.exit

src.addr68.case.479:                              ; preds = %src.addr68.case.4
  %_4_487 = load i32, i32* %_4_4, align 512
  br label %src.addr68.exit

src.addr68.case.580:                              ; preds = %src.addr68.case.4
  %_4_588 = load i32, i32* %_4_5, align 512
  br label %src.addr68.exit

src.addr68.case.681:                              ; preds = %src.addr68.case.4
  %_4_689 = load i32, i32* %_4_6, align 512
  br label %src.addr68.exit

src.addr68.case.782:                              ; preds = %src.addr68.case.4
  %_4_790 = load i32, i32* %_4_7, align 512
  br label %src.addr68.exit

src.addr68.case.5:                                ; preds = %for.loop2
  switch i3 %5, label %src.addr68.case.7100 [
    i3 0, label %src.addr68.case.093
    i3 1, label %src.addr68.case.194
    i3 2, label %src.addr68.case.295
    i3 3, label %src.addr68.case.396
    i3 -4, label %src.addr68.case.497
    i3 -3, label %src.addr68.case.598
    i3 -2, label %src.addr68.case.699
  ]

src.addr68.case.093:                              ; preds = %src.addr68.case.5
  %_5_0101 = load i32, i32* %_5_0, align 512
  br label %src.addr68.exit

src.addr68.case.194:                              ; preds = %src.addr68.case.5
  %_5_1102 = load i32, i32* %_5_1, align 512
  br label %src.addr68.exit

src.addr68.case.295:                              ; preds = %src.addr68.case.5
  %_5_2103 = load i32, i32* %_5_2, align 512
  br label %src.addr68.exit

src.addr68.case.396:                              ; preds = %src.addr68.case.5
  %_5_3104 = load i32, i32* %_5_3, align 512
  br label %src.addr68.exit

src.addr68.case.497:                              ; preds = %src.addr68.case.5
  %_5_4105 = load i32, i32* %_5_4, align 512
  br label %src.addr68.exit

src.addr68.case.598:                              ; preds = %src.addr68.case.5
  %_5_5106 = load i32, i32* %_5_5, align 512
  br label %src.addr68.exit

src.addr68.case.699:                              ; preds = %src.addr68.case.5
  %_5_6107 = load i32, i32* %_5_6, align 512
  br label %src.addr68.exit

src.addr68.case.7100:                             ; preds = %src.addr68.case.5
  %_5_7108 = load i32, i32* %_5_7, align 512
  br label %src.addr68.exit

src.addr68.case.6:                                ; preds = %for.loop2
  switch i3 %5, label %src.addr68.case.7118 [
    i3 0, label %src.addr68.case.0111
    i3 1, label %src.addr68.case.1112
    i3 2, label %src.addr68.case.2113
    i3 3, label %src.addr68.case.3114
    i3 -4, label %src.addr68.case.4115
    i3 -3, label %src.addr68.case.5116
    i3 -2, label %src.addr68.case.6117
  ]

src.addr68.case.0111:                             ; preds = %src.addr68.case.6
  %_6_0119 = load i32, i32* %_6_0, align 512
  br label %src.addr68.exit

src.addr68.case.1112:                             ; preds = %src.addr68.case.6
  %_6_1120 = load i32, i32* %_6_1, align 512
  br label %src.addr68.exit

src.addr68.case.2113:                             ; preds = %src.addr68.case.6
  %_6_2121 = load i32, i32* %_6_2, align 512
  br label %src.addr68.exit

src.addr68.case.3114:                             ; preds = %src.addr68.case.6
  %_6_3122 = load i32, i32* %_6_3, align 512
  br label %src.addr68.exit

src.addr68.case.4115:                             ; preds = %src.addr68.case.6
  %_6_4123 = load i32, i32* %_6_4, align 512
  br label %src.addr68.exit

src.addr68.case.5116:                             ; preds = %src.addr68.case.6
  %_6_5124 = load i32, i32* %_6_5, align 512
  br label %src.addr68.exit

src.addr68.case.6117:                             ; preds = %src.addr68.case.6
  %_6_6125 = load i32, i32* %_6_6, align 512
  br label %src.addr68.exit

src.addr68.case.7118:                             ; preds = %src.addr68.case.6
  %_6_7126 = load i32, i32* %_6_7, align 512
  br label %src.addr68.exit

src.addr68.case.7:                                ; preds = %for.loop2
  switch i3 %5, label %src.addr68.case.7136 [
    i3 0, label %src.addr68.case.0129
    i3 1, label %src.addr68.case.1130
    i3 2, label %src.addr68.case.2131
    i3 3, label %src.addr68.case.3132
    i3 -4, label %src.addr68.case.4133
    i3 -3, label %src.addr68.case.5134
    i3 -2, label %src.addr68.case.6135
  ]

src.addr68.case.0129:                             ; preds = %src.addr68.case.7
  %_7_0137 = load i32, i32* %_7_0, align 512
  br label %src.addr68.exit

src.addr68.case.1130:                             ; preds = %src.addr68.case.7
  %_7_1138 = load i32, i32* %_7_1, align 512
  br label %src.addr68.exit

src.addr68.case.2131:                             ; preds = %src.addr68.case.7
  %_7_2139 = load i32, i32* %_7_2, align 512
  br label %src.addr68.exit

src.addr68.case.3132:                             ; preds = %src.addr68.case.7
  %_7_3140 = load i32, i32* %_7_3, align 512
  br label %src.addr68.exit

src.addr68.case.4133:                             ; preds = %src.addr68.case.7
  %_7_4141 = load i32, i32* %_7_4, align 512
  br label %src.addr68.exit

src.addr68.case.5134:                             ; preds = %src.addr68.case.7
  %_7_5142 = load i32, i32* %_7_5, align 512
  br label %src.addr68.exit

src.addr68.case.6135:                             ; preds = %src.addr68.case.7
  %_7_6143 = load i32, i32* %_7_6, align 512
  br label %src.addr68.exit

src.addr68.case.7136:                             ; preds = %src.addr68.case.7
  %_7_7144 = load i32, i32* %_7_7, align 512
  br label %src.addr68.exit

src.addr68.exit:                                  ; preds = %src.addr68.case.7136, %src.addr68.case.6135, %src.addr68.case.5134, %src.addr68.case.4133, %src.addr68.case.3132, %src.addr68.case.2131, %src.addr68.case.1130, %src.addr68.case.0129, %src.addr68.case.7118, %src.addr68.case.6117, %src.addr68.case.5116, %src.addr68.case.4115, %src.addr68.case.3114, %src.addr68.case.2113, %src.addr68.case.1112, %src.addr68.case.0111, %src.addr68.case.7100, %src.addr68.case.699, %src.addr68.case.598, %src.addr68.case.497, %src.addr68.case.396, %src.addr68.case.295, %src.addr68.case.194, %src.addr68.case.093, %src.addr68.case.782, %src.addr68.case.681, %src.addr68.case.580, %src.addr68.case.479, %src.addr68.case.378, %src.addr68.case.277, %src.addr68.case.176, %src.addr68.case.075, %src.addr68.case.764, %src.addr68.case.663, %src.addr68.case.562, %src.addr68.case.461, %src.addr68.case.360, %src.addr68.case.259, %src.addr68.case.158, %src.addr68.case.057, %src.addr68.case.746, %src.addr68.case.645, %src.addr68.case.544, %src.addr68.case.443, %src.addr68.case.342, %src.addr68.case.241, %src.addr68.case.140, %src.addr68.case.039, %src.addr68.case.728, %src.addr68.case.627, %src.addr68.case.526, %src.addr68.case.425, %src.addr68.case.324, %src.addr68.case.223, %src.addr68.case.122, %src.addr68.case.021, %src.addr68.case.710, %src.addr68.case.69, %src.addr68.case.58, %src.addr68.case.47, %src.addr68.case.36, %src.addr68.case.25, %src.addr68.case.14, %src.addr68.case.03
  %6 = phi i32 [ %_6_0119, %src.addr68.case.0111 ], [ %_6_1120, %src.addr68.case.1112 ], [ %_6_2121, %src.addr68.case.2113 ], [ %_6_3122, %src.addr68.case.3114 ], [ %_6_4123, %src.addr68.case.4115 ], [ %_6_5124, %src.addr68.case.5116 ], [ %_6_6125, %src.addr68.case.6117 ], [ %_6_7126, %src.addr68.case.7118 ], [ %_5_0101, %src.addr68.case.093 ], [ %_5_1102, %src.addr68.case.194 ], [ %_5_2103, %src.addr68.case.295 ], [ %_5_3104, %src.addr68.case.396 ], [ %_5_4105, %src.addr68.case.497 ], [ %_5_5106, %src.addr68.case.598 ], [ %_5_6107, %src.addr68.case.699 ], [ %_5_7108, %src.addr68.case.7100 ], [ %_4_083, %src.addr68.case.075 ], [ %_4_184, %src.addr68.case.176 ], [ %_4_285, %src.addr68.case.277 ], [ %_4_386, %src.addr68.case.378 ], [ %_4_487, %src.addr68.case.479 ], [ %_4_588, %src.addr68.case.580 ], [ %_4_689, %src.addr68.case.681 ], [ %_4_790, %src.addr68.case.782 ], [ %_3_065, %src.addr68.case.057 ], [ %_3_166, %src.addr68.case.158 ], [ %_3_267, %src.addr68.case.259 ], [ %_3_368, %src.addr68.case.360 ], [ %_3_469, %src.addr68.case.461 ], [ %_3_570, %src.addr68.case.562 ], [ %_3_671, %src.addr68.case.663 ], [ %_3_772, %src.addr68.case.764 ], [ %_2_047, %src.addr68.case.039 ], [ %_2_148, %src.addr68.case.140 ], [ %_2_249, %src.addr68.case.241 ], [ %_2_350, %src.addr68.case.342 ], [ %_2_451, %src.addr68.case.443 ], [ %_2_552, %src.addr68.case.544 ], [ %_2_653, %src.addr68.case.645 ], [ %_2_754, %src.addr68.case.746 ], [ %_1_029, %src.addr68.case.021 ], [ %_1_130, %src.addr68.case.122 ], [ %_1_231, %src.addr68.case.223 ], [ %_1_332, %src.addr68.case.324 ], [ %_1_433, %src.addr68.case.425 ], [ %_1_534, %src.addr68.case.526 ], [ %_1_635, %src.addr68.case.627 ], [ %_1_736, %src.addr68.case.728 ], [ %_0_011, %src.addr68.case.03 ], [ %_0_112, %src.addr68.case.14 ], [ %_0_213, %src.addr68.case.25 ], [ %_0_314, %src.addr68.case.36 ], [ %_0_415, %src.addr68.case.47 ], [ %_0_516, %src.addr68.case.58 ], [ %_0_617, %src.addr68.case.69 ], [ %_0_718, %src.addr68.case.710 ], [ %_7_0137, %src.addr68.case.0129 ], [ %_7_1138, %src.addr68.case.1130 ], [ %_7_2139, %src.addr68.case.2131 ], [ %_7_3140, %src.addr68.case.3132 ], [ %_7_4141, %src.addr68.case.4133 ], [ %_7_5142, %src.addr68.case.5134 ], [ %_7_6143, %src.addr68.case.6135 ], [ %_7_7144, %src.addr68.case.7136 ]
  store i32 %6, i32* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 8
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %src.addr68.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([8 x [8 x i32]]* noalias "orig.arg.no"="0", [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7, [8 x [8 x i32]]* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.0" %_0_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.1" %_0_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.2" %_0_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.3" %_0_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.4" %_0_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.5" %_0_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.6" %_0_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.7" %_0_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.0" %_1_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.1" %_1_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.2" %_1_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.3" %_1_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.4" %_1_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.5" %_1_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.6" %_1_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.7" %_1_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.0" %_2_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.1" %_2_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.2" %_2_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.3" %_2_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.4" %_2_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.5" %_2_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.6" %_2_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.7" %_2_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.0" %_3_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.1" %_3_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.2" %_3_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.3" %_3_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.4" %_3_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.5" %_3_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.6" %_3_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.7" %_3_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.0" %_4_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.1" %_4_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.2" %_4_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.3" %_4_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.4" %_4_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.5" %_4_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.6" %_4_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.7" %_4_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.0" %_5_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.1" %_5_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.2" %_5_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.3" %_5_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.4" %_5_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.5" %_5_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.6" %_5_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.7" %_5_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.0" %_6_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.1" %_6_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.2" %_6_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.3" %_6_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.4" %_6_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.5" %_6_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.6" %_6_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.7" %_6_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.0" %_7_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.1" %_7_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.2" %_7_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.3" %_7_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.4" %_7_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.5" %_7_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.6" %_7_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.7" %_7_7, [8 x [8 x i32]]* noalias "orig.arg.no"="4", [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_01, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_12, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.2" %_23, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.3" %_34, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.4" %_45, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.5" %_56, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.6" %_67, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.7" %_78) #4 {
entry:
  call void @onebyonecpy_hls.p0a8a8i32.11.12([8 x [8 x i32]]* %0, [8 x i32]* align 512 %_0, [8 x i32]* align 512 %_1, [8 x i32]* align 512 %_2, [8 x i32]* align 512 %_3, [8 x i32]* align 512 %_4, [8 x i32]* align 512 %_5, [8 x i32]* align 512 %_6, [8 x i32]* align 512 %_7)
  call void @onebyonecpy_hls.p0a8a8i32.13.14([8 x [8 x i32]]* %1, i32* align 512 %_0_0, i32* align 512 %_0_1, i32* align 512 %_0_2, i32* align 512 %_0_3, i32* align 512 %_0_4, i32* align 512 %_0_5, i32* align 512 %_0_6, i32* align 512 %_0_7, i32* align 512 %_1_0, i32* align 512 %_1_1, i32* align 512 %_1_2, i32* align 512 %_1_3, i32* align 512 %_1_4, i32* align 512 %_1_5, i32* align 512 %_1_6, i32* align 512 %_1_7, i32* align 512 %_2_0, i32* align 512 %_2_1, i32* align 512 %_2_2, i32* align 512 %_2_3, i32* align 512 %_2_4, i32* align 512 %_2_5, i32* align 512 %_2_6, i32* align 512 %_2_7, i32* align 512 %_3_0, i32* align 512 %_3_1, i32* align 512 %_3_2, i32* align 512 %_3_3, i32* align 512 %_3_4, i32* align 512 %_3_5, i32* align 512 %_3_6, i32* align 512 %_3_7, i32* align 512 %_4_0, i32* align 512 %_4_1, i32* align 512 %_4_2, i32* align 512 %_4_3, i32* align 512 %_4_4, i32* align 512 %_4_5, i32* align 512 %_4_6, i32* align 512 %_4_7, i32* align 512 %_5_0, i32* align 512 %_5_1, i32* align 512 %_5_2, i32* align 512 %_5_3, i32* align 512 %_5_4, i32* align 512 %_5_5, i32* align 512 %_5_6, i32* align 512 %_5_7, i32* align 512 %_6_0, i32* align 512 %_6_1, i32* align 512 %_6_2, i32* align 512 %_6_3, i32* align 512 %_6_4, i32* align 512 %_6_5, i32* align 512 %_6_6, i32* align 512 %_6_7, i32* align 512 %_7_0, i32* align 512 %_7_1, i32* align 512 %_7_2, i32* align 512 %_7_3, i32* align 512 %_7_4, i32* align 512 %_7_5, i32* align 512 %_7_6, i32* align 512 %_7_7)
  call void @onebyonecpy_hls.p0a8a8i32.11.12([8 x [8 x i32]]* %2, [8 x i32]* align 512 %_01, [8 x i32]* align 512 %_12, [8 x i32]* align 512 %_23, [8 x i32]* align 512 %_34, [8 x i32]* align 512 %_45, [8 x i32]* align 512 %_56, [8 x i32]* align 512 %_67, [8 x i32]* align 512 %_78)
  ret void
}

declare void @apatb_mm_hw([8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([8 x [8 x i32]]* noalias "orig.arg.no"="0", [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7, [8 x [8 x i32]]* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.0" %_0_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.1" %_0_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.2" %_0_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.3" %_0_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.4" %_0_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.5" %_0_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.6" %_0_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0.7" %_0_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.0" %_1_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.1" %_1_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.2" %_1_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.3" %_1_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.4" %_1_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.5" %_1_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.6" %_1_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1.7" %_1_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.0" %_2_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.1" %_2_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.2" %_2_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.3" %_2_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.4" %_2_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.5" %_2_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.6" %_2_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2.7" %_2_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.0" %_3_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.1" %_3_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.2" %_3_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.3" %_3_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.4" %_3_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.5" %_3_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.6" %_3_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3.7" %_3_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.0" %_4_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.1" %_4_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.2" %_4_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.3" %_4_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.4" %_4_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.5" %_4_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.6" %_4_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4.7" %_4_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.0" %_5_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.1" %_5_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.2" %_5_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.3" %_5_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.4" %_5_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.5" %_5_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.6" %_5_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5.7" %_5_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.0" %_6_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.1" %_6_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.2" %_6_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.3" %_6_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.4" %_6_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.5" %_6_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.6" %_6_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6.7" %_6_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.0" %_7_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.1" %_7_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.2" %_7_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.3" %_7_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.4" %_7_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.5" %_7_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.6" %_7_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7.7" %_7_7, [8 x [8 x i32]]* noalias "orig.arg.no"="4", [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_01, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_12, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.2" %_23, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.3" %_34, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.4" %_45, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.5" %_56, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.6" %_67, [8 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.7" %_78) #4 {
entry:
  call void @onebyonecpy_hls.p0a8a8i32.11.12([8 x [8 x i32]]* %2, [8 x i32]* align 512 %_01, [8 x i32]* align 512 %_12, [8 x i32]* align 512 %_23, [8 x i32]* align 512 %_34, [8 x i32]* align 512 %_45, [8 x i32]* align 512 %_56, [8 x i32]* align 512 %_67, [8 x i32]* align 512 %_78)
  ret void
}

define void @mm_hw_stub_wrapper([8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*, [8 x i32]*) #5 {
entry:
  %80 = alloca [8 x [8 x i32]]
  %81 = alloca [8 x [8 x i32]]
  %82 = alloca [8 x [8 x i32]]
  call void @copy_out([8 x [8 x i32]]* %80, [8 x i32]* %0, [8 x i32]* %1, [8 x i32]* %2, [8 x i32]* %3, [8 x i32]* %4, [8 x i32]* %5, [8 x i32]* %6, [8 x i32]* %7, [8 x [8 x i32]]* %81, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46, i32* %47, i32* %48, i32* %49, i32* %50, i32* %51, i32* %52, i32* %53, i32* %54, i32* %55, i32* %56, i32* %57, i32* %58, i32* %59, i32* %60, i32* %61, i32* %62, i32* %63, i32* %64, i32* %65, i32* %66, i32* %67, i32* %68, i32* %69, i32* %70, i32* %71, [8 x [8 x i32]]* %82, [8 x i32]* %72, [8 x i32]* %73, [8 x i32]* %74, [8 x i32]* %75, [8 x i32]* %76, [8 x i32]* %77, [8 x i32]* %78, [8 x i32]* %79)
  %83 = bitcast [8 x [8 x i32]]* %80 to [8 x i32]*
  %84 = bitcast [8 x [8 x i32]]* %81 to [8 x i32]*
  %85 = bitcast [8 x [8 x i32]]* %82 to [8 x i32]*
  call void @mm_hw_stub([8 x i32]* %83, [8 x i32]* %84, [8 x i32]* %85)
  call void @copy_in([8 x [8 x i32]]* %80, [8 x i32]* %0, [8 x i32]* %1, [8 x i32]* %2, [8 x i32]* %3, [8 x i32]* %4, [8 x i32]* %5, [8 x i32]* %6, [8 x i32]* %7, [8 x [8 x i32]]* %81, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46, i32* %47, i32* %48, i32* %49, i32* %50, i32* %51, i32* %52, i32* %53, i32* %54, i32* %55, i32* %56, i32* %57, i32* %58, i32* %59, i32* %60, i32* %61, i32* %62, i32* %63, i32* %64, i32* %65, i32* %66, i32* %67, i32* %68, i32* %69, i32* %70, i32* %71, [8 x [8 x i32]]* %82, [8 x i32]* %72, [8 x i32]* %73, [8 x i32]* %74, [8 x i32]* %75, [8 x i32]* %76, [8 x i32]* %77, [8 x i32]* %78, [8 x i32]* %79)
  ret void
}

declare void @mm_hw_stub([8 x i32]*, [8 x i32]*, [8 x i32]*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }
attributes #6 = { inaccessiblememonly nounwind "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !19, !89}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [8 x [8 x i32]]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=2"}
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18}
!11 = !{!"0.0", [8 x i32]* null}
!12 = !{!"0.1", [8 x i32]* null}
!13 = !{!"0.2", [8 x i32]* null}
!14 = !{!"0.3", [8 x i32]* null}
!15 = !{!"0.4", [8 x i32]* null}
!16 = !{!"0.5", [8 x i32]* null}
!17 = !{!"0.6", [8 x i32]* null}
!18 = !{!"0.7", [8 x i32]* null}
!19 = !{!20, !22, !24}
!20 = !{!21}
!21 = !{!"1", [8 x [8 x i32]]* null}
!22 = !{!23, !9}
!23 = !{!"array_partition", !"type=Complete", !"dim=1"}
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!25 = !{!"1.0.0", i32* null}
!26 = !{!"1.0.1", i32* null}
!27 = !{!"1.0.2", i32* null}
!28 = !{!"1.0.3", i32* null}
!29 = !{!"1.0.4", i32* null}
!30 = !{!"1.0.5", i32* null}
!31 = !{!"1.0.6", i32* null}
!32 = !{!"1.0.7", i32* null}
!33 = !{!"1.1.0", i32* null}
!34 = !{!"1.1.1", i32* null}
!35 = !{!"1.1.2", i32* null}
!36 = !{!"1.1.3", i32* null}
!37 = !{!"1.1.4", i32* null}
!38 = !{!"1.1.5", i32* null}
!39 = !{!"1.1.6", i32* null}
!40 = !{!"1.1.7", i32* null}
!41 = !{!"1.2.0", i32* null}
!42 = !{!"1.2.1", i32* null}
!43 = !{!"1.2.2", i32* null}
!44 = !{!"1.2.3", i32* null}
!45 = !{!"1.2.4", i32* null}
!46 = !{!"1.2.5", i32* null}
!47 = !{!"1.2.6", i32* null}
!48 = !{!"1.2.7", i32* null}
!49 = !{!"1.3.0", i32* null}
!50 = !{!"1.3.1", i32* null}
!51 = !{!"1.3.2", i32* null}
!52 = !{!"1.3.3", i32* null}
!53 = !{!"1.3.4", i32* null}
!54 = !{!"1.3.5", i32* null}
!55 = !{!"1.3.6", i32* null}
!56 = !{!"1.3.7", i32* null}
!57 = !{!"1.4.0", i32* null}
!58 = !{!"1.4.1", i32* null}
!59 = !{!"1.4.2", i32* null}
!60 = !{!"1.4.3", i32* null}
!61 = !{!"1.4.4", i32* null}
!62 = !{!"1.4.5", i32* null}
!63 = !{!"1.4.6", i32* null}
!64 = !{!"1.4.7", i32* null}
!65 = !{!"1.5.0", i32* null}
!66 = !{!"1.5.1", i32* null}
!67 = !{!"1.5.2", i32* null}
!68 = !{!"1.5.3", i32* null}
!69 = !{!"1.5.4", i32* null}
!70 = !{!"1.5.5", i32* null}
!71 = !{!"1.5.6", i32* null}
!72 = !{!"1.5.7", i32* null}
!73 = !{!"1.6.0", i32* null}
!74 = !{!"1.6.1", i32* null}
!75 = !{!"1.6.2", i32* null}
!76 = !{!"1.6.3", i32* null}
!77 = !{!"1.6.4", i32* null}
!78 = !{!"1.6.5", i32* null}
!79 = !{!"1.6.6", i32* null}
!80 = !{!"1.6.7", i32* null}
!81 = !{!"1.7.0", i32* null}
!82 = !{!"1.7.1", i32* null}
!83 = !{!"1.7.2", i32* null}
!84 = !{!"1.7.3", i32* null}
!85 = !{!"1.7.4", i32* null}
!86 = !{!"1.7.5", i32* null}
!87 = !{!"1.7.6", i32* null}
!88 = !{!"1.7.7", i32* null}
!89 = !{!90, !8, !92}
!90 = !{!91}
!91 = !{!"2", [8 x [8 x i32]]* null}
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100}
!93 = !{!"2.0", [8 x i32]* null}
!94 = !{!"2.1", [8 x i32]* null}
!95 = !{!"2.2", [8 x i32]* null}
!96 = !{!"2.3", [8 x i32]* null}
!97 = !{!"2.4", [8 x i32]* null}
!98 = !{!"2.5", [8 x i32]* null}
!99 = !{!"2.6", [8 x i32]* null}
!100 = !{!"2.7", [8 x i32]* null}
!101 = !DILocation(line: 13, column: 9, scope: !102)
!102 = distinct !DISubprogram(name: "mm", linkageName: "_Z2mmPA8_iS0_S0_", scope: !103, file: !103, line: 12, type: !104, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: false, unit: !111, variables: !4)
!103 = !DIFile(filename: "gemm.cc", directory: "C:\5CUsers\5CCSDL_GUEST.DESKTOP-HHKUDFN\5CDesktop\5C06_LIG\5C23-02\5CHLS\5C2_GEMM")
!104 = !DISubroutineType(types: !105)
!105 = !{null, !106, !106, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !109)
!108 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!109 = !{!110}
!110 = !DISubrange(count: 8)
!111 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !112, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, imports: !113)
!112 = !DIFile(filename: "C:/Users/CSDL_GUEST.DESKTOP-HHKUDFN/Desktop/06_LIG/23-02/HLS/2_GEMM/2_gemm_zcu104/solution1/.autopilot/db\5Cgemm.pp.0.cc", directory: "C:\5CUsers\5CCSDL_GUEST.DESKTOP-HHKUDFN\5CDesktop\5C06_LIG\5C23-02\5CHLS\5C2_GEMM")
!113 = !{!114, !121, !125, !132, !136, !141, !149, !153, !157, !170, !174, !178, !182, !186, !191, !195, !199, !203, !207, !215, !219, !223, !227, !231, !236, !242, !246, !250, !252, !260, !264, !272, !274, !278, !282, !286, !290, !295, !300, !305, !306, !307, !308, !310, !311, !312, !313, !314, !315, !316, !318, !319, !320, !321, !322, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !357, !359, !361, !365, !367, !369, !371, !373, !375, !377, !379, !384, !388, !390, !392, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !419, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !447, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !485, !489, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !515, !519, !523, !525, !527, !529, !533, !537, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !569, !573, !577, !579, !581, !583, !585, !589, !593, !595, !597, !599, !601, !603, !605, !609, !613, !615, !617, !619, !621, !625, !629, !633, !635, !637, !639, !641, !643, !645, !649, !653, !657, !659, !663, !667, !669, !671, !673, !675, !677, !679, !681}
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !116, file: !120, line: 52)
!115 = !DINamespace(name: "std", scope: null)
!116 = !DISubprogram(name: "abs", scope: !117, file: !117, line: 383, type: !118, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2022.2/tps/mingw/8.3.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cstdlib.h", directory: "C:\5CUsers\5CCSDL_GUEST.DESKTOP-HHKUDFN\5CDesktop\5C06_LIG\5C23-02\5CHLS\5C2_GEMM")
!118 = !DISubroutineType(types: !119)
!119 = !{!108, !108}
!120 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2022.2/tps/mingw/8.3.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C8.3.0\5Cinclude\5Cc++\5Cbits/std_abs.h", directory: "C:\5CUsers\5CCSDL_GUEST.DESKTOP-HHKUDFN\5CDesktop\5C06_LIG\5C23-02\5CHLS\5C2_GEMM")
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !122, file: !124, line: 127)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !117, line: 62, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_div_t", file: !117, line: 59, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS6_div_t")
!124 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2022.2/tps/mingw/8.3.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C8.3.0\5Cinclude\5Cc++\5Ccstdlib", directory: "C:\5CUsers\5CCSDL_GUEST.DESKTOP-HHKUDFN\5CDesktop\5C06_LIG\5C23-02\5CHLS\5C2_GEMM")
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !126, file: !124, line: 128)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !117, line: 67, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ldiv_t", file: !117, line: 64, size: 128, flags: DIFlagTypePassByValue, elements: !128, identifier: "_ZTS7_ldiv_t")
!128 = !{!129, !131}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !127, file: !117, line: 65, baseType: !130, size: 64)
!130 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !127, file: !117, line: 66, baseType: !130, size: 64, offset: 64)
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !133, file: !124, line: 130)
!133 = !DISubprogram(name: "abort", scope: !117, file: !117, line: 374, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!134 = !DISubroutineType(types: !135)
!135 = !{null}
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !137, file: !124, line: 134)
!137 = !DISubprogram(name: "atexit", scope: !117, file: !117, line: 394, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!108, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !142, file: !124, line: 140)
!142 = !DISubprogram(name: "atof", scope: !117, file: !117, line: 397, type: !143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !146}
!145 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !150, file: !124, line: 141)
!150 = !DISubprogram(name: "atoi", scope: !117, file: !117, line: 400, type: !151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DISubroutineType(types: !152)
!152 = !{!108, !146}
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !154, file: !124, line: 142)
!154 = !DISubprogram(name: "atol", scope: !117, file: !117, line: 402, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!130, !146}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !158, file: !124, line: 143)
!158 = !DISubprogram(name: "bsearch", scope: !117, file: !117, line: 406, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !162, !162, !164, !164, !167}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 35, baseType: !166)
!165 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2022.2/tps/mingw/8.3.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Ccrtdefs.h", directory: "C:\5CUsers\5CCSDL_GUEST.DESKTOP-HHKUDFN\5CDesktop\5C06_LIG\5C23-02\5CHLS\5C2_GEMM")
!166 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!108, !162, !162}
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !171, file: !124, line: 144)
!171 = !DISubprogram(name: "calloc", scope: !117, file: !117, line: 501, type: !172, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!172 = !DISubroutineType(types: !173)
!173 = !{!161, !164, !164}
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !175, file: !124, line: 145)
!175 = !DISubprogram(name: "div", scope: !117, file: !117, line: 412, type: !176, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!176 = !DISubroutineType(types: !177)
!177 = !{!122, !108, !108}
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !179, file: !124, line: 146)
!179 = !DISubprogram(name: "exit", scope: !117, file: !117, line: 360, type: !180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !108}
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !183, file: !124, line: 147)
!183 = !DISubprogram(name: "free", scope: !117, file: !117, line: 502, type: !184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !161}
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !187, file: !124, line: 148)
!187 = !DISubprogram(name: "getenv", scope: !117, file: !117, line: 413, type: !188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !146}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !192, file: !124, line: 149)
!192 = !DISubprogram(name: "labs", scope: !117, file: !117, line: 384, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!130, !130}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !196, file: !124, line: 150)
!196 = !DISubprogram(name: "ldiv", scope: !117, file: !117, line: 423, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{!126, !130, !130}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !200, file: !124, line: 151)
!200 = !DISubprogram(name: "malloc", scope: !117, file: !117, line: 503, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!161, !164}
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !204, file: !124, line: 153)
!204 = !DISubprogram(name: "mblen", scope: !117, file: !117, line: 425, type: !205, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DISubroutineType(types: !206)
!206 = !{!108, !146, !164}
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !208, file: !124, line: 154)
!208 = !DISubprogram(name: "mbstowcs", scope: !117, file: !117, line: 433, type: !209, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DISubroutineType(types: !210)
!210 = !{!164, !211, !214, !164}
!211 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!214 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !216, file: !124, line: 155)
!216 = !DISubprogram(name: "mbtowc", scope: !117, file: !117, line: 431, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!108, !211, !214, !164}
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !220, file: !124, line: 157)
!220 = !DISubprogram(name: "qsort", scope: !117, file: !117, line: 407, type: !221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !161, !164, !164, !167}
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !224, file: !124, line: 163)
!224 = !DISubprogram(name: "rand", scope: !117, file: !117, line: 436, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!108}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !228, file: !124, line: 164)
!228 = !DISubprogram(name: "realloc", scope: !117, file: !117, line: 504, type: !229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!229 = !DISubroutineType(types: !230)
!230 = !{!161, !161, !164}
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !232, file: !124, line: 165)
!232 = !DISubprogram(name: "srand", scope: !117, file: !117, line: 438, type: !233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !235}
!235 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !237, file: !124, line: 166)
!237 = !DISubprogram(name: "strtod", linkageName: "_ZL6strtodPKcPPc", scope: !117, file: !117, line: 450, type: !238, isLocal: true, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{!145, !214, !240}
!240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !243, file: !124, line: 167)
!243 = !DISubprogram(name: "strtol", scope: !117, file: !117, line: 485, type: !244, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DISubroutineType(types: !245)
!245 = !{!130, !214, !240, !108}
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !247, file: !124, line: 168)
!247 = !DISubprogram(name: "strtoul", scope: !117, file: !117, line: 487, type: !248, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{!166, !214, !240, !108}
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !251, file: !124, line: 169)
!251 = !DISubprogram(name: "system", scope: !117, file: !117, line: 491, type: !151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !253, file: !124, line: 171)
!253 = !DISubprogram(name: "wcstombs", scope: !117, file: !117, line: 496, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{!164, !256, !257, !164}
!256 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !190)
!257 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !261, file: !124, line: 172)
!261 = !DISubprogram(name: "wctomb", scope: !117, file: !117, line: 494, type: !262, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!262 = !DISubroutineType(types: !263)
!263 = !{!108, !190, !213}
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !265, entity: !266, file: !124, line: 200)
!265 = !DINamespace(name: "__gnu_cxx", scope: null)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !117, line: 699, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 699, size: 128, flags: DIFlagTypePassByValue, elements: !268, identifier: "_ZTS7lldiv_t")
!268 = !{!269, !271}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !267, file: !117, line: 699, baseType: !270, size: 64)
!270 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !267, file: !117, line: 699, baseType: !270, size: 64, offset: 64)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !265, entity: !273, file: !124, line: 206)
!273 = !DISubprogram(name: "_Exit", scope: !117, file: !117, line: 365, type: !180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !265, entity: !275, file: !124, line: 210)
!275 = !DISubprogram(name: "llabs", scope: !117, file: !117, line: 703, type: !276, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!276 = !DISubroutineType(types: !277)
!277 = !{!270, !270}
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !265, entity: !279, file: !124, line: 216)
!279 = !DISubprogram(name: "lldiv", scope: !117, file: !117, line: 701, type: !280, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!280 = !DISubroutineType(types: !281)
!281 = !{!266, !270, !270}
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !265, entity: !283, file: !124, line: 227)
!283 = !DISubprogram(name: "atoll", scope: !117, file: !117, line: 712, type: !284, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DISubroutineType(types: !285)
!285 = !{!270, !146}
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !265, entity: !287, file: !124, line: 228)
!287 = !DISubprogram(name: "strtoll", scope: !117, file: !117, line: 708, type: !288, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DISubroutineType(types: !289)
!289 = !{!270, !214, !240, !108}
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !265, entity: !291, file: !124, line: 229)
!291 = !DISubprogram(name: "strtoull", scope: !117, file: !117, line: 709, type: !292, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !214, !240, !108}
!294 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !265, entity: !296, file: !124, line: 231)
!296 = !DISubprogram(name: "strtof", linkageName: "_ZL6strtofPKcPPc", scope: !117, file: !117, line: 457, type: !297, isLocal: true, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DISubroutineType(types: !298)
!298 = !{!299, !214, !240}
!299 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !265, entity: !301, file: !124, line: 232)
!301 = !DISubprogram(name: "strtold", scope: !117, file: !117, line: 468, type: !302, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !214, !240}
!304 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !266, file: !124, line: 240)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !273, file: !124, line: 242)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !275, file: !124, line: 244)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !309, file: !124, line: 245)
!309 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !265, file: !124, line: 213, type: !280, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !279, file: !124, line: 246)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !283, file: !124, line: 248)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !296, file: !124, line: 249)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !287, file: !124, line: 250)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !291, file: !124, line: 251)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !301, file: !124, line: 252)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !133, file: !317, line: 38)
!317 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2022.2/tps/mingw/8.3.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C8.3.0\5Cinclude\5Cc++\5Cstdlib.h", directory: "C:\5CUsers\5CCSDL_GUEST.DESKTOP-HHKUDFN\5CDesktop\5C06_LIG\5C23-02\5CHLS\5C2_GEMM")
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !137, file: !317, line: 39)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !179, file: !317, line: 40)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !122, file: !317, line: 51)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !126, file: !317, line: 52)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !323, file: !317, line: 54)
!323 = !DISubprogram(name: "abs", linkageName: "_ZSt3absn", scope: !115, file: !120, line: 84, type: !324, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !326}
!326 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !142, file: !317, line: 55)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !150, file: !317, line: 56)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !154, file: !317, line: 57)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !158, file: !317, line: 58)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !171, file: !317, line: 59)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !309, file: !317, line: 60)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !183, file: !317, line: 61)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !187, file: !317, line: 62)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !192, file: !317, line: 63)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !196, file: !317, line: 64)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !200, file: !317, line: 65)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !204, file: !317, line: 67)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !208, file: !317, line: 68)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !216, file: !317, line: 69)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !220, file: !317, line: 71)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !224, file: !317, line: 72)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !228, file: !317, line: 73)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !232, file: !317, line: 74)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !237, file: !317, line: 75)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !243, file: !317, line: 76)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !247, file: !317, line: 77)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !251, file: !317, line: 78)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !253, file: !317, line: 80)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !261, file: !317, line: 81)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !352, file: !356, line: 83)
!352 = !DISubprogram(name: "acos", scope: !353, file: !353, line: 190, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!353 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2022.2/tps/mingw/8.3.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cmath.h", directory: "C:\5CUsers\5CCSDL_GUEST.DESKTOP-HHKUDFN\5CDesktop\5C06_LIG\5C23-02\5CHLS\5C2_GEMM")
!354 = !DISubroutineType(types: !355)
!355 = !{!145, !145}
!356 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2022.2/tps/mingw/8.3.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C8.3.0\5Cinclude\5Cc++\5Ccmath", directory: "C:\5CUsers\5CCSDL_GUEST.DESKTOP-HHKUDFN\5CDesktop\5C06_LIG\5C23-02\5CHLS\5C2_GEMM")
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !358, file: !356, line: 102)
!358 = !DISubprogram(name: "asin", scope: !353, file: !353, line: 189, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !360, file: !356, line: 121)
!360 = !DISubprogram(name: "atan", scope: !353, file: !353, line: 191, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !362, file: !356, line: 140)
!362 = !DISubprogram(name: "atan2", scope: !353, file: !353, line: 192, type: !363, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!363 = !DISubroutineType(types: !364)
!364 = !{!145, !145, !145}
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !366, file: !356, line: 161)
!366 = !DISubprogram(name: "ceil", scope: !353, file: !353, line: 198, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !368, file: !356, line: 180)
!368 = !DISubprogram(name: "cos", scope: !353, file: !353, line: 184, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !370, file: !356, line: 199)
!370 = !DISubprogram(name: "cosh", scope: !353, file: !353, line: 187, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !372, file: !356, line: 218)
!372 = !DISubprogram(name: "exp", scope: !353, file: !353, line: 193, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !374, file: !356, line: 237)
!374 = !DISubprogram(name: "fabs", scope: !353, file: !353, line: 204, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !376, file: !356, line: 256)
!376 = !DISubprogram(name: "floor", scope: !353, file: !353, line: 199, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !378, file: !356, line: 275)
!378 = !DISubprogram(name: "fmod", scope: !353, file: !353, line: 246, type: !363, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !380, file: !356, line: 296)
!380 = !DISubprogram(name: "frexp", scope: !353, file: !353, line: 244, type: !381, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!381 = !DISubroutineType(types: !382)
!382 = !{!145, !145, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !385, file: !356, line: 315)
!385 = !DISubprogram(name: "ldexp", scope: !353, file: !353, line: 243, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{!145, !145, !108}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !389, file: !356, line: 334)
!389 = !DISubprogram(name: "log", scope: !353, file: !353, line: 194, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !391, file: !356, line: 353)
!391 = !DISubprogram(name: "log10", scope: !353, file: !353, line: 195, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !393, file: !356, line: 372)
!393 = !DISubprogram(name: "modf", scope: !353, file: !353, line: 245, type: !394, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DISubroutineType(types: !395)
!395 = !{!145, !145, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !398, file: !356, line: 384)
!398 = !DISubprogram(name: "pow", scope: !353, file: !353, line: 196, type: !363, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !400, file: !356, line: 421)
!400 = !DISubprogram(name: "sin", scope: !353, file: !353, line: 183, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !402, file: !356, line: 440)
!402 = !DISubprogram(name: "sinh", scope: !353, file: !353, line: 186, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !404, file: !356, line: 459)
!404 = !DISubprogram(name: "sqrt", scope: !353, file: !353, line: 197, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !406, file: !356, line: 478)
!406 = !DISubprogram(name: "tan", scope: !353, file: !353, line: 185, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !408, file: !356, line: 497)
!408 = !DISubprogram(name: "tanh", scope: !353, file: !353, line: 188, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !410, file: !356, line: 1065)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !353, line: 373, baseType: !145)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !412, file: !356, line: 1066)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !353, line: 372, baseType: !299)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !414, file: !356, line: 1069)
!414 = !DISubprogram(name: "acosh", scope: !353, file: !353, line: 705, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !416, file: !356, line: 1070)
!416 = !DISubprogram(name: "acoshf", scope: !353, file: !353, line: 706, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!417 = !DISubroutineType(types: !418)
!418 = !{!299, !299}
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !420, file: !356, line: 1071)
!420 = !DISubprogram(name: "acoshl", scope: !353, file: !353, line: 707, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!421 = !DISubroutineType(types: !422)
!422 = !{!304, !304}
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !424, file: !356, line: 1073)
!424 = !DISubprogram(name: "asinh", scope: !353, file: !353, line: 710, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !426, file: !356, line: 1074)
!426 = !DISubprogram(name: "asinhf", scope: !353, file: !353, line: 711, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !428, file: !356, line: 1075)
!428 = !DISubprogram(name: "asinhl", scope: !353, file: !353, line: 712, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !430, file: !356, line: 1077)
!430 = !DISubprogram(name: "atanh", scope: !353, file: !353, line: 715, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !432, file: !356, line: 1078)
!432 = !DISubprogram(name: "atanhf", scope: !353, file: !353, line: 716, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !434, file: !356, line: 1079)
!434 = !DISubprogram(name: "atanhl", scope: !353, file: !353, line: 717, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !436, file: !356, line: 1081)
!436 = !DISubprogram(name: "cbrt", scope: !353, file: !353, line: 877, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !438, file: !356, line: 1082)
!438 = !DISubprogram(name: "cbrtf", scope: !353, file: !353, line: 878, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !440, file: !356, line: 1083)
!440 = !DISubprogram(name: "cbrtl", scope: !353, file: !353, line: 879, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !442, file: !356, line: 1085)
!442 = !DISubprogram(name: "copysign", scope: !353, file: !353, line: 1063, type: !363, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !444, file: !356, line: 1086)
!444 = !DISubprogram(name: "copysignf", scope: !353, file: !353, line: 1064, type: !445, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!445 = !DISubroutineType(types: !446)
!446 = !{!299, !299, !299}
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !448, file: !356, line: 1087)
!448 = !DISubprogram(name: "copysignl", scope: !353, file: !353, line: 1065, type: !449, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!449 = !DISubroutineType(types: !450)
!450 = !{!304, !304, !304}
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !452, file: !356, line: 1089)
!452 = !DISubprogram(name: "erf", scope: !353, file: !353, line: 901, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !454, file: !356, line: 1090)
!454 = !DISubprogram(name: "erff", scope: !353, file: !353, line: 902, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !456, file: !356, line: 1091)
!456 = !DISubprogram(name: "erfl", scope: !353, file: !353, line: 903, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !458, file: !356, line: 1093)
!458 = !DISubprogram(name: "erfc", scope: !353, file: !353, line: 906, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !460, file: !356, line: 1094)
!460 = !DISubprogram(name: "erfcf", scope: !353, file: !353, line: 907, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !462, file: !356, line: 1095)
!462 = !DISubprogram(name: "erfcl", scope: !353, file: !353, line: 908, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !464, file: !356, line: 1097)
!464 = !DISubprogram(name: "exp2", scope: !353, file: !353, line: 728, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !466, file: !356, line: 1098)
!466 = !DISubprogram(name: "exp2f", scope: !353, file: !353, line: 729, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !468, file: !356, line: 1099)
!468 = !DISubprogram(name: "exp2l", scope: !353, file: !353, line: 730, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !470, file: !356, line: 1101)
!470 = !DISubprogram(name: "expm1", scope: !353, file: !353, line: 734, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !472, file: !356, line: 1102)
!472 = !DISubprogram(name: "expm1f", scope: !353, file: !353, line: 735, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !474, file: !356, line: 1103)
!474 = !DISubprogram(name: "expm1l", scope: !353, file: !353, line: 736, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !476, file: !356, line: 1105)
!476 = !DISubprogram(name: "fdim", scope: !353, file: !353, line: 1109, type: !363, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !478, file: !356, line: 1106)
!478 = !DISubprogram(name: "fdimf", scope: !353, file: !353, line: 1110, type: !445, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !480, file: !356, line: 1107)
!480 = !DISubprogram(name: "fdiml", scope: !353, file: !353, line: 1111, type: !449, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !482, file: !356, line: 1109)
!482 = !DISubprogram(name: "fma", scope: !353, file: !353, line: 1130, type: !483, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DISubroutineType(types: !484)
!484 = !{!145, !145, !145, !145}
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !486, file: !356, line: 1110)
!486 = !DISubprogram(name: "fmaf", scope: !353, file: !353, line: 1131, type: !487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!487 = !DISubroutineType(types: !488)
!488 = !{!299, !299, !299, !299}
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !490, file: !356, line: 1111)
!490 = !DISubprogram(name: "fmal", scope: !353, file: !353, line: 1132, type: !491, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!491 = !DISubroutineType(types: !492)
!492 = !{!304, !304, !304, !304}
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !494, file: !356, line: 1113)
!494 = !DISubprogram(name: "fmax", scope: !353, file: !353, line: 1119, type: !363, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !496, file: !356, line: 1114)
!496 = !DISubprogram(name: "fmaxf", scope: !353, file: !353, line: 1120, type: !445, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !498, file: !356, line: 1115)
!498 = !DISubprogram(name: "fmaxl", scope: !353, file: !353, line: 1121, type: !449, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !500, file: !356, line: 1117)
!500 = !DISubprogram(name: "fmin", scope: !353, file: !353, line: 1124, type: !363, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !502, file: !356, line: 1118)
!502 = !DISubprogram(name: "fminf", scope: !353, file: !353, line: 1125, type: !445, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !504, file: !356, line: 1119)
!504 = !DISubprogram(name: "fminl", scope: !353, file: !353, line: 1126, type: !449, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !506, file: !356, line: 1121)
!506 = !DISubprogram(name: "hypot", scope: !353, file: !353, line: 882, type: !363, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !508, file: !356, line: 1122)
!508 = !DISubprogram(name: "hypotf", scope: !353, file: !353, line: 883, type: !445, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !510, file: !356, line: 1123)
!510 = !DISubprogram(name: "hypotl", scope: !353, file: !353, line: 887, type: !449, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !512, file: !356, line: 1125)
!512 = !DISubprogram(name: "ilogb", scope: !353, file: !353, line: 748, type: !513, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!513 = !DISubroutineType(types: !514)
!514 = !{!108, !145}
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !516, file: !356, line: 1126)
!516 = !DISubprogram(name: "ilogbf", scope: !353, file: !353, line: 749, type: !517, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!517 = !DISubroutineType(types: !518)
!518 = !{!108, !299}
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !520, file: !356, line: 1127)
!520 = !DISubprogram(name: "ilogbl", scope: !353, file: !353, line: 750, type: !521, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!521 = !DISubroutineType(types: !522)
!522 = !{!108, !304}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !524, file: !356, line: 1129)
!524 = !DISubprogram(name: "lgamma", scope: !353, file: !353, line: 911, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !526, file: !356, line: 1130)
!526 = !DISubprogram(name: "lgammaf", scope: !353, file: !353, line: 912, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !528, file: !356, line: 1131)
!528 = !DISubprogram(name: "lgammal", scope: !353, file: !353, line: 913, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !530, file: !356, line: 1134)
!530 = !DISubprogram(name: "llrint", scope: !353, file: !353, line: 946, type: !531, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!531 = !DISubroutineType(types: !532)
!532 = !{!270, !145}
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !534, file: !356, line: 1135)
!534 = !DISubprogram(name: "llrintf", scope: !353, file: !353, line: 947, type: !535, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!535 = !DISubroutineType(types: !536)
!536 = !{!270, !299}
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !538, file: !356, line: 1136)
!538 = !DISubprogram(name: "llrintl", scope: !353, file: !353, line: 948, type: !539, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!539 = !DISubroutineType(types: !540)
!540 = !{!270, !304}
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !542, file: !356, line: 1138)
!542 = !DISubprogram(name: "llround", scope: !353, file: !353, line: 1038, type: !531, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !544, file: !356, line: 1139)
!544 = !DISubprogram(name: "llroundf", scope: !353, file: !353, line: 1039, type: !535, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !546, file: !356, line: 1140)
!546 = !DISubprogram(name: "llroundl", scope: !353, file: !353, line: 1040, type: !539, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !548, file: !356, line: 1143)
!548 = !DISubprogram(name: "log1p", scope: !353, file: !353, line: 768, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !550, file: !356, line: 1144)
!550 = !DISubprogram(name: "log1pf", scope: !353, file: !353, line: 769, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !552, file: !356, line: 1145)
!552 = !DISubprogram(name: "log1pl", scope: !353, file: !353, line: 770, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !554, file: !356, line: 1147)
!554 = !DISubprogram(name: "log2", scope: !353, file: !353, line: 773, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !556, file: !356, line: 1148)
!556 = !DISubprogram(name: "log2f", scope: !353, file: !353, line: 774, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !558, file: !356, line: 1149)
!558 = !DISubprogram(name: "log2l", scope: !353, file: !353, line: 775, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !560, file: !356, line: 1151)
!560 = !DISubprogram(name: "logb", scope: !353, file: !353, line: 778, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !562, file: !356, line: 1152)
!562 = !DISubprogram(name: "logbf", scope: !353, file: !353, line: 779, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !564, file: !356, line: 1153)
!564 = !DISubprogram(name: "logbl", scope: !353, file: !353, line: 780, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !566, file: !356, line: 1155)
!566 = !DISubprogram(name: "lrint", scope: !353, file: !353, line: 942, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!567 = !DISubroutineType(types: !568)
!568 = !{!130, !145}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !570, file: !356, line: 1156)
!570 = !DISubprogram(name: "lrintf", scope: !353, file: !353, line: 943, type: !571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!571 = !DISubroutineType(types: !572)
!572 = !{!130, !299}
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !574, file: !356, line: 1157)
!574 = !DISubprogram(name: "lrintl", scope: !353, file: !353, line: 944, type: !575, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!575 = !DISubroutineType(types: !576)
!576 = !{!130, !304}
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !578, file: !356, line: 1159)
!578 = !DISubprogram(name: "lround", scope: !353, file: !353, line: 1035, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !580, file: !356, line: 1160)
!580 = !DISubprogram(name: "lroundf", scope: !353, file: !353, line: 1036, type: !571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !582, file: !356, line: 1161)
!582 = !DISubprogram(name: "lroundl", scope: !353, file: !353, line: 1037, type: !575, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !584, file: !356, line: 1163)
!584 = !DISubprogram(name: "nan", scope: !353, file: !353, line: 1087, type: !143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !586, file: !356, line: 1164)
!586 = !DISubprogram(name: "nanf", scope: !353, file: !353, line: 1088, type: !587, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{!299, !146}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !590, file: !356, line: 1165)
!590 = !DISubprogram(name: "nanl", scope: !353, file: !353, line: 1089, type: !591, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!591 = !DISubroutineType(types: !592)
!592 = !{!304, !146}
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !594, file: !356, line: 1167)
!594 = !DISubprogram(name: "nearbyint", scope: !353, file: !353, line: 931, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !596, file: !356, line: 1168)
!596 = !DISubprogram(name: "nearbyintf", scope: !353, file: !353, line: 932, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !598, file: !356, line: 1169)
!598 = !DISubprogram(name: "nearbyintl", scope: !353, file: !353, line: 933, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !600, file: !356, line: 1171)
!600 = !DISubprogram(name: "nextafter", scope: !353, file: !353, line: 1098, type: !363, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !602, file: !356, line: 1172)
!602 = !DISubprogram(name: "nextafterf", scope: !353, file: !353, line: 1099, type: !445, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !604, file: !356, line: 1173)
!604 = !DISubprogram(name: "nextafterl", scope: !353, file: !353, line: 1100, type: !449, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !606, file: !356, line: 1175)
!606 = !DISubprogram(name: "nexttoward", scope: !353, file: !353, line: 1103, type: !607, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!607 = !DISubroutineType(types: !608)
!608 = !{!145, !145, !304}
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !610, file: !356, line: 1176)
!610 = !DISubprogram(name: "nexttowardf", scope: !353, file: !353, line: 1104, type: !611, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!611 = !DISubroutineType(types: !612)
!612 = !{!299, !299, !304}
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !614, file: !356, line: 1177)
!614 = !DISubprogram(name: "nexttowardl", scope: !353, file: !353, line: 1105, type: !449, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !616, file: !356, line: 1179)
!616 = !DISubprogram(name: "remainder", scope: !353, file: !353, line: 1053, type: !363, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !618, file: !356, line: 1180)
!618 = !DISubprogram(name: "remainderf", scope: !353, file: !353, line: 1054, type: !445, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !620, file: !356, line: 1181)
!620 = !DISubprogram(name: "remainderl", scope: !353, file: !353, line: 1055, type: !449, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !622, file: !356, line: 1183)
!622 = !DISubprogram(name: "remquo", scope: !353, file: !353, line: 1058, type: !623, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!623 = !DISubroutineType(types: !624)
!624 = !{!145, !145, !145, !383}
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !626, file: !356, line: 1184)
!626 = !DISubprogram(name: "remquof", scope: !353, file: !353, line: 1059, type: !627, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!627 = !DISubroutineType(types: !628)
!628 = !{!299, !299, !299, !383}
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !630, file: !356, line: 1185)
!630 = !DISubprogram(name: "remquol", scope: !353, file: !353, line: 1060, type: !631, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!631 = !DISubroutineType(types: !632)
!632 = !{!304, !304, !304, !383}
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !634, file: !356, line: 1187)
!634 = !DISubprogram(name: "rint", scope: !353, file: !353, line: 937, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !636, file: !356, line: 1188)
!636 = !DISubprogram(name: "rintf", scope: !353, file: !353, line: 938, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !638, file: !356, line: 1189)
!638 = !DISubprogram(name: "rintl", scope: !353, file: !353, line: 939, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !640, file: !356, line: 1191)
!640 = !DISubprogram(name: "round", scope: !353, file: !353, line: 1030, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !642, file: !356, line: 1192)
!642 = !DISubprogram(name: "roundf", scope: !353, file: !353, line: 1031, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !644, file: !356, line: 1193)
!644 = !DISubprogram(name: "roundl", scope: !353, file: !353, line: 1032, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !646, file: !356, line: 1195)
!646 = !DISubprogram(name: "scalbln", scope: !353, file: !353, line: 871, type: !647, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!647 = !DISubroutineType(types: !648)
!648 = !{!145, !145, !130}
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !650, file: !356, line: 1196)
!650 = !DISubprogram(name: "scalblnf", scope: !353, file: !353, line: 872, type: !651, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!651 = !DISubroutineType(types: !652)
!652 = !{!299, !299, !130}
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !654, file: !356, line: 1197)
!654 = !DISubprogram(name: "scalblnl", scope: !353, file: !353, line: 873, type: !655, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!655 = !DISubroutineType(types: !656)
!656 = !{!304, !304, !130}
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !658, file: !356, line: 1199)
!658 = !DISubprogram(name: "scalbn", scope: !353, file: !353, line: 867, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !660, file: !356, line: 1200)
!660 = !DISubprogram(name: "scalbnf", scope: !353, file: !353, line: 868, type: !661, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!661 = !DISubroutineType(types: !662)
!662 = !{!299, !299, !108}
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !664, file: !356, line: 1201)
!664 = !DISubprogram(name: "scalbnl", scope: !353, file: !353, line: 869, type: !665, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!665 = !DISubroutineType(types: !666)
!666 = !{!304, !304, !108}
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !668, file: !356, line: 1203)
!668 = !DISubprogram(name: "tgamma", scope: !353, file: !353, line: 918, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !670, file: !356, line: 1204)
!670 = !DISubprogram(name: "tgammaf", scope: !353, file: !353, line: 919, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !672, file: !356, line: 1205)
!672 = !DISubprogram(name: "tgammal", scope: !353, file: !353, line: 920, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !674, file: !356, line: 1207)
!674 = !DISubprogram(name: "trunc", scope: !353, file: !353, line: 1044, type: !354, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !676, file: !356, line: 1208)
!676 = !DISubprogram(name: "truncf", scope: !353, file: !353, line: 1045, type: !417, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !115, entity: !678, file: !356, line: 1209)
!678 = !DISubprogram(name: "truncl", scope: !353, file: !353, line: 1046, type: !421, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !323, file: !680, line: 38)
!680 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2022.2/tps/mingw/8.3.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C8.3.0\5Cinclude\5Cc++\5Cmath.h", directory: "C:\5CUsers\5CCSDL_GUEST.DESKTOP-HHKUDFN\5CDesktop\5C06_LIG\5C23-02\5CHLS\5C2_GEMM")
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !111, entity: !682, file: !680, line: 54)
!682 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !115, file: !356, line: 380, type: !683, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!683 = !DISubroutineType(types: !684)
!684 = !{!304, !304, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!686 = !DILocation(line: 15, column: 9, scope: !102)
