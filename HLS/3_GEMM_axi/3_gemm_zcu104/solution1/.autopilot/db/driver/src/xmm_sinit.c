// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmm.h"

extern XMm_Config XMm_ConfigTable[];

XMm_Config *XMm_LookupConfig(u16 DeviceId) {
	XMm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMM_NUM_INSTANCES; Index++) {
		if (XMm_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMm_Initialize(XMm *InstancePtr, u16 DeviceId) {
	XMm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMm_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMm_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

