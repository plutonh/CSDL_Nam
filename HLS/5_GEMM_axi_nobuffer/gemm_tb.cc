/*!
 *  Copyright (c) 2018 by Contributors
 * \file gemm_test.cc
 * \brief Simulation tests for the matrix-matrix multiply design.
 */

#include <stdio.h>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>

#include "gemm.h"


unsigned globalSeed;

// Golden output generation
void mm_sw(volatile DTYPE *A, volatile DTYPE *B, volatile DTYPE *out) {
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < O; j++) {
            DTYPE sum = 0;
            for (int k = 0; k < N; k++) {
                sum += A[i * N + k] * B[k * O + j];
            }
            out[i * O + j] = sum;
        }
    }
}

int main(void) {
	DTYPE *A = (DTYPE *) malloc(sizeof(DTYPE) * M * N);
	DTYPE *B = (DTYPE *) malloc(sizeof(DTYPE) * O * N);
	DTYPE *AB_hw = (DTYPE *) malloc(sizeof(DTYPE) * M * O);
	DTYPE *AB_sw = (DTYPE *) malloc(sizeof(DTYPE) * M * O);

	// Initialization
	for (int m = 0; m < M; m++) {
	    for (int n = 0; n < N; n++) {
	      A[m * N + n] = rand() % 6;
	    }
	  }
	for (int o = 0; o < O; o++) {
	    for (int n = 0; n < N; n++) {
	      B[o * N + n] = rand() % 6;
	    }
	}
	for (int m = 0; m < M; m++) {
	    for (int o = 0; o < O; o++) {
	      AB_sw[m * O + o] = 0;
	      AB_hw[m * O + o] = 0;
	    }
	}


	// Kernel launch - hardware output generation
	mm((DTYPE *)A, (DTYPE *)B, (DTYPE *)AB_hw);

	// Software output generation
	mm_sw((DTYPE *)A, (DTYPE *)B, (DTYPE *)AB_sw);

	// Correctness check
	int fail = 0;
	for(int i = 0; i<M; i++){
		for(int j = 0; j<O; j++){
			printf("Element row %d column %d : SW output - %d HW output - %d\n", i, j, AB_sw[i*O + j], AB_hw[i*O + j]);
			if(AB_sw[i*O + j] != AB_hw[i*O + j]){
				fail = 1;
			}
		}
	}

	if(fail ==1){
		printf("fail\n");
	}
	else{
		printf("pass\n");
	}
}
