/*!
 *  Copyright (c) 2018 by Contributors
 * \file conv_block.cc
 * \brief Matrix-Matrix Multiply HLS design.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "./dw_conv.h"


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
		volatile float *c) {

	#pragma HLS INTERFACE m_axi port = a depth = 131072 offset = slave bundle = a_port
	#pragma HLS INTERFACE m_axi port = b depth = 524288 offset = slave bundle = w_port
	#pragma HLS INTERFACE m_axi port = c depth = 131072 offset = slave bundle = c_port

	#pragma HLS INTERFACE s_axilite port = a bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = b bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = c bundle = CONTROL_BUS

	#pragma HLS INTERFACE s_axilite port = IH bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = IW bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = OH bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = OW bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = IC bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = K bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = S bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = P bundle = CONTROL_BUS

	#pragma HLS INTERFACE s_axilite port = return bundle = CONTROL_BUS

	// your code
	for (int ic = 0; ic < IC; ic++)
			{
				for(int oh=0; oh < OH; oh ++)
				{
					for(int ow=0; ow < OW; ow ++)
					{
						float accum = 0;
						for(int kh = 0; kh < K; kh ++)
						{
							for(int kw= 0; kw < K; kw++)
							{
								int ih = oh*S + kh - P;
								int iw = ow*S + kw - P;
								if(ih >= 0 && ih < IH && iw >= 0 && iw < IW)
									accum = accum + b[kh*K*IC + kw*IC + ic] * a[ih*IW*IC + iw*IC + ic];
							}
						}
						c[OW * IC * oh + IC * ow + ic] = accum;
					}
				}

			}



}

