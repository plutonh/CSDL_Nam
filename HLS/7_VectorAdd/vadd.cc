/*!
 *  Copyright (c) 2018 by Contributors
 * \file vadd.cc
 * \brief Vector Add HLS design.
 */

#include "./vadd.h"

void vadd(
  float *a,
  float *b,
  float *c) {
#pragma HLS INTERFACE m_axi port = a depth = VECTOR_LEN offset = slave bundle = a_port
#pragma HLS INTERFACE m_axi port = b depth = VECTOR_LEN offset = slave bundle = b_port
#pragma HLS INTERFACE m_axi port = c depth = VECTOR_LEN offset = slave bundle = c_port

#pragma HLS INTERFACE s_axilite port = a bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = b bundle = CONTROL_BUS
#pragma HLS INTERFACE s_axilite port = c bundle = CONTROL_BUS

#pragma HLS INTERFACE s_axilite port = return bundle = CONTROL_BUS

	//make memory buffer
	float buffer_a[VECTOR_LEN];
	float buffer_b[VECTOR_LEN];
	float buffer_c[VECTOR_LEN];

	//copy input to memory buffer
	memcpy(buffer_a, const_cast<float*>(a), sizeof(float)*VECTOR_LEN);
	memcpy(buffer_b, const_cast<float*>(b), sizeof(float)*VECTOR_LEN);

    // Vector add loop
	for (int i = 0; i < VECTOR_LEN; i++) {
		buffer_c[i] = buffer_a[i] + buffer_b[i];
	}
	//copy memory buffer to input
	memcpy(const_cast<float*>(c), const_cast<float*>(buffer_c), sizeof(float)*VECTOR_LEN);
}
