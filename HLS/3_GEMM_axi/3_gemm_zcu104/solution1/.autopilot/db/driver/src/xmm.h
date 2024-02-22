// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMM_H
#define XMM_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmm_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_bus_BaseAddress;
} XMm_Config;
#endif

typedef struct {
    u64 Control_bus_BaseAddress;
    u32 IsReady;
} XMm;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMm_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMm_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMm_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMm_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMm_Initialize(XMm *InstancePtr, u16 DeviceId);
XMm_Config* XMm_LookupConfig(u16 DeviceId);
int XMm_CfgInitialize(XMm *InstancePtr, XMm_Config *ConfigPtr);
#else
int XMm_Initialize(XMm *InstancePtr, const char* InstanceName);
int XMm_Release(XMm *InstancePtr);
#endif

void XMm_Start(XMm *InstancePtr);
u32 XMm_IsDone(XMm *InstancePtr);
u32 XMm_IsIdle(XMm *InstancePtr);
u32 XMm_IsReady(XMm *InstancePtr);
void XMm_EnableAutoRestart(XMm *InstancePtr);
void XMm_DisableAutoRestart(XMm *InstancePtr);

void XMm_Set_A(XMm *InstancePtr, u64 Data);
u64 XMm_Get_A(XMm *InstancePtr);
void XMm_Set_B(XMm *InstancePtr, u64 Data);
u64 XMm_Get_B(XMm *InstancePtr);
void XMm_Set_AB(XMm *InstancePtr, u64 Data);
u64 XMm_Get_AB(XMm *InstancePtr);

void XMm_InterruptGlobalEnable(XMm *InstancePtr);
void XMm_InterruptGlobalDisable(XMm *InstancePtr);
void XMm_InterruptEnable(XMm *InstancePtr, u32 Mask);
void XMm_InterruptDisable(XMm *InstancePtr, u32 Mask);
void XMm_InterruptClear(XMm *InstancePtr, u32 Mask);
u32 XMm_InterruptGetEnabled(XMm *InstancePtr);
u32 XMm_InterruptGetStatus(XMm *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
