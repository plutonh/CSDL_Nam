/*!
s *  Copyright (c) 2018 by Contributors
 * \file gemm.h
 * \brief Matrix-Matrix Multiply HLS design.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ap_fixed.h>


#ifndef _MATRIXMUL_H_
#define _MATRIXMUL_H_


#ifndef NO_SIM

typedef int DTYPE;

#define M 8
#define N 8
#define O 8

void mm(
		volatile DTYPE *A,
		volatile DTYPE *B,
		volatile DTYPE *AB);

#endif  // NO_SIM
#endif
