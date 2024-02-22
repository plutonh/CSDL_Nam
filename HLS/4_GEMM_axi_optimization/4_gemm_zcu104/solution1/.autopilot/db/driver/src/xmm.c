// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmm.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMm_CfgInitialize(XMm *InstancePtr, XMm_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMm_Start(XMm *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMm_IsDone(XMm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMm_IsIdle(XMm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMm_IsReady(XMm *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMm_EnableAutoRestart(XMm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XMm_DisableAutoRestart(XMm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XMm_Set_A(XMm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_A_DATA, (u32)(Data));
    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XMm_Get_A(XMm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_A_DATA);
    Data += (u64)XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XMm_Set_B(XMm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_B_DATA, (u32)(Data));
    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_B_DATA + 4, (u32)(Data >> 32));
}

u64 XMm_Get_B(XMm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_B_DATA);
    Data += (u64)XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_B_DATA + 4) << 32;
    return Data;
}

void XMm_Set_AB(XMm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_AB_DATA, (u32)(Data));
    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_AB_DATA + 4, (u32)(Data >> 32));
}

u64 XMm_Get_AB(XMm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_AB_DATA);
    Data += (u64)XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_AB_DATA + 4) << 32;
    return Data;
}

void XMm_InterruptGlobalEnable(XMm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_GIE, 1);
}

void XMm_InterruptGlobalDisable(XMm *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_GIE, 0);
}

void XMm_InterruptEnable(XMm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_IER);
    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XMm_InterruptDisable(XMm *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_IER);
    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XMm_InterruptClear(XMm *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMm_WriteReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XMm_InterruptGetEnabled(XMm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_IER);
}

u32 XMm_InterruptGetStatus(XMm *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMm_ReadReg(InstancePtr->Control_bus_BaseAddress, XMM_CONTROL_BUS_ADDR_ISR);
}

