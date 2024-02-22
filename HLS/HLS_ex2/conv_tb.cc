/*!
 *  Copyright (c) 2018 by Contributors
 * \file conv_Block.cc
 * \brief +Simulation tests for the matrix-matrix multiply design.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <stdbool.h>

#include "conv.h"


unsigned globalSeed;

int main(void) {
	const int H = 16;
	const int W = 16;
	const int IC = 8;
	const int OC = 4;
	const int K = 3;

	// padding, stride
	const int stride = 1;
	const int padding = 0;


	// Output C size
	int OW = (W + 2 * padding - K) / stride + 1 ;
	int OH = (H + 2 * padding - K) / stride + 1 ;

	// Input and output array initialization
	float *a = (float *) malloc(sizeof(float) * 131072);
	float *b = (float *) malloc(sizeof(float) * 524288);
	float *c = (float *) malloc(sizeof(float) * 131072);

	// Test outcome
	bool correct = true;

	// Reference output
	float c_ref[OH][OW][OC];


	printf("-----------Init A----------- \n");
	for (int h = 0; h < H; h++) {
		for (int w = 0; w < W; w++) {
			for (int ic = 0; ic < IC; ic ++){
				a[h*W*IC + w*IC + ic] = (float)(rand() % 1024 - 512) / 512;
			}
		}
	}

	printf("-----------Init weight----------- \n");
	for (int kh = 0; kh < K; kh++) {
		for (int kw = 0; kw < K; kw++) {
			for (int ic = 0; ic < IC; ic++){
				for (int oc = 0; oc < OC; oc++){
					b[kh*K*IC*OC + kw*IC*OC + ic*OC + oc] = (float)(rand() % 1024 - 512) / 512;
				}
			}
		}
	}


	// C init
	printf("-----------Init C and C_ref-----------\n");

	for (int oh = 0; oh < OH; oh++) {
		for (int ow = 0; ow < OW; ow++) {
			for(int oc=0; oc< OC; oc++){
				c[oh * OW * OC + ow * OC + oc] = 0;
				c_ref[oh][ow][oc] = 0;
			}
		}
	}

	// conv_bn_relu implementation
	conv(H, W, OH, OW, IC, OC, K, stride, padding, a, b, c);

	//Convolution
	for (int oc = 0; oc < OC; oc++){
		for(int ic = 0; ic < IC; ic++){
			for(int oh=0; oh < OH; oh ++){
				for(int ow=0; ow < OW; ow ++){
					for(int kh = 0; kh < K; kh ++){
						for(int kw= 0; kw < K; kw++){
							int ih = oh*stride + kh - padding;
							int iw = ow*stride + kw - padding;

							if(ih >= 0 && ih < H && iw >= 0 && iw < W)
								c_ref[oh][ow][oc] += b[kh*K*IC*OC + kw*IC*OC + ic*OC + oc] * a[ih*W*IC + iw*IC + ic];
						}
					}
				}
			}
		}
	}



	for (int oh = 0; oh < OH; oh++) {
		for (int ow = 0; ow < OW; ow++) {
			for (int oc = 0; oc < OC; oc++){
				if (c_ref[oh][ow][oc] != c[oh * OW * OC + ow * OC + oc]){
					correct = false;
					printf("%d\t%d\t%f\t%f\n", oh, ow, c_ref[oh][ow][oc], c[oh * OW * OC + ow * OC + oc]);
				}
			}
		}
	}

  // Free arrays
  free(a);
  free(b);
  free(c);

  if (correct) {
    printf("Test successful\n");
    return 0;
  } else {
    printf("Test unsuccessful\n");
    return -1;
  }
}
