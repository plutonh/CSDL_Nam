/*!
 *  Copyright (c) 2018 by Contributors
 * \file vadd.h
 * \brief Vector Add HLS design.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <cstring>


#ifndef PART1_VADD_H_
#define PART1_VADD_H_

#define VECTOR_LEN 1024

void vadd(
		float *a,
		float *b,
		float *c);

#endif  // PART1_VADD_H_
