/*!
 *  Copyright (c) 2018 by Contributors
 * \file gemm.h
 * \brief Matrix-Matrix Multiply HLS design.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ap_fixed.h>

#ifndef _ENCODER_H_
#define _ENCODER_H_

/* 
encoder query size = S = HW = 480
decoder query size = N = 100 
encoder decoder head size = M 

*/

struct Encoder{
	int norm_off1;
	int norm_off2;
};

struct Linear{
    int M;
    int N;
    int O;
    bool relu;
    int in_off;
    int out_off;
    int w_off;
    int b_off;
};

struct Head{
    int in_off1;
    int in_off2;
    int out_off;
    int q_off;
    int k_off;
    int v_off;
    int w_off_q;
    int w_off_k;
    int w_off_v;
};


struct Network{
    bool encoder;
    int layer_num;
    int embed_num;
    int head_num;
    int ffn_num;
    int seq_Q;
    int seq_KV;
    int d_model;
    int d_ffn;
    int d_s;
    int d_k;
};

void enc(
    Network net,
	volatile Encoder *encoders,
    volatile Head *heads,
	volatile Linear *layers,
    volatile float *io,
	volatile float *query,
	volatile float *key,
	volatile float *value,
	volatile float *pre_buff,
	volatile float *weight_q,
	volatile float *weight_k,
	volatile float *weight_v,
    volatile float *weight_o,
	volatile float *weight_ffn,
	volatile float *alpha,
	volatile float *beta);



void gemm(
    int M,
    int N, 
    int O,
    bool relu,
    volatile float *a,
    volatile float *b,
    volatile float *c);

void sdp_attn(
    int M,
    int N, 
    int O,
    int d_k,
    volatile float *a,
    volatile float *b,
    volatile float *c);

#endif
