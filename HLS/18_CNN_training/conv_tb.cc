// References

// A Gentle Explanation of Backpropagation in Convolutional Neural Network
// https://medium.com/@ngocson2vn/a-gentle-explanation-of-backpropagation-in-convolutional-neural-network-cnn-1a70abff508b

// Relationship between Convolution and Transposed Convolution in CNN
// https://nbviewer.org/github/metamath1/ml-simple-works/blob/master/NN/transconv_fullconv.ipynb

// Backpropataion in a Convolutional Layer
// https://towardsdatascience.com/backpropagation-in-a-convolutional-layer-24c8d64d8509

// The Easiest Way to Understand CNN Backpropagation
// https://metamath1.github.io/cnn/index.html

// Deriving the Gradient for the Backward Pass of Batch Normalization
// https://kevinzakka.github.io/2016/09/14/batch_normalization/

// Backpropagation at Convolutional Layer, Backpropagation at Batch Normalziation Layer
// https://www.youtube.com/watch?v=XIKUuNDDJZg

// Conventions
// All 2-dimensional matrices are in the shape of HxW
// All 3-dimensional tensors are in the shape of CxHxW
// All 4-dimensional tensors are represented in the shape of OCxICxHxW

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <stdbool.h>
#include <unistd.h>
#include <conio.h>
#include <stdint.h>

#include "conv.h"

unsigned globalSeed;

#ifndef MAX_BUF
#define MAX_BUF 50
#endif

#ifndef MAX_PATH_LENGTH
#define MAX_PATH_LENGTH 100
#endif

// Prints the Binary Representation of a Floating Point Value
void floatToBinary(float value) {
    union {
        float f;
        uint32_t i;
    } binary;

    binary.f = value;

    printf("Binary representation of %f: ", value);

    for (int i = 31; i >= 0; i--) {
        uint32_t bit = (binary.i >> i) & 1;
        printf("%u", bit);
        if (i == 31 || i == 23) {
            printf(" ");
        }
    }
    printf("\t");
}

// Returns the max index of the input vector
int indexOfMaxValue(float *array, int length) {
    if (length <= 0) return -1;

    int indexOfMax = 0;
    float maxValue = array[0];
    for (int i = 1; i < length; i++) {
        if (array[i] > maxValue) {
            maxValue = array[i];
            indexOfMax = i;
        }
    }
    return indexOfMax;
}

// Compares the HLS output and python output stored as a txt file
void testing(
		float *hardware,
		float *python,
		int size,
		const char *name) {
    const float tolerance = 1e-6;

    for (int i = 0; i < size; i++) {
        if (fabs(hardware[i] - python[i]) > tolerance) {
            printf("Not matching at %s. index %d: hardware=%f, python=%f\n", name, i, hardware[i], python[i]);
            return;
        }
    }
    printf("All elements match within tolerance for array %s.\n",name);
}

// Create a vector of length "class_num" where all values are 0 except for the index of the subject label
void create_label(
		int label,
		int class_num,
		float *output
		){
	for (int i = 0; i < class_num; i++) {
		output[i] = 0.0f;
	}
	output[label] = 1.0f;
}


// Prints out the floating point values of a 4-dimensional tensor
void printtensor(
		float *input,
		const char *name,
		int OC,
		int IC,
		int H,
		int W
		){
	printf("=================  %s : [h][w][ic][oc] = (%d x %d x %d x %d)  =================\n", name, H, W, IC, OC);
	for(int oc=0; oc<OC; oc++){
		for(int ic = 0; ic<IC ; ic++){
			printf("---------------  OC %d IC %d ------------\n", oc, ic);
			for(int h = 0; h< H; h++){
				for(int w = 0; w < W; w++){
					printf("%f\t", input[((oc*IC+ic)*H+h)*W+w]);
					//floatToBinary(input[((oc*IC+ic)*H+h)*W+w]);
				}
				printf("\n");
			}
		}
	}
	printf("\n");
}

// Prints out the integer point values of a 4-dimensional tensor
void printtensor_int(
		int *input,
		const char *name,
		int OC,
		int IC,
		int H,
		int W
		){
	printf("=================  %s : [h][w][ic][oc] = (%d x %d x %d x %d)  =================\n", name, H, W, IC, OC);
	for(int oc=0; oc<OC; oc++){
		for(int ic = 0; ic<IC ; ic++){
			printf("---------------  OC %d IC %d ------------\n", oc, ic);
			for(int h = 0; h< H; h++){
				for(int w = 0; w < W; w++){
					printf("%d\t", input[((oc*IC+ic)*H+h)*W+w]);
				}
				printf("\n");
			}
		}
	}
	printf("\n");
}

// Prints out the floating point values of a 6-dimensional tensor
void printtensor6d(
		float *input,
		const char *name,
		int IC,
		int IH,
		int IW,
		int OC,
		int OH,
		int OW
		){
	printf("=================  %s : [ic][ih][iw][oc][oh][ow] = (%d x %d x %d x %d x %d x %d)  =================\n", name, IC, IH, IW, OC, OH, OW);
	for(int ic=0; ic<IC; ic++){
		for(int ih = 0; ih<IH ; ih++){\
			for(int iw = 0; iw< IW; iw++){
				for(int oc=0; oc<OC; oc++){
					printf("---------------  IC %d IH %d IW %d OC %d------------\n", ic, ih, iw, oc);
					for(int oh=0; oh<OH; oh++){
						for(int ow=0; ow<OW; ow++){
							printf("%f\t", input[ic*IH*IW*OC*OH*OW + ih*IW*OC*OH*OW + iw*OC*OH*OW + oc*OH*OW + oh*OW + ow]);
						}
						printf("\n");
					}
				}
			}
		}
	}
	printf("\n");
}

