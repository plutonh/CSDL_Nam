; ModuleID = 'C:/Users/CSDL_GUEST.DESKTOP-HHKUDFN/Desktop/06_LIG/23-02/HLS/6_GEMM_outer/6_outer_zcu104/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_gemm_ir(float* noalias nocapture nonnull readonly %a, float* noalias nocapture nonnull readonly %b, float* noalias nocapture nonnull %c) local_unnamed_addr #0 {
entry:
  %a_copy = alloca [64 x float], align 512
  %b_copy = alloca [64 x float], align 512
  %c_copy = alloca [64 x float], align 512
  %0 = bitcast float* %a to [64 x float]*
  %1 = bitcast float* %b to [64 x float]*
  %2 = bitcast float* %c to [64 x float]*
  call fastcc void @copy_in([64 x float]* nonnull %0, [64 x float]* nonnull align 512 %a_copy, [64 x float]* nonnull %1, [64 x float]* nonnull align 512 %b_copy, [64 x float]* nonnull %2, [64 x float]* nonnull align 512 %c_copy)
  %3 = getelementptr inbounds [64 x float], [64 x float]* %a_copy, i32 0, i32 0
  %4 = getelementptr inbounds [64 x float], [64 x float]* %b_copy, i32 0, i32 0
  %5 = getelementptr inbounds [64 x float], [64 x float]* %c_copy, i32 0, i32 0
  call void @apatb_gemm_hw(float* %3, float* %4, float* %5)
  call void @copy_back([64 x float]* %0, [64 x float]* %a_copy, [64 x float]* %1, [64 x float]* %b_copy, [64 x float]* %2, [64 x float]* %c_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([64 x float]* noalias readonly, [64 x float]* noalias align 512, [64 x float]* noalias readonly, [64 x float]* noalias align 512, [64 x float]* noalias readonly, [64 x float]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* align 512 %1, [64 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* align 512 %3, [64 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* align 512 %5, [64 x float]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* noalias align 512, [64 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [64 x float]* %0, null
  %3 = icmp eq [64 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [64 x float], [64 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [64 x float], [64 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([64 x float]* noalias, [64 x float]* noalias readonly align 512, [64 x float]* noalias, [64 x float]* noalias readonly align 512, [64 x float]* noalias, [64 x float]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* %0, [64 x float]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* %2, [64 x float]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* %4, [64 x float]* align 512 %5)
  ret void
}

declare void @apatb_gemm_hw(float*, float*, float*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([64 x float]* noalias, [64 x float]* noalias readonly align 512, [64 x float]* noalias, [64 x float]* noalias readonly align 512, [64 x float]* noalias, [64 x float]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64f32([64 x float]* %4, [64 x float]* align 512 %5)
  ret void
}

define void @gemm_hw_stub_wrapper(float*, float*, float*) #4 {
entry:
  %3 = bitcast float* %0 to [64 x float]*
  %4 = bitcast float* %1 to [64 x float]*
  %5 = bitcast float* %2 to [64 x float]*
  call void @copy_out([64 x float]* null, [64 x float]* %3, [64 x float]* null, [64 x float]* %4, [64 x float]* null, [64 x float]* %5)
  %6 = bitcast [64 x float]* %3 to float*
  %7 = bitcast [64 x float]* %4 to float*
  %8 = bitcast [64 x float]* %5 to float*
  call void @gemm_hw_stub(float* %6, float* %7, float* %8)
  call void @copy_in([64 x float]* null, [64 x float]* %3, [64 x float]* null, [64 x float]* %4, [64 x float]* null, [64 x float]* %5)
  ret void
}

declare void @gemm_hw_stub(float*, float*, float*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
