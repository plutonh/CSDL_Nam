/*!
 *  Copyright (c) 2018 by Contributors
 * \file gemm.h
 * \brief Matrix-Matrix Multiply HLS design.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifndef PART2_GEMM_H_
#define PART2_GEMM_H_

#define M 8
#define N 8
#define O 8

#ifndef NO_SIM
void gemm(
  volatile float *a,
  volatile float *b,
  volatile float *c);
#endif  // NO_SIM


#endif  // PART2_GEMM_H_
