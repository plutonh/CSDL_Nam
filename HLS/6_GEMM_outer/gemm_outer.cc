/*!
 *  Copyright (c) 2018 by Contributors
 * \file gemm.cc
 * \brief Matrix-Matrix Multiply HLS design.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "./gemm.h"

// This module performs matrix multiplication of matrices A and B
// Where A is an (m,n) and B is an (n,o) matrix.
// We assume that B is stored transposed, resulting in a (o,n) shape.
void gemm(
  volatile float *a,
  volatile float *b,
  volatile float *c) {
  #pragma HLS INTERFACE m_axi port = a depth = 64 offset = slave bundle = a_port
  #pragma HLS INTERFACE m_axi port = b depth = 64 offset = slave bundle = b_port
  #pragma HLS INTERFACE m_axi port = c depth = 64 offset = slave bundle = c_port

  #pragma HLS INTERFACE s_axilite port = a bundle = CONTROL_BUS
  #pragma HLS INTERFACE s_axilite port = b bundle = CONTROL_BUS
  #pragma HLS INTERFACE s_axilite port = c bundle = CONTROL_BUS
  #pragma HLS INTERFACE s_axilite port = return bundle = CONTROL_BUS

  float a_buff[M][N];
  float b_buff[O][N];
  float c_buff[M][O];

  // TODO1 : fill the array partition part

  #pragma HLS ARRAY_PARTITION variable=a_buff dim=2 type=complete
  #pragma HLS ARRAY_PARTITION variable=b_buff dim=1 type=complete
  #pragma HLS ARRAY_PARTITION variable=c_buff dim=0 type=complete
  
  //

  memcpy(&a_buff[0][0], const_cast<float*>(a), sizeof(float) * M * N);
  memcpy(&b_buff[0][0], const_cast<float*>(b), sizeof(float) * O * N);
  
  // TODO2 : Optimize the MM computation pipeline as much as possible
  // Matrix Multiplication
  for (int m = 0; m < M; m ++) {
  	  for (int o = 0; o < O; o++) {
  		c_buff[m][o] = 0;
  	  }
  	}

  for (int n = 0; n < N; n++) {
#pragma HLS PIPELINE II =2
    for (int m = 0; m < M; m ++) {
#pragma HLS UNROLL
      for (int o = 0; o < O; o++) {
    	c_buff[m][o] += a_buff[m][n] * b_buff[o][n];
      }
    }
  }

  // Store C
  memcpy(const_cast<float*>(c), const_cast<float*>(&c_buff[0][0]), sizeof(float) * M * O);
}
