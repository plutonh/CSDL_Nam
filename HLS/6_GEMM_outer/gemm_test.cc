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
//#include "../src/test_lib.h"

unsigned globalSeed;

int main(void) {

  // Test outcome
  bool correct = true;

  // Reference output
  float c_ref[M][O];

  // Input and output array initialization
  float *a = (float *) malloc(sizeof(float) * M * N);
  float *b = (float *) malloc(sizeof(float) * O * N);
  float *c = (float *) malloc(sizeof(float) * M * O);
  for (int m = 0; m < M; m++) {
    for (int n = 0; n < N; n++) {
      a[m * N + n] = (float)(rand() % 1024 - 512) / 512;
    }
  }
  for (int o = 0; o < O; o++) {
    for (int n = 0; n < N; n++) {
      b[o * N + n] = (float)(rand() % 1024 - 512) / 512;
    }
  }
  for (int m = 0; m < M; m++) {
    for (int o = 0; o < O; o++) {
      c[m * O + o] = 0;
      c_ref[m][o] = 0;
    }
  }

  // Invoke the matrix multiply module
  gemm(a, b, c);


  // Check output
  for (int m = 0; m < M; m++) {
    for (int o = 0; o < O; o++) {
      for (int n = 0; n < N; n++) {
        c_ref[m][o] += a[m * N + n] * b[o * N + n];
      }
      if (c_ref[m][o] != c[m * O + o]) {
        correct = false;
        printf("%f\t%f\n", c_ref[m][o], c[m*O + o]);
      }
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
