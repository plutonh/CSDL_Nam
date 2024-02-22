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
void mm_sw(DTYPE A[M][N], DTYPE B[O][N], DTYPE out[M][O]){
	DTYPE sum = 0;
	for(int i = 0; i<M; i++){
		for(int j = 0; j<O; j++){
			sum = 0;
			for(int k = 0; k<N; k++){
				sum = sum + A[i][k]*B[k][j];
			}
			out[i][j] = sum;
		}
	}
}

int main(void) {
	DTYPE A[M][N], B[O][N];
	DTYPE AB_sw[M][O], AB_hw[M][O];

	// Data initialization
	init_A:
	for(int i = 0; i < M; i++){
		for(int j = 0; j < N; j++){
			A[i][j] = rand()%8;
		}
	}

	init_B:
	for(int i = 0; i < O; i++){
		for(int j = 0; j < N; j++){
			B[i][j] = rand()%8;
		}
	}

	init_out:
	for(int i = 0; i < M; i++){
		for(int j = 0; j < O; j++){
			AB_sw[i][j] = 0;
			AB_hw[i][j] = 0;
		}
	}


	// Kernel launch - hardware output generation
	mm(A, B, AB_hw);

	// Software output generation
	mm_sw(A, B, AB_sw);

	// Correctness check
	int fail = 0;
	for(int i = 0; i<M; i++){
		for(int j = 0; j<O; j++){
			printf("Element row %d column %d : SW output - %d HW output - %d\n", i, j, AB_sw[i][j], AB_hw[i][j]);
			if(AB_sw[i][j] != AB_hw[i][j]){
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
