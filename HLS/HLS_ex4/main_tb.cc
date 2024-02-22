#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <stdbool.h>
#include <unistd.h>

#include "project.h"

#ifndef MAX_BUF
#define MAX_BUF 50
#endif

int main(void) {
	// Checking Current Directory
	char path[MAX_BUF];
	char *buf = getcwd(NULL, 0);
	printf("Current working directory: %s\n", buf);
	free(buf);

	bool output_correct = true;

	int input_size = B*IH*IW*IC;
	int mid_output_size = B*OH*OW*OC;
	int output_size = B*OH*OW*OC;
	int weight_batchnorm1_size = 2*OC;
	int weight_batchnorm2_size = 2*OC;
	int weight_conv1_size = 1*1*IC*OC; // Point-Wise Convolution Kernel Size
	int weight_conv2_size = KH*KW*OC; // Depth-Wise Convolution Kernel Size

	float *input = 						(float *) malloc(sizeof(float) * input_size);
	float *mid_output_ref = 			(float *) malloc(sizeof(float) * mid_output_size);
	float *output_ref = 				(float *) malloc(sizeof(float) * output_size);
	float *output = 					(float *) malloc(sizeof(float) * output_size);
	float *weight_batchnorm1 = 			(float *) malloc(sizeof(float) * weight_batchnorm1_size);
	float *weight_batchnorm1_scale = 	(float *) malloc(sizeof(float) * (weight_batchnorm1_size/2));
	float *weight_batchnorm1_shift = 	(float *) malloc(sizeof(float) * (weight_batchnorm1_size/2));
	float *weight_batchnorm2 = 			(float *) malloc(sizeof(float) * weight_batchnorm2_size);
	float *weight_batchnorm2_scale = 	(float *) malloc(sizeof(float) * (weight_batchnorm2_size/2));
	float *weight_batchnorm2_shift = 	(float *) malloc(sizeof(float) * (weight_batchnorm2_size/2));
	float *weight_conv1 = 				(float *) malloc(sizeof(float) * weight_conv1_size);
	float *weight_conv2 = 				(float *) malloc(sizeof(float) * weight_conv2_size);

	// 1. Reading Input File
	FILE *input_file;
	input_file = fopen("../../../../Test_File/txt_file/new_input.txt","r");
	for (int i = 0; i < input_size; i++){
	        fscanf(input_file, "%f", &input[i]);
	}

	// 2. Reading Mid-Output Reference File
	FILE *mid_output_file;
	mid_output_file = fopen("../../../../Test_File/txt_file/new_mid_output.txt","r");
	for (int i = 0; i < mid_output_size; i++){
		    fscanf(mid_output_file, "%f", &mid_output_ref[i]);
	}

	// 3. Reading Output Reference File
	FILE *output_file;
	output_file = fopen("../../../../Test_File/txt_file/new_output.txt","r");
	for (int i = 0; i < output_size; i++){
			fscanf(output_file, "%f", &output_ref[i]);
	}

	// 4. Reading Weight_BatchNorm1 File and Dividing into Scale & Shift
	FILE *weight_batchnorm1_file;
	weight_batchnorm1_file = fopen("../../../../Test_File/txt_file/weight_batchnorm1.txt","r");
	char s1[MAX_BUF]; // Trashbin for (64,)
	fscanf(weight_batchnorm1_file, "%s", s1);
	for (int i = 0; i < weight_batchnorm1_size; i++){
			fscanf(weight_batchnorm1_file, "%f", &weight_batchnorm1[i]);
	}
	for (int i = 0; i < weight_batchnorm1_size; i++){
			if(i%2!=0) weight_batchnorm1_shift[(i+1)/2-1] = weight_batchnorm1[i]; // Even indexes
			else weight_batchnorm1_scale[i/2] = weight_batchnorm1[i]; // Odd indexes
	}

	// 5. Reading Weight_BatchNorm2 File and Dividing into Scale & Shift
	FILE *weight_batchnorm2_file;
	weight_batchnorm2_file = fopen("../../../../Test_File/txt_file/weight_batchnorm2.txt","r");
	char s2[MAX_BUF]; // Trashbin for (64,)
	fscanf(weight_batchnorm2_file, "%s", s2);
	for (int i = 0; i < weight_batchnorm2_size; i++){
			fscanf(weight_batchnorm2_file, "%f", &weight_batchnorm2[i]);
	}
	for (int i = 0; i < weight_batchnorm2_size; i++){
			if(i%2!=0) weight_batchnorm2_shift[(i+1)/2-1] = weight_batchnorm2[i]; // Even indexes
			else weight_batchnorm2_scale[i/2] = weight_batchnorm2[i]; // Odd indexes
	}

	// 6. Reading Weight_Conv1 File
	FILE *weight_conv1_file;
	weight_conv1_file = fopen("../../../../Test_File/txt_file/weight_conv1.txt","r");
	for (int i = 0; i < weight_conv1_size; i++){
			fscanf(weight_conv1_file, "%f", &weight_conv1[i]);
	}

	// 7. Reading Weight_Conv2 File
	FILE *weight_conv2_file;
	weight_conv2_file = fopen("../../../../Test_File/txt_file/weight_conv2.txt","r");
	for (int i = 0; i < weight_conv2_size; i++){
			fscanf(weight_conv2_file, "%f", &weight_conv2[i]);
	}

	// 8. 』』』』』』』』 Running top RTL 』』』』』』』
	//mobilenet(input, weight_conv1, weight_batchnorm1_scale, weight_batchnorm1_shift, weight_conv2_reshape, weight_batchnorm2_scale, weight_batchnorm2_shift, output);


	printf("                             output       output_ref\n");
	for(int oc=0;oc<4;oc++){
		for(int oh=0; oh<4;oh++){
			for(int ow=0;ow<4;ow++){
				printf("Channel %d Row %d Column %d :   %f     %f\n", oc,oh,ow, output[ow+oh*OW+oc*OH*OW], output_ref_reshape[ow+oh*OW+oc*OH*OW]);
			}
		}
		//printf("Scale : %f , Shift : %f \n", weight_batchnorm2_scale[oc], weight_batchnorm2_shift[oc]);
		printf("----------------------------------------------------\n");
	}

	// 9. Testing
	for(int oc=0;oc<OC;oc++){
		for(int oh=0; oh<OH;oh++){
			for(int ow=0;ow<OW;ow++){
				float error = 0.0f;
				error = output[ow+oh*OW+oc*OH*OW] - output_ref_reshape[ow+oh*OW+oc*OH*OW];
				if(fabs(error) > 0.001){
					output_correct = false;
					printf("Channel %d Row %d Column %d: Error = %f\n", oc, oh, ow, error);
				}
			}
		}
	}

	free(input);

	free(output);
	free(weight_batchnorm1);
	free(weight_batchnorm1_scale);
	free(weight_batchnorm1_shift);
	free(weight_batchnorm2);
	free(weight_batchnorm2_scale);
	free(weight_batchnorm2_shift);
	free(input_reshape);
	free(weight_conv1_reshape);
	free(weight_conv2_reshape);
	free(mid_output_ref_reshape);
	free(output_ref_reshape);

	if (output_correct) {
	    printf("Output Pass\n");
	    return 0;
	  } else {
	    printf("Output Fail\n");
	    return -1;
	  }


}
