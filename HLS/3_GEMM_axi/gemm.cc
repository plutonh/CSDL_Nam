#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <stdbool.h>
#include "./gemm.h"

#define M 8
#define N 8
#define O 8

void mm(
		volatile DTYPE *A,
		volatile DTYPE *B,
		volatile DTYPE *AB){
#pragma HLS INTERFACE m_axi port = A depth = M*N offset = slave bundle = A_port
#pragma HLS INTERFACE m_axi port = B depth = O*N offset = slave bundle = B_port
#pragma HLS INTERFACE m_axi port = AB depth = M*O offset = slave bundle = AB_port

#pragma HLS INTERFACE s_axilite port = A bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = B bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = AB bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = return bundle = CONTROL_BUS

	DTYPE A_buff[M][N];
	DTYPE B_buff[O][N];
	DTYPE AB_buff[M][O];

	// Load A & B
	memcpy(&A_buff[0][0], const_cast<int*>(A), sizeof(int) * M * N);
	memcpy(&B_buff[0][0], const_cast<int*>(B), sizeof(int) * O * N);


	row: for(int i = 0; i < M; ++i) {
		col: for(int j = 0; j < O; ++j) {
			DTYPE ABij = 0;
			product: for(int k = 0; k < N; ++k) {
				ABij += A_buff[i][k] * B_buff[k][j];
				//ABij += A[i*N+k] * B[k*O+j];
			}
			AB_buff[i][j] = ABij;
			//AB[i*O+j] = ABij;
		}
	}

	// Store C
	memcpy(const_cast<DTYPE*>(AB), const_cast<DTYPE*>(&AB_buff[0][0]), sizeof(DTYPE) * M * O);


}
