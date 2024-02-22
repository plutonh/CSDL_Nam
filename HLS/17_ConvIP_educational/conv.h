#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ap_fixed.h>


#ifndef _CONV_H_
#define _CONV_H_


#ifndef NO_SIM
void conv(
	int IH,
	int IW,

	int IC,
	int OC,
	int K,
	int S,
	int P,

	bool RELU,

	volatile float *input,
	volatile float *weight,
	volatile float *scale,
	volatile float *shift,
	volatile float *output);

#endif  // NO_SIM


#endif
