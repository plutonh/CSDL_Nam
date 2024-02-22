#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <stdbool.h>

#include "conv.h"


unsigned globalSeed;

int main(void) {
	const int IH = 5;
	const int IW = 5;
	const int IC = 4;
	const int OC = 4;
	const int K = 3;

	const int S = 1;
	const int P = 1;
	bool RELU = 1;

	int OW = (IW + 2 * P - K) / S + 1 ;
	int OH = (IH + 2 * P - K) / S + 1 ;

	// Input and output array initialization
	float *input = (float *) malloc(sizeof(float) * 16384);
	float *weight = (float *) malloc(sizeof(float) * 16384);
	float *scale = (float *) malloc(sizeof(float) * 16384);
	float *shift = (float *) malloc(sizeof(float) * 16384);
	float *output = (float *) malloc(sizeof(float) * 16384);

	// Test outcome
	bool correct = true;

	// Reference output
	float output_ref[OH][OW][OC];


	printf("-----------Init Input----------- \n");
	for (int ic = 0; ic < IC; ic++) {
		printf("IC=%d\n", ic);
		for (int ih = 0; ih < IH; ih++) {
			for (int iw = 0; iw < IW; iw ++){
				input[ic*IH*IW+ih*IW+iw] = (float)(rand() % 1024 - 512) / 512;
				printf("%f\t", input[ic*IH*IW+ih*IW+iw]);
			}
			printf("\n");
		}
		printf("\n");
	}

	printf("-----------Init weight----------- \n");
	for (int oc = 0; oc < OC; oc++) {
		for (int ic = 0; ic < IC; ic++) {
			printf("OC=%d IC=%d\n", oc, ic);
			for (int kh = 0; kh < K; kh++){
				for (int kw = 0; kw < K; kw++){
					weight[kw+kh*K+ic*K*K+oc*IC*K*K] = (float)(rand() % 1024 - 512) / 512;
					printf("%f\t", weight[kw+kh*K+ic*K*K+oc*IC*K*K]);
				}
				printf("\n");
			}
			printf("\n");
		}
		printf("\n");
	}

	for (int oc = 0; oc < OC; oc++){
		scale[oc] = (float)(rand() % 1024 - 512) / 512; // scale
		shift[oc] = (float)(rand() % 1024 - 512) / 512; // shift
		printf("oc=%d \t scale=%f \t shift=%f \n", oc, scale[oc], shift[oc]);
	}

	printf("-----------Init Output and output_ref-----------\n");

	for (int oh = 0; oh < OH; oh++) {
		for (int ow = 0; ow < OW; ow++) {
			for(int oc=0; oc< OC; oc++){
				output[ow+oh*OW+oc*OW*OH] = 0;
				output_ref[oh][ow][oc] = 0;
			}
		}
	}

	// conv_bn_relu implementation
	printf("-----------------Hardware Simulation-----------------\n");
	conv(IH, IW, IC, OC, K, S, P, RELU, input, weight, scale, shift, output);

	//Convolution
	printf("-----------Golden Output Generation----------\n");
	for (int oc = 0; oc < OC; oc++){
		for(int ic = 0; ic < IC; ic++){
			for(int oh=0; oh < OH; oh ++){
				for(int ow=0; ow < OW; ow ++){
					for(int kh = 0; kh < K; kh ++){
						for(int kw= 0; kw < K; kw++){
							int ih = oh*S + kh - P;
							int iw = ow*S + kw - P;
							if(ih >= 0 && ih < IH && iw >= 0 && iw < IW)
								output_ref[oh][ow][oc] += weight[kw+kh*K+ic*K*K+oc*IC*K*K] * input[ic*IH*IW+ih*IW+iw];

						}
					}
				}
			}
		}
	}


	//BN & ReLU
	for (int oc = 0; oc < OC; oc++) {
		printf("oc=%d\n", oc);
		for (int oh = 0; oh < OH; oh++) {
			for (int ow = 0; ow < OW; ow ++){
				//printf("%f\t",output_ref[oh][ow][oc]);
				output_ref[oh][ow][oc] = output_ref[oh][ow][oc] * scale[oc] + shift[oc];
				if(RELU){
					output_ref[oh][ow][oc] = output_ref[oh][ow][oc] > 0 ? output_ref[oh][ow][oc] : 0;
				}
				printf("%f\t",output_ref[oh][ow][oc]);

				if (output_ref[oh][ow][oc] != output[ow+oh*OW+oc*OW*OH]){
					correct = false;
					//printf("%d\t%d\t%f\t%f\n", oh, ow, output_ref[oh][ow][oc], output[ow+oh*OW+oc*OW*OH]);
				}
			}
			printf("\n");
		}
		printf("\n");
	}

  // Free arrays
  free(input);
  free(weight);
  free(scale);
  free(shift);
  free(output);

  if (correct) {
    printf("Test successful\n");
    return 0;
  } else {
    printf("Test unsuccessful\n");
    return -1;
  }
}
