// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xgemm.h"

extern XGemm_Config XGemm_ConfigTable[];

XGemm_Config *XGemm_LookupConfig(u16 DeviceId) {
	XGemm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGEMM_NUM_INSTANCES; Index++) {
		if (XGemm_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGemm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGemm_Initialize(XGemm *InstancePtr, u16 DeviceId) {
	XGemm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGemm_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGemm_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