// Convolution of a 2-dimensional array
void conv2d(
    float *input,    // Input tensor
    float *weight,   // Kernel tensor
    float *bias,     // Kernel bias
    bool biasing,    // Biasing operation
    int K,           // Kernel size
    int S,           // Stride
    int P,           // Padding
    int OH,          // Output height
    int OW,          // Output width
    int OC,          // Output channels
    int IC,          // Input channels
    float *output    // Output tensor
) {
    memset(output, 0, sizeof(float) * OH * OW * OC);

    // Assuming IH and IW are the dimensions of the input tensor.
    int IH = (OH - 1) * S + K - 2*P;
    int IW = (OW - 1) * S + K - 2*P;
    for (int oc = 0; oc < OC; oc++) {
        for (int oh = 0; oh < OH; oh++) {
            for (int ow = 0; ow < OW; ow++) {
                float S2_muv = 0;
                for (int ic = 0; ic < IC; ic++) {
                    for (int kh = 0; kh < K; kh++) {
                        for (int kw = 0; kw < K; kw++) {
                            int ih = oh * S + kh - P;
                            int iw = ow * S + kw - P;
                            if (ih >= 0 && ih < IH && iw >= 0 && iw < IW) {
                                int input_idx = ic*IH*IW + ih*IW + iw; //(ih * IW + iw) * IC + ic;
                                int weight_idx = oc*K*K*IC + ic*K*K + kh * K + kw;//((oc * K + kh) * K + kw) * IC + ic;
                                //printf("output %d input %d weight %d \n", (oc * OH + oh) * OW + ow, input_idx, weight_idx);
                                S2_muv += input[input_idx] * weight[weight_idx];
                            }
                        }
                    }
                }
                S2_muv += biasing ? bias[oc] : 0;
                int output_idx = (oc * OH + oh) * OW + ow;
                output[output_idx] = S2_muv;
            }
        }
    }
}



void conv2d_back_1( // Used for back propagation
    float *input,    // Input tensor ICxIHxIW
    float *weight,   // Kernel tensor OCxKHxKW
    int K,           // Kernel size
    int S,           // Stride
    int P,           // Padding
    int OH,          // Output height
    int OW,          // Output width
    int OC,          // Output channels
    int IC,          // Input channels
    float *output    // Output tensor OCxICxOHxOW
) {
    memset(output, 0, sizeof(float) * OH * OW * OC);

    // Assuming IH and IW are the dimensions of the input tensor.
    int IH = (OH - 1) * S + K - 2*P;
    int IW = (OW - 1) * S + K - 2*P;
    for (int oc = 0; oc < OC; oc++) {
    	for(int ic=0; ic<IC; ic++){
    		for(int oh=0; oh<OH; oh++){
    			for(int ow=0; ow<OW; ow++){
    				float sum = 0;
					for(int kh=0; kh<K; kh++){
						for(int kw=0; kw<K; kw++){
							int ih = oh*S + kh - P;
							int iw = ow*S + kw - P;
							if(ih >= 0 && ih < IH && iw >= 0 && iw < IW){
								int input_idx = ic*IH*IW + ih*IW + iw;
								int weight_idx = oc*K*K + kh*K + kw;
								sum += input[input_idx] * weight[weight_idx];
							}
						}
					}
					int output_idx = oc*IC*OH*OW + ic*OH*OW + oh*OW + ow;
					output[output_idx] = sum;
    			}
    		}


    	}
    }
}

void conv2d_back_2( // Used for back propagation
    float *input,    // Input tensor (ICxIHxIW)x(OCxOHxOW)
    float *weight,   // Kernel tensor OCxOHxOW
    int OC,
	int OH,
	int OW,
	int IC,
	int IH,
	int IW,
    float *output    // Output tensor ICxIHxIW
) {
    memset(output, 0, sizeof(float) * IC * IH * IW);
    for(int ic=0; ic<IC; ic++){
    	for(int ih=0; ih<IH; ih++){
    		for(int iw=0; iw<IW; iw++){
    			float sum = 0;
    			for(int oc=0; oc<OC; oc++){
    				for(int oh=0; oh<OH; oh++){
    					for(int ow=0; ow<OW; ow++){
    						int input_idx = ic*IH*IW*OC*OH*OW + ih*IW*OC*OH*OW + iw*OC*OH*OW + oc*OH*OW + oh*OW + ow;
    						int weight_idx = oc*OH*OW + oh*OW + ow;
    						sum += input[input_idx] * weight[weight_idx];
    					}
    				}
    			}
    			output[ic*IH*IW+ih*IW+iw] = sum;
    		}
    	}
    }
}

void create_pad(
		float *input, // w2
		int IH, // 12
		int IW, // 12
		int IC, // 6
		int OC, // 12
		int OH, // 8
		int OW, // 8
		int KH, // 5
		int KW, // 5
		int S,
		int P,
		float *output // w2_pad
		){
	memset(output, 0, sizeof(float) * IC * IH * IW * OC * OH * OW);
	for(int oc=0; oc<OC; oc++){ // 12
		for(int oh=0; oh<OH; oh++){ // 8
			for(int ow=0; ow<OW; ow++){ // 8
				for(int ic=0; ic<IC; ic++){ // 6
					for(int kh=0; kh<KH; kh++){ // 5
						for(int kw=0; kw<KW; kw++){ //5
							int ih = oh*S + kh - P;
							int iw = ow*S + kw - P;
							int input_idx = oc*IC*KH*KW + ic*KH*KW + kh*KW + kw;
							int output_idx = ic*IH*IW*OC*OH*OW + ih*IW*OC*OH*OW + iw*OC*OH*OW + oc*OH*OW + oh*OW + ow;
							output[output_idx] = input[input_idx];
						}
					}
				}
			}
		}
	}
}

void relu(
		float *input,
		int inputsize,
		float *output
		){
	for(int i=0; i< inputsize; i++){
		output[i] = input[i] > 0 ? input[i] : 0;
	}
}

