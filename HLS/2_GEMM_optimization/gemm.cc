#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <stdbool.h>
#include "./gemm.h"

#define M 8
#define N 8
#define O 8

void mm(int A[M][N], int B[O][N], int AB[M][O]) {
#pragma HLS ARRAY_PARTITION variable=A complete dim=2
#pragma HLS ARRAY_PARTITION variable=B complete dim=0
#pragma HLS ARRAY_PARTITION variable=AB complete dim=2
	row: for(int i = 0; i < M; ++i) {
#pragma HLS PIPELINE II=1
		col: for(int j = 0; j < O; ++j) {
			int ABij = 0;
			product: for(int k = 0; k < N; ++k) {
				ABij += A[i][k] *B[k][j];
			}
			AB[i][j] = ABij;
		}
	}
}
