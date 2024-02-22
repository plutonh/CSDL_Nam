/*!
 *  Copyright (c) 2018 by Contributors
 * \
 * \brief Matrix-Matrix Multiply HLS design.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ap_fixed.h>


#ifndef _CONV_H_
#define _CONV_H_


#ifndef NO_SIM
void depth_conv(
	int IH,
	int IW,
	int OH,
	int OW,
	int IC,
	int K,
	int S,
	int P,
	volatile float *a,
	volatile float *b,
	volatile float *c);

#endif  // NO_SIM


#endif