void maxpool2d(
    float *input,
    int channel,
    int height,
    int width,
    int poolsize,
    float *output,
    int *index) {
    int OH = height / poolsize; // Output height
    int OW = width / poolsize;  // Output width

    for (int c = 0; c < channel; c++) {
    	//printf("channel %d\n", c);
        for (int h = 0; h < height; h += poolsize) { // Step by poolsize
            for (int w = 0; w < width; w += poolsize) { // Step by poolsize
                float maxVal = 0; // Start with the lowest possible value
                int maxIndex = 0;
                for (int fh = 0; fh < poolsize; fh++) {
                    for (int fw = 0; fw < poolsize; fw++) {
                        int currentH = h + fh;
                        int currentW = w + fw;
                        if (currentH < height && currentW < width) { // Ensure indices are within bounds
                            int idx = (c * height * width) + (currentH * width) + currentW; // Index in input

                            float currentVal = input[idx];
                            if (currentVal > maxVal) {
                                maxVal = currentVal;
                                //maxIndex = idx; // Store the 1D index of the max element
                                maxIndex = fh*2 + fw; // Store the 1D index of the max element
                            }
                            //printf("%d\t", idx);
                        }
                    }
                }
                // Save max value and index to the output and index arrays
                output[c * OH * OW + (h / poolsize) * OW + (w / poolsize)] = maxVal;
                index[c * OH * OW + (h / poolsize) * OW + (w / poolsize)] = maxIndex;
                //printf("\n%f, %d\n", maxVal, maxIndex);
                //printf("output %d\n", c * OH * OW + (h / poolsize) * OW + (w / poolsize));
            }
        }
    }
}

void linear(
		float *input,
		float *weight,
		float *bias,
		int dim,
		int class_num,
		float *output
		){
	for(int h=0; h<class_num; h++){
		output[h]=0;
		for(int w=0; w<dim; w++){
			output[h] += input[w] * weight[h*dim+w];
		}
		output[h] += bias[h];
	}
}


void softmax(
		float *input,
		int input_len,
		float *output
		){
	int i;
	float m;
	/* Find maximum value from input array */
	m = input[0];
	for (i = 1; i < input_len; i++){
		if (input[i] > m){
			m = input[i];
		}
	}
	float sum = 0;
	for (i = 0; i < input_len; i++){
		sum += expf(input[i]-m);
	}
	for (i = 0; i < input_len; i++){
		output[i] = expf(input[i] - m - log(sum));
	}
	float total = 0;
	for (i = 0; i < input_len; i++){
		total += output[i];
	}
}

float cross_entropy_loss(float *z3, float *y, int class_num) {
    float loss = 0.0f;

    for (int i = 0; i < class_num; ++i) {
        // Ensure that z3[i] is not zero to avoid log(0)
        if (y[i] == 1 && z3[i] > 0) {
            loss -= y[i] * log(z3[i]);
        }
    }

    return loss;
}

void d_crossentropy(
		float *input,
		float *label,
		int class_num,
		float *output
		){
	for(int i=0;i<class_num;i++){
		output[i] = input[i] - label[i];
	}
}

void transpose_matmul(
    float *A, // subject to transpose
    float *B,
    bool A_t,
    bool B_t,
    int A_rows,
    int A_cols,
    int B_rows,
    int B_cols,
    float *AB // result of AB
) {
    int AB_rows = A_t ? A_cols : A_rows; // Height of AB is A's cols if A is transposed, else A's rows
    int AB_cols = B_t ? B_rows : B_cols; // Width of AB is B's rows if B is transposed, else B's cols

    memset(AB, 0, sizeof(float) * AB_rows * AB_cols);

    for (int i = 0; i < AB_rows; i++) {
        for (int j = 0; j < AB_cols; j++) {
            for (int k = 0; k < (A_t ? A_rows : A_cols); k++) {
                float a_val = A_t ? A[k * A_cols + i] : A[i * A_cols + k]; // Access A[i][k] if not transposed, A[k][i] if transposed
                float b_val = B_t ? B[j * B_cols + k] : B[k * B_cols + j]; // Access B[k][j] if not transposed, B[j][k] if transposed
                AB[i * AB_cols + j] += a_val * b_val;
            }
        }
    }
}

void matmul_new(
    float *A, // p2
	float *B, // dz3
	int A_size, // 192
    int B_size, // 10
    float *AB // result of AB
) {
    memset(AB, 0, sizeof(float) * A_size * B_size);

    for (int i = 0; i < B_size; i++) {
    	for(int j=0; j<A_size; j++){
    		AB[i*A_size + j] = A[j] * B[i];
    	}
    }
}

void transposeMatrix(float *input, int rows, int cols, float *output) {
    for (int i = 0; i < rows; ++i) {
        for (int j = 0; j < cols; ++j) {
            output[j * rows + i] = input[i * cols + j];
        }
    }
}


void upsample2d(
		float *input,
		int *index,
		int poolsize,
		int channel,
		int height, // of input
 		int width, // of output
		float *output
		){
	int OH = poolsize * height;
	int OW = poolsize * width;
	for(int c=0; c<channel; c++){
		for(int h=0; h<height; h++){
			for(int w=0; w<width; w++){
				int ind = index[c*width*height+h*width+w];
				int row = ind / poolsize;
				int col = ind % poolsize;
				output[c*OH*OW + (h*poolsize+row)*OH + (w*poolsize+col)] = input[c*height*width+h*width+w];
			}
		}
	}
}

void d_relu(
		float *input,
		int inputsize
		){
	for(int i=0; i< inputsize; i++){
		input[i] = input[i] > 0 ? 1 : 0;
	}
}

void hadamard(
		float *inputA,
		float *inputB,
		int size,
		float *output
		){
	memset(output, 0, sizeof(float) * size);
	for(int i=0; i<size; i++){
		output[i] = inputA[i] * inputB[i];
	}
}

void biascalc(
		float *input,
		int channel,
		int size,
		float *bias
		){
	memset(bias, 0, sizeof(float) * channel);
	for(int c=0;c<channel;c++){
		for(int i=0; i<size; i++){
			bias[c] += input[c*size+i];
		}
	}
}

