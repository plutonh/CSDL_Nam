/*!
 *  Copyright (c) 2018 by Contributors
 * \file vadd_test.cpp
 * \brief Simulation tests for the vector add design.
 */

#include <stdio.h>
#include <stdlib.h>
#include <iostream>

#include "vadd.h"

// unsigned globalSeed;

int main(void) {

  // Test outcome
  bool correct = true;

  // Input and output array initialization
  float *a = (float *) malloc(sizeof(float) * VECTOR_LEN);
  float *b = (float *) malloc(sizeof(float) * VECTOR_LEN);
  float *c = (float *) malloc(sizeof(float) * VECTOR_LEN);
  
  // Input Initialization
  for (int i = 0; i < VECTOR_LEN; i++) {
    a[i] = (float)(rand() % 1024) - 512;
    b[i] = (float)(rand() % 1024) - 512;
    c[i] = 0;
  }

  // Invoke the vector add module
  vadd(a, b, c);

  // Check the output
  for (int i = 0; i < VECTOR_LEN; i++) {
    if (c[i] != a[i] + b[i]) {

      correct = false;
    }
  }

  // Free arrays
  free(a);
  free(b);
  free(c);

  if (correct) {
    printf("Test successful\n");
    return 0;
  } else {
    printf("Test unsuccessful\n");
    return -1;
  }
}
