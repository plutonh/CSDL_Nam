#include <stdio.h>
#include <math.h>

float mse(float p[], float q[], int N) {
    float error = 0.0;
    for(int i = 0; i < N; i++)
        error += pow((q[i] - p[i]), 2);
    return error / N;
}

float cee(float p[], float q[], int N) {
    float error = 0.0;
    for(int i = 0; i < N; i++) {
        error -= p[i] * log(q[i]);
    }
    return error / N;
}

int main(void) {
    float q[] = {0.1, 0.2, 0.3, 0.15, 0.15};
    float p[] = {0.0, 0.0, 1.0, 0.0, 0.0};
    float cee_loss = cee(p, q, sizeof(p) / sizeof(float));
    printf("cee_loss: %f\n", cee_loss);
}