void weightupdate(
		float *weight,
		float *gradient,
		float lr,
		int OC,
		int IC,
		int height,
		int width
		){
	for(int oc=0;oc<OC;oc++){
		for(int ic=0; ic<IC; ic++){
			for(int h=0;h<height;h++){
				for(int w=0;w<width;w++){
					weight[oc*IC*height*width+ic*height*width+h*width+w] -= lr * gradient[oc*IC*height*width+ic*height*width+h*width+w];
				}
			}
		}
	}
}
////////////////////////////////////////////////////////////

int main(void) {
	// Checking Current Directory
	char path[MAX_BUF];
	char *buf = getcwd(NULL, 0);
	printf("Current working directory: %s\n", buf);
	free(buf);


	const float lr = 0.005;
	const int epoch = 10;
	const int train_len = 1000;

	int pred = 0;
	int label = 5;
	int correct_num = 0;
	float train_acc = 0;
	float loss = 0.0f;
	bool random_init = false;
	bool debug = false;

	const int H_0 = 28;
	const int W_0 = 28;
	const int IC = 1;

	const int KH = 5;
	const int KW = 5;
	const int OC_1 = 6;
	const int OC_2 = 12;

	const int H_1 = (H_0 - KH) + 1; // 24
	const int W_1 = (W_0 - KW) + 1; // 24

	const int H_1_P = H_1/2; // 12
	const int W_1_P = W_1/2; // 12

	const int H_2 = (H_1_P - KH) + 1; // 8
	const int W_2 = (W_1_P - KW) + 1; // 8

	const int H_2_P = H_2/2; // 4
	const int W_2_P = W_2/2; // 4

	const int class_num = 10;
	const int o_dim = H_2_P * W_2_P * OC_2; // 4x4x12 = 192

	const int stride = 1;

	// Input and output array initialization
	float *a0 = (float *) malloc(sizeof(float) * H_0 * W_0 * IC); 		// 28x28x1

	float *z1 = (float *) malloc(sizeof(float) * H_1 * W_1 * OC_1); 	// 24x24x6
	float *a1 = (float *) malloc(sizeof(float) * H_1 * W_1 * OC_1); 	// 24x24x6
	float *p1 = (float *) malloc(sizeof(float) * H_1_P * W_1_P * OC_1); // 12x12x6
	int   *i1 = (int *) malloc(sizeof(int) * H_1_P * W_1_P * OC_1); 	// 12x12x6

	float *z2 = (float *) malloc(sizeof(float) * H_2 * W_2 * OC_2); 	// 8x8x12
	float *a2 = (float *) malloc(sizeof(float) * H_2 * W_2 * OC_2); 	// 8x8x12
	float *p2 = (float *) malloc(sizeof(float) * H_2_P * W_2_P * OC_2); // 4x4x12
	int	  *i2 = (int *) malloc(sizeof(int) * H_2_P * W_2_P * OC_2); 	// 4x4x12

	float *f2 = (float *) malloc(sizeof(float) * o_dim); 				// 192(=4x4x12)
	float *z3 = (float *) malloc(sizeof(float) * class_num); 			// 10
	float *a3 = (float *) malloc(sizeof(float) * class_num); 			// 10

	float *y = (float *) malloc(sizeof(float) * class_num); 			// 10

	// Weights act as both inputs and outputs to the hardware
	float *w1 = (float *) malloc(sizeof(float) * KH * KW * IC * OC_1); 	// 5x5x1x6
    float *b1 = (float *) malloc(sizeof(float) * OC_1); 				// 6

    float *w2 = (float *) malloc(sizeof(float) * KH * KW * OC_1 * OC_2);// 5x5x6x12
    float *b2 = (float *) malloc(sizeof(float) * OC_2); 				// 12

    float *w3 = (float *) malloc(sizeof(float) * o_dim * class_num); 	// 192x10
    float *b3 = (float *) malloc(sizeof(float) * class_num); 			// 10

    // Backward pass gradients
    float *dz3 = (float *) malloc(sizeof(float) * class_num); 			// 10
    float *dw3 = (float *) malloc(sizeof(float) * o_dim * class_num); 	// 192x10
    float *dw3_t = (float *) malloc(sizeof(float) * o_dim * class_num); 	// 192x10

    float *df2 = (float *) malloc(sizeof(float) * o_dim); 				// 192
    float *dp2 = (float *) malloc(sizeof(float) * H_2_P * W_2_P * OC_2);// 4x4x12
    float *da2 = (float *) malloc(sizeof(float) * H_2 * W_2 * OC_2); 	// 8x8x12
    float *dz2 = (float *) malloc(sizeof(float) * H_2 * W_2 * OC_2); 	// 8x8x12
    float *dw2 = (float *) malloc(sizeof(float) * KH * KW * OC_1 * OC_2);// 5x5x6x12
    float *db2 = (float *) malloc(sizeof(float) * OC_2); 				// 12

    float *w2_pad = (float *) malloc(sizeof(float) * H_1_P * W_1_P * OC_1 * H_2 * W_2 * OC_2); // (6x12x12)x(12x8x8)
    float *dp1 = (float *) malloc(sizeof(float) * H_1_P * W_1_P * OC_1);// 12x12x6
    float *da1 = (float *) malloc(sizeof(float) * H_1 * W_1 * OC_1); 	// 24x24x6
    float *dz1 = (float *) malloc(sizeof(float) * H_1 * W_1 * OC_1); 	// 24x24x6
    float *dw1 = (float *) malloc(sizeof(float) * KH * KW * IC * OC_1); // 5x5x1x6
    float *db1 = (float *) malloc(sizeof(float) * OC_1); 				// 6

    // Python outputs
    float *dw3_py = (float *) malloc(sizeof(float) * o_dim * class_num); 	// 192x10
    float *z1_py = (float *) malloc(sizeof(float) * H_1 * W_1 * OC_1); 	// 24x24x6
    float *p1_py = (float *) malloc(sizeof(float) * H_1_P * W_1_P * OC_1); // 12x12x6
    float *z2_py = (float *) malloc(sizeof(float) * H_2 * W_2 * OC_2); 	// 8x8x12
    float *p2_py = (float *) malloc(sizeof(float) * H_2_P * W_2_P * OC_2); // 4x4x12
    float *da2_py = (float *) malloc(sizeof(float) * H_2 * W_2 * OC_2); 	// 8x8x12
    float *dw2_py = (float *) malloc(sizeof(float) * KH * KW * OC_1 * OC_2);// 5x5x6x12
    float *w2_pad_py = (float *) malloc(sizeof(float) * H_1_P * W_1_P * OC_1 * H_2 * W_2 * OC_2); // (6x12x12)x(12x8x8)
    float *da1_py = (float *) malloc(sizeof(float) * H_1 * W_1 * OC_1); 	// 24x24x6
    float *dz1_py = (float *) malloc(sizeof(float) * H_1 * W_1 * OC_1); 	// 24x24x6

    float *w1_uppy = (float *) malloc(sizeof(float) * KH * KW * IC * OC_1); 	// 5x5x1x6
	float *b1_uppy = (float *) malloc(sizeof(float) * OC_1); 				// 6

	float *w2_uppy = (float *) malloc(sizeof(float) * KH * KW * OC_1 * OC_2);// 5x5x6x12
	float *b2_uppy = (float *) malloc(sizeof(float) * OC_2); 				// 12

	float *w3_uppy = (float *) malloc(sizeof(float) * o_dim * class_num); 	// 192x10
	float *b3_uppy = (float *) malloc(sizeof(float) * class_num); 			// 10

	// Test outcome
	bool correct = true;

	//----------------Initialization ----------------------------------------
	if(random_init == true){
		printf("-----------Init A0----------- \n");
		for (int h = 0; h < H_0; h++) {
			for (int w = 0; w < W_0; w++) {
				a0[h*W_0 + w] = (float)(rand() % 1024 - 512) / 512;
				printf("%f\t", a0[h*W_0 + w]);
			}
			printf("\n");
		}

		printf("-----------Init Y----------- \n");
		for (int i = 0; i < class_num; i++) {
			y[i] = 0.0f;
		}
		int randomIndex = rand() % class_num;
		y[randomIndex] = 1.0f;
		for (int i = 0; i < class_num; i++) {
			printf("%f\t", y[i]);
		}
		printf("\n");

		printf("-----------Init W1----------- \n");
		for (int kh = 0; kh < KH; kh++) {
			for (int kw = 0; kw < KW; kw++) {
				w1[kh*KW + kw] = (float)(rand() % 1024 - 512) / 512;
				printf("%f\t", w1[kh*KW + kw]);
			}
			printf("\n");
		}
		printf("-----------Init B1----------- \n");
		for (int i = 0; i < 1; i++) {
			b1[i] = (float)(rand() % 1024 - 512) / 512;
			printf("%f\t", b1[i]);
		}
		printf("\n");


		printf("-----------Init W2----------- \n");
		for (int kh = 0; kh < KH; kh++) {
			for (int kw = 0; kw < KW; kw++) {
				w2[kh*KW + kw] = (float)(rand() % 1024 - 512) / 512;
				printf("%f\t", w2[kh*KW + kw]);
			}
			printf("\n");
		}
		printf("-----------Init B2----------- \n");
		for (int i = 0; i < 1; i++) {
			b2[i] = (float)(rand() % 1024 - 512) / 512;
			printf("%f\t", b2[i]);
		}
		printf("\n");
		printf("%f\n", b2);

		printf("-----------Init W3----------- \n");
		for (int i = 0; i < o_dim; i++) {
			for (int j = 0; j < class_num; j++) {
				w3[i*class_num + j] = (float)(rand() % 1024 - 512) / 512;
				printf("%f\t", w3[i*class_num + j]);
			}
			printf("\n");
		}

		printf("-----------Init B3----------- \n");
		for (int i = 0; i < class_num; i++) {
			b3[i] = (float)(rand() % 1024 - 512) / 512;
			printf("%f\t",b3[i]);
		}
		printf("\n");
	}else{
		printf("-----------Init A0----------- \n");
		FILE *input_file;
		input_file = fopen("../../../../python_weights/img.txt","r");
		for (int i = 0; i < H_0 * W_0 * IC; i++){
				fscanf(input_file, "%f", &a0[i]);
		}

		printf("-----------Init W1----------- \n");
		FILE *k1_file;
		k1_file = fopen("../../../../python_weights/k1.txt","r");
		for (int i = 0; i < KH * KW * IC * OC_1; i++){
				fscanf(k1_file, "%f", &w1[i]);
		}

		printf("-----------Init B1----------- \n");
		FILE *b1_file;
		b1_file = fopen("../../../../python_weights/b1.txt","r");
		for (int i = 0; i < OC_1; i++){
				fscanf(b1_file, "%f", &b1[i]);
		}

		printf("-----------Init W2----------- \n");
		FILE *k2_file;
		k2_file = fopen("../../../../python_weights/k2.txt","r");
		for (int i = 0; i < KH * KW * OC_1 * OC_2; i++){
				fscanf(k2_file, "%f", &w2[i]);
		}

		printf("-----------Init B2----------- \n");
		FILE *b2_file;
		b2_file = fopen("../../../../python_weights/b2.txt","r");
		for (int i = 0; i < OC_2; i++){
				fscanf(b2_file, "%f", &b2[i]);
		}

		printf("-----------Init W3----------- \n");
		FILE *w_file;
		w_file = fopen("../../../../python_weights/w.txt","r");
		for (int i = 0; i < o_dim * class_num; i++){
				fscanf(w_file, "%f", &w3[i]);
		}

		printf("-----------Init B3----------- \n");
		FILE *b_file;
		b_file = fopen("../../../../python_weights/b.txt","r");
		for (int i = 0; i < class_num; i++){
				fscanf(b_file, "%f", &b3[i]);
		}

	}

	FILE *z1_file;
	z1_file = fopen("../../../../python_weights/z1.txt","r");
	for (int i = 0; i < OC_1*H_1*W_1; i++){
			fscanf(z1_file, "%f", &z1_py[i]);
	}
	//printtensor(z1_py,"z1_py",1,OC_1, H_1, W_1);

	FILE *p1_file;
	p1_file = fopen("../../../../python_weights/p1.txt","r");
	for (int i = 0; i < OC_1*H_1_P*W_1_P; i++){
			fscanf(p1_file, "%f", &p1_py[i]);
	}
	//printtensor(p1_py,"p1_py",1,OC_1, H_1_P, W_1_P);

	FILE *z2_file;
	z2_file = fopen("../../../../python_weights/z2.txt","r");
	for (int i = 0; i < H_2*W_2*OC_2; i++){
			fscanf(z2_file, "%f", &z2_py[i]);
	}
	//printtensor(z2_py,"z2_py",1,OC_2, H_2, W_2);

	FILE *p2_file;
	p2_file = fopen("../../../../python_weights/p2.txt","r");
	for (int i = 0; i < OC_2*H_2_P*W_2_P; i++){
			fscanf(p2_file, "%f", &p2_py[i]);
	}
	//printtensor(p2_py,"p2_py",1,OC_2, H_2_P, W_2_P);
	FILE *da2_file;
	da2_file = fopen("../../../../python_weights/da2.txt","r");
	for (int i = 0; i < OC_2*H_2*W_2; i++){
			fscanf(da2_file, "%f", &da2_py[i]);
	}
	FILE *dw2_file;
	dw2_file = fopen("../../../../python_weights/dw2.txt","r");
	for (int i = 0; i < OC_2*OC_1*KH*KW; i++){
			fscanf(dw2_file, "%f", &dw2_py[i]);
	}
	FILE *w2_pad_file;
	w2_pad_file = fopen("../../../../python_weights/w2_pad.txt","r");
	for (int i = 0; i < OC_1*H_1_P*W_1_P*OC_2*H_2*W_2; i++){
			fscanf(w2_pad_file, "%f", &w2_pad_py[i]);
	}
	FILE *da1_file;
	da1_file = fopen("../../../../python_weights/da1.txt","r");
	for (int i = 0; i < OC_1*H_1*W_1; i++){
			fscanf(da1_file, "%f", &da1_py[i]);
	}
	FILE *dz1_file;
	dz1_file = fopen("../../../../python_weights/dz1.txt","r");
	for (int i = 0; i < H_1*W_1*OC_1; i++){
			fscanf(dz1_file, "%f", &dz1_py[i]);
	}
	FILE *dw3_file;
	dw3_file = fopen("../../../../python_weights/dw3.txt","r");
	for (int i = 0; i < o_dim * class_num; i++){
			fscanf(dw3_file, "%f", &dw3_py[i]);
	}

	// lr = 0.5
	FILE *k1_up_file;
	k1_up_file = fopen("../../../../python_weights/w1_update.txt","r");
	for (int i = 0; i < KH * KW * IC * OC_1; i++){
			fscanf(k1_up_file, "%f", &w1_uppy[i]);
	}
	FILE *b1_up_file;
	b1_up_file = fopen("../../../../python_weights/b1_update.txt","r");
	for (int i = 0; i < OC_1; i++){
			fscanf(b1_up_file, "%f", &b1_uppy[i]);
	}
	FILE *k2_up_file;
	k2_up_file = fopen("../../../../python_weights/w2_update.txt","r");
	for (int i = 0; i < KH * KW * OC_1 * OC_2; i++){
			fscanf(k2_up_file, "%f", &w2_uppy[i]);
	}
	FILE *b2_up_file;
	b2_up_file = fopen("../../../../python_weights/b2_update.txt","r");
	for (int i = 0; i < OC_2; i++){
			fscanf(b2_up_file, "%f", &b2_uppy[i]);
	}
	FILE *w_up_file;
	w_up_file = fopen("../../../../python_weights/w3_update.txt","r");
	for (int i = 0; i < o_dim * class_num; i++){
			fscanf(w_up_file, "%f", &w3_uppy[i]);
	}
	FILE *b_up_file;
	b_up_file = fopen("../../../../python_weights/b3_update.txt","r");
	for (int i = 0; i < class_num; i++){
			fscanf(b_up_file, "%f", &b3_uppy[i]);
	}
	printtensor(b3_uppy,"b3 updated",1,1,1,class_num);


	if(debug==true){
		printtensor(a0,"a0",1,IC,H_0,W_0);
		printtensor(w1,"w1",OC_1,IC,KH,KW);
		printtensor(b1,"b1",OC_1,1,1,1);
		printtensor(w2,"w2",OC_2,OC_1,KH,KW); // of shape 12 x 6 x 5 x 5
		printtensor(b2,"b2",OC_2,1,1,1);
		printtensor(w3,"w3",1,1,class_num, o_dim);
		printtensor(b3,"b3",1,1,1,class_num);

		printf("Forward Pass\n");
		conv2d(a0,w1,b1,true,KH,1,0,H_1,W_1,OC_1,IC,z1); // (28x28x1) * (5x5x1x6) = (24x24x6)
		printtensor(z1,"z1",1,OC_1,H_1,W_1);
		testing(z1, z1_py, OC_1*H_1*W_1, "z1");
		relu(z1,OC_1*H_1*W_1,a1);
		printtensor(a1,"a1",1,OC_1,H_1,W_1);
		maxpool2d(a1,OC_1,H_1,W_1,2,p1,i1);
		testing(p1, p1_py, OC_1*H_1_P*W_1_P, "p1"); // of shape 6 x 12 x 12
		printtensor(p1,"p1", 1,OC_1,H_1_P,W_1_P);
		printtensor_int(i1,"i1", 1,OC_1,H_1_P,W_1_P);

		conv2d(p1,w2,b2,true,KH,1,0,H_2,W_2,OC_2,OC_1,z2); // (12x12x6) * (5x5x6x12) = (8x8x12)
		testing(z2, z2_py, H_2*W_2*OC_2, "z2");
		printtensor(z2,"z2",1,OC_2,H_2,W_2);
		relu(z2, OC_2*H_2*W_2, a2);
		printtensor(a2,"a2",1,OC_2,H_2,W_2);
		maxpool2d(a2, OC_2, H_2, W_2, 2, p2, i2);
		printtensor_int(i2,"i2", 1,OC_2,H_2_P,W_2_P);
		printtensor(p2,"p2", 1,OC_2,H_2_P,W_2_P);
		testing(p2, p2_py, OC_2*H_2_P*W_2_P, "p2"); // of shape 12 x 8 x 8

		linear(p2, w3, b3, o_dim, class_num, z3);
		printtensor(z3, "z3", 1, 1, 1, class_num);
		softmax(z3, class_num, a3);
		printtensor(a3, "a3", 1, 1, 1, class_num);
		pred = indexOfMaxValue(a3, class_num);
		printf("Prediction : %d\n", pred);
		create_label(label, class_num, y);
		printtensor(y, "y", 1, 1, 1, class_num);
		loss = cross_entropy_loss(a3, y, class_num);
		printf("Loss : %f\n", loss);

		printf("Backward Pass\n");
		d_crossentropy(a3, y, class_num, dz3);
		printtensor(dz3, "dz3", 1, 1, 1, class_num);

		//int z1_size = sizeof(dz3)/sizeof(dz3[0]);
		//saveArrayToFile(dz3,z1_size, "dz3_sw.txt");

		//transpose_matmul(p2, dz3, true, false, 1, o_dim, 1, class_num, dw3);
		//transposeMatrix(dw3, o_dim, class_num, dw3_t);
		matmul_new(p2, dz3, o_dim, class_num, dw3);
		printtensor(dw3,"dw3", 1, 1, class_num, o_dim);
		testing(dw3, dw3_py, class_num*o_dim, "dw3");

		transpose_matmul(w3, dz3, true, false, class_num, o_dim, class_num, 1, df2);
		printtensor(df2,"dp2", 1, OC_2, H_2_P, W_2_P);
		upsample2d(df2,i2,2,OC_2, H_2_P, W_2_P,da2);
		printtensor(da2,"da2", 1, OC_2, H_2, W_2);
		testing(da2, da2_py, OC_2*H_2*W_2, "da2");
		d_relu(z2,OC_2*H_2*W_2);
		printtensor(z2,"z2 after d_RELU", 1, OC_2, H_2, W_2);
		hadamard(z2, da2, OC_2*H_2*W_2, dz2); // of shape 12 x 8 x 8
		biascalc(dz2, OC_2, H_2*W_2, db2);
		printtensor(db2, "db2", 1, 1, 1, OC_2);
		conv2d_back_1(p1,dz2,H_2,1,0,KH,KW,OC_2,OC_1,dw2); // (12x12x6) * (8x8x12)
		printtensor(dw2, "dw2", OC_2, OC_1, KH, KW);
		testing(dw2, dw2_py, OC_2*OC_1*KH*KW, "dw2");

		create_pad(w2, H_1_P, W_1_P, OC_1, OC_2, H_2, W_2, KH, KW, 1, 0, w2_pad);
		printtensor6d(w2_pad, "w2_pad", OC_1, H_1_P, W_1_P, OC_2, H_2, W_2);
		testing(w2_pad, w2_pad_py, OC_1*H_1_P*W_1_P*OC_2*H_2*W_2, "w2_pad");
		conv2d_back_2(w2_pad, dz2, OC_2, H_2, W_2, OC_1, H_1_P, W_1_P, dp1);
		printtensor(dp1, "dp1", 1, OC_1, H_1_P, W_1_P);
		upsample2d(dp1,i1,2,OC_1, H_1_P, W_1_P,da1);
		printtensor(da1,"da1", 1, OC_1, H_1, W_1);
		testing(da1, da1_py, OC_1*H_1*W_1, "da1");
		d_relu(z1,OC_1*H_1*W_1);
		hadamard(z1, da1, OC_1*H_1*W_1, dz1);
		testing(dz1, dz1_py,OC_1*H_1*W_1, "dz1");
		biascalc(dz1, OC_1, H_1*W_1, db1);
		printtensor(db1, "db1", 1, 1, 1, OC_1);
		conv2d_back_1(a0,dz1,H_1,1,0,KH,KW,OC_1,IC,dw1);
		printtensor(dw1, "dw1", OC_1, IC, KH, KW);

		printf("Weight Update\n");
		weightupdate(w1, dw1, lr, OC_1, IC, KH, KW);
		//printtensor(w1,"w1",OC_1,IC,KH,KW);
		testing(w1, w1_uppy,OC_1*IC*KH*KW, "updated w1"); // for lr = 0.5

		weightupdate(b1, db1, lr, 1, OC_1, 1, 1);
		//printtensor(b1,"b1",OC_1,1,1,1);
		testing(b1, b1_uppy,OC_1, "updated b1");

		weightupdate(w2, dw2, lr, OC_2, OC_1, KH, KW);
		//printtensor(w2,"w2",OC_2,OC_1,KH,KW); // of shape 12 x 6 x 5 x 5
		testing(w2, w2_uppy,OC_1*OC_2*KH*KW, "updated w2");

		weightupdate(b2, db2, lr, 1, OC_2, 1, 1);
		//printtensor(b2,"b2",OC_2,1,1,1);
		testing(b2, b2_uppy,OC_2, "updated b2");

		weightupdate(w3, dw3, lr, 1, 1, class_num, o_dim);
		printtensor(w3,"w3",1,1,class_num, o_dim);
		testing(w3, w3_uppy,class_num*o_dim, "updated w3");

		//printtensor(b3,"b3",1,1,1,class_num);
		weightupdate(b3, dz3, lr, 1, 1, 1, class_num);
		//printtensor(dz3, "dz3", 1, 1, 1, class_num);
		//printtensor(b3,"b3",1,1,1,class_num);
		testing(b3, b3_uppy,class_num, "updated b3");
	}
	else // Training for epoch x train_len
	{
		char base_path_train_image[] = "../../../../train/images/image_";
		char file_path_train_image[MAX_PATH_LENGTH];
		char base_path_train_label[] = "../../../../train/labels/label_";
		char file_path_train_label[MAX_PATH_LENGTH];

		for(int ep=0; ep<epoch; ep++){
			printf("Epoch %d\n", ep);
			for(int tr = 0; tr<train_len; tr++){
				//printf("Training for image_%d\n", tr);
				FILE *image_file;
				snprintf(file_path_train_image, sizeof(file_path_train_image), "%s%d.txt", base_path_train_image, tr);
				image_file = fopen(file_path_train_image, "r");
				if (image_file != NULL) {
					// Read data from the file as needed
					for (int i = 0; i < H_0 * W_0 * IC; i++) {
						fscanf(image_file, "%f", &a0[i]);
						a0[i] -= 0.5;
					}
					fclose(image_file);
				} else {
					// Handle file opening error
					fprintf(stderr, "Error opening file: %s\n", file_path_train_image);
					return 1;  // Exit with an error code
				}
				//printtensor(a0, "a0", 1, 1, H_0, W_0);

				FILE *label_file;
				snprintf(file_path_train_label, sizeof(file_path_train_label), "%s%d.txt", base_path_train_label, tr);
				label_file = fopen(file_path_train_label, "r");
				if (label_file != NULL) {
					// Read data from the file as needed
					fscanf(label_file, "%d", &label);
					fclose(label_file);
				} else {
					// Handle file opening error
					fprintf(stderr, "Error opening file: %s\n", file_path_train_label);
					return 1;  // Exit with an error code
				}
				//printf("Ground truth is %d\n", label);


				//printf("Forward Pass\n");
				conv2d(a0,w1,b1,true,KH,1,0,H_1,W_1,OC_1,IC,z1); // (28x28x1) * (5x5x1x6) = (24x24x6)
				relu(z1,OC_1*H_1*W_1,a1);
				maxpool2d(a1,OC_1,H_1,W_1,2,p1,i1);

				conv2d(p1,w2,b2,true,KH,1,0,H_2,W_2,OC_2,OC_1,z2); // (12x12x6) * (5x5x6x12) = (8x8x12)
				relu(z2, OC_2*H_2*W_2, a2);
				maxpool2d(a2, OC_2, H_2, W_2, 2, p2, i2);

				linear(p2, w3, b3, o_dim, class_num, z3);
				softmax(z3, class_num, a3);
				pred = indexOfMaxValue(a3, class_num);
				//printf("Prediction : %d \t Ground truth : %d\n", pred, label);
				create_label(label, class_num, y);
				loss = cross_entropy_loss(a3, y, class_num);
				//printf("Loss : %f\n", loss);
				correct_num += pred==label ? 1 : 0;
				train_acc = (float)correct_num / ((ep * train_len) + tr);
				printf("Epoch %d\t Image %d\t Prediction %d\t Ground truth %d\t Loss %f Training accuracy %f\n", ep, tr, pred, label, loss, train_acc);

				//printf("Backward Pass\n");
				d_crossentropy(a3, y, class_num, dz3);
				//transpose_matmul(p2, dz3, true, false, 1, o_dim, 1, class_num, dw3);
				//transposeMatrix(dw3, o_dim, class_num, dw3_t);
				matmul_new(p2, dz3, o_dim, class_num, dw3);

				transpose_matmul(w3, dz3, true, false, class_num, o_dim, class_num, 1, df2);
				upsample2d(df2,i2,2,OC_2, H_2_P, W_2_P,da2);
				d_relu(z2,OC_2*H_2*W_2);
				hadamard(z2, da2, OC_2*H_2*W_2, dz2); // of shape 12 x 8 x 8
				biascalc(dz2, OC_2, H_2*W_2, db2);
				conv2d_back_1(p1,dz2,H_2,1,0,KH,KW,OC_2,OC_1,dw2); // (12x12x6) * (8x8x12)

				create_pad(w2, H_1_P, W_1_P, OC_1, OC_2, H_2, W_2, KH, KW, 1, 0, w2_pad);
				conv2d_back_2(w2_pad, dz2, OC_2, H_2, W_2, OC_1, H_1_P, W_1_P, dp1);
				upsample2d(dp1,i1,2,OC_1, H_1_P, W_1_P,da1);
				d_relu(z1,OC_1*H_1*W_1);
				hadamard(z1, da1, OC_1*H_1*W_1, dz1);
				biascalc(dz1, OC_1, H_1*W_1, db1);
				conv2d_back_1(a0,dz1,H_1,1,0,KH,KW,OC_1,IC,dw1);

				//printf("Weight Update\n");
				weightupdate(w1, dw1, lr, OC_1, IC, KH, KW);
				weightupdate(b1, db1, lr, 1, OC_1, 1, 1);
				weightupdate(w2, dw2, lr, OC_2, OC_1, KH, KW);
				weightupdate(b2, db2, lr, 1, OC_2, 1, 1);
				weightupdate(w3, dw3, lr, 1, 1, class_num, o_dim); // should have updated dw3_t
				weightupdate(b3, dz3, lr, 1, 1, 1, class_num);
				//printtensor(b3,"b3",1,1,1,class_num);
			}
		}
	}

	// Free arrays
	free(a0);

	free(z1);
	free(a1);
	free(p1);
	free(i1);

	free(z2);
	free(a2);
	free(p2);
	free(i2);
	free(f2);

	free(z3);
	free(a3);

	free(y);

	free(w1);
	free(w2);
	free(w3);

	free(dz3);
	free(dw3);

	free(df2);
	free(dp2);
	free(da2);
	free(dz2);
	free(dw2);
	free(w2_pad);

	free(dp1);
	free(da1);
	free(dz1);
	free(dw1);

  if (correct) {
    printf("Test successful\n");
    return 0;
  } else {
    printf("Test unsuccessful\n");
    return -1;
  }


}

