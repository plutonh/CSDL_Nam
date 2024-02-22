/*!
 *  Copyright (c) 2018 by Contributors
 * \file gemm_test.cc
 * \brief Simulation tests for the matrix-matrix multiply design.
 */

#include <stdio.h>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <math.h>
#include "encoder.h"

unsigned globalSeed;


static void softmax(float *input, int input_len){
	int i;
	float m;
	//int input_len = 480*480;
	//int input_len = sizeof(input)/sizeof(float);
	/* Find maximum value from input array */
	m = input[0];
	for (i = 1; i < input_len; i++){
		if (input[i] > m){
			m = input[i];
		}
	}

	float sum = 0;
	for (i = 0; i < input_len; i++){
		sum += expf(input[i]-m);
	}

	for (i = 0; i < input_len; i++){
		input[i] = expf(input[i] - m - log(sum));
	}
	float total = 0;
	for (i = 0; i < input_len; i++){
		//printf("%f\n", input[i]);
		total += input[i];
	}
	//printf("%d\t%f\n", input_len, total);
	return;

}

int main(void) {
	const bool encoder = true;
	const int layer_num = 6;
	const int embed_num = 3;
	const int head_num = 8; //multi-head size
    const int ffn_num = 2;
	const int seq_Q = 480;
	const int seq_KV = 480;
	//const int key_sec = 100;
	const int d_model = 512;
	const int d_ffn = 2048;
	const int d_s = 64;
	const int d_k = 8; //root(d_k)

	Network net = {encoder, layer_num, embed_num, head_num, ffn_num, seq_Q, seq_KV, d_model, d_ffn, d_s, d_k};

	printf("%d\n", net.encoder);
	printf("%d\n", net.layer_num);
	printf("%d\n", net.embed_num);
	printf("%d\n", net.head_num);
	printf("%d\n", net.seq_Q);
	printf("%d\n", net.seq_KV);
	printf("%d\n", net.d_model);
	printf("%d\n", net.d_ffn);
	printf("%d\n", net.d_s);
	printf("%d\n", net.d_k);

    //embedding Query, Key, Value
	Head* heads = (Head *)malloc(sizeof(Head) * 9);
    heads[0] = Head{0, 0, 0, 0, 0, 0, 0, 0, 0};
    heads[1] = Head{0, 0, 0, 0, 0, 0, 0, 0, 0};
    heads[2] = Head{0, 0, 0, 0, 0, 0, 0, 0, 0};
    heads[3] = Head{0, 0, 0, 0, 0, 0, 0, 0, 0};
    heads[4] = Head{0, 0, 0, 0, 0, 0, 0, 0, 0};
    heads[5] = Head{0, 0, 0, 0, 0, 0, 0, 0, 0};
    heads[6] = Head{0, 0, 0, 0, 0, 0, 0, 0, 0};
    heads[7] = Head{0, 0, 0, 0, 0, 0, 0, 0, 0};

    Linear* layers = (Linear *)malloc(sizeof(Linear) * 3);
    layers[0] = Linear{seq_Q, d_model, d_ffn, true, 0, 0, 0, 0};
    layers[1] = Linear{seq_Q, d_ffn, d_model, false, 0, 0, 0, 0};
	layers[2] = Linear{0, 0, 0, 0, 0, 0, 0, 0};	// dummy layer

	Encoder* encoders = (Encoder *)malloc(sizeof(Encoder) * 7);
	encoders[0] = Encoder{0, 0};
	encoders[1] = Encoder{0, 0};
	encoders[2] = Encoder{0, 0};
	encoders[3] = Encoder{0, 0};
	encoders[4] = Encoder{0, 0};
	encoders[5] = Encoder{0, 0};
	encoders[6] = Encoder{0, 0};



	// Test outcome
	bool correct = true;

	// Input and output array initialization
	float *mem = (float *) malloc(sizeof(float) * 2457600);
	float *mem_t = (float *) malloc(sizeof(float) * 2457600);
	//float *mem_enc = (float *) malloc(sizeof(float) * 4915200);
	float *query = (float *) malloc(sizeof(float) * 245760);
	float *key = (float *) malloc(sizeof(float) * 245760);
	float *value = (float *) malloc(sizeof(float) * 245760);
	float *query_t = (float *) malloc(sizeof(float) * 245760);
	float *key_t = (float *) malloc(sizeof(float) * 245760);
	float *value_t = (float *) malloc(sizeof(float) * 245760);
	float *pre_buff = (float *) malloc(sizeof(float) * 245760);
	float *pre_buff_t = (float *) malloc(sizeof(float) * 245760);
    // float query_t[245760];
    // float key_t[245760];
    // float value_t[245760];
    //float pre_buff_t[seq_Q*d_model];
    float QK_buff_t[seq_Q*seq_KV];

    float *weight_q = (float *) malloc(sizeof(float) * 262144);
	float *weight_k = (float *) malloc(sizeof(float) * 262144);
	float *weight_v = (float *) malloc(sizeof(float) * 262144);
    float *weight_o = (float *) malloc(sizeof(float) * 262144);
    float *weight_ffn = (float *) malloc(sizeof(float) * 2097152);
    float *alpha = (float *) malloc(sizeof(float) * 5760);
    float *beta = (float *) malloc(sizeof(float) * 5760);

	int offset = 0;
    int w_off_q = 0;
	int w_off_k = 0;
	int w_off_v = 0;
	int w_off_o = 0;
	// input initialize 
    // self-attention: sec_Q = sec_KV = 480 (encoder)
    // self-attention: sec_Q = sec_KV = 100 (decoder)
    // cross-attention: sec_Q = 100 (from decoder), sec_KV = 480 (from encoder)


	for (int i = 0; i < net.seq_Q; i++) {
		for (int j = 0; j < net.d_model; j++) {
			mem[offset] = mem_t[offset] = (float)(rand() % 1024 - 512) / 512;
			//printf("%f\n", mem[offset]);
			offset++;
		}
	}




	// Weight initialize
	for (int i = 0; i < net.d_model; i++) {
		for (int j = 0; j < net.d_model; j++) {
			weight_q[w_off_q] = (float)(rand() % 1024 - 512) / 512;
			weight_k[w_off_k] = (float)(rand() % 1024 - 512) / 512;
			weight_v[w_off_v] = (float)(rand() % 1024 - 512) / 512;
			weight_o[w_off_o] = (float)(rand() % 1024 - 512) / 512;
			//printf("%f\n", weight_q[w_off_q]);
			w_off_q++;
			w_off_k++;
			w_off_v++;
			w_off_o++;
		}
	}

    int w_offset = 0;
    for(int l = 0; l < net.ffn_num; l++){
        for (int i = 0; i < layers[l].N * layers[l].O; i++){
            weight_ffn[w_offset++] = (float)(rand() % 1024 - 512) / 512;
        }
        layers[l].out_off = layers[l].in_off + layers[l].M* layers[l].N;
        layers[l+1].in_off = layers[l].out_off;
        layers[l+1].w_off = w_offset;
		printf("%d\n", layers[l].in_off);
		printf("%d\n", layers[l].out_off);
		printf("%d\n", layers[l].w_off);
    }
    layers[1].out_off = 0;

    //int b_offset = 0;
    int a_offset = 0;
    for(int l = 0; l < net.layer_num; l++){
    	for(int n = 0; n < 2; n++){
    		for(int a = 0; a < net.seq_Q; a++){
    			//alpha[l*2*net.seq_Q + n*net.seq_Q+ a] = 1;
    			//beta[l*2*net.seq_Q + n*net.seq_Q+ a] = 1;
    			alpha[l*2*net.seq_Q + n*net.seq_Q+ a] = 0.000001;
    			beta[l*2*net.seq_Q + n*net.seq_Q+ a] = (float)(rand() % 1024 - 512) / 512;
    			//beta[l*2*net.seq_Q + n*net.seq_Q+ a] = 0.0002;
    		}
    		encoders[l].norm_off2 = encoders[l].norm_off1 + net.seq_Q;
    		encoders[l+1].norm_off1 = encoders[l].norm_off2 + net.seq_Q;
    	}
    	printf("%d\t%d\n", encoders[l].norm_off1, encoders[l].norm_off2);
    }

/*
    for(int a = 0; a < net.seq_Q*12; a++){
    	alpha[a] = 0.00001;
    	beta[a] = (float)(rand() % 1024 - 512) / 512;
    }
*/

    for(int h = 0; h < net.head_num-1; h++){
        //{in_off1, in_off2, out_off, q_off, k_off, v_off, w_off_q, w_off_k, w_off_v}
        heads[0].out_off = heads[0].in_off1 + net.seq_Q * net.d_model;
        heads[h+1].out_off = heads[h].out_off + net.seq_Q * net.d_s;
        heads[h+1].q_off = heads[h].q_off + net.seq_Q * net.d_s;
        heads[h+1].k_off = heads[h].k_off + net.seq_KV * net.d_s;
        heads[h+1].v_off = heads[h].v_off + net.seq_KV * net.d_s;
        heads[h+1].w_off_q = heads[h].w_off_q + net.d_model*net.d_s;
        heads[h+1].w_off_k = heads[h].w_off_k + net.d_model*net.d_s;
        heads[h+1].w_off_v = heads[h].w_off_v + net.d_model*net.d_s;
        //printf("%d\t%d\t%d\t%d\t%d\n",h, heads[h].in_off1, heads[h].out_off, heads[h].q_off, heads[h].w_off_q);
    }



    //make test output
    /* MSA */
    int test = 0;
    for(int e = 0 ; e < net.layer_num; e++){
        printf("==============================\n");
    	printf("%d\t%d\n", e, net.layer_num);
    	Encoder en = encoders[e];
    	for (int i = 0; i < net.seq_Q * net.d_model; i++) {
    			pre_buff_t[i] = mem_t[i];
    	}
        for(int h = 0; h < net.head_num; h++){
            Head lt = heads[h];
            //printf("%d\n", lt.w_off_q);
            //Compute Embedding: Q x W_Q = Q_1 (single head) [dim_Q x d_model] x [d_model x d_s]
            //Compute Embedding: K x W_K = K_1 (single head) [dim_K x d_model] x [d_model x d_s]
            //Compute Embedding: V x W_V = V_1 (single head) [dim_k x d_model] x [d_model x d_s]
            for(int m = 0; m < net.seq_Q; m++){
                for(int o = 0; o < net.d_s; o++){
                	float sum_q = 0;
                	float sum_k = 0;
                	float sum_v = 0;
                    for(int n = 0; n < net.d_model; n++){
                    	int w_off_qq = lt.w_off_q;
                    	int w_off_kk = lt.w_off_k;
                    	int w_off_vv = lt.w_off_v;
                        sum_q += mem_t[m*net.d_model + n] * weight_q[w_off_qq + n*net.d_s + o];
                        sum_k += mem_t[m*net.d_model + n] * weight_k[w_off_kk + n*net.d_s + o];
                        sum_v += mem_t[m*net.d_model + n] * weight_v[w_off_vv + n*net.d_s + o];
                        //if(test<10){
                        //	printf("%d\t%f\t%f\n", w_off_qq + n*net.d_s + o, weight_q[w_off_qq + n*net.d_s + o], sum_q);
                        //test++;
                        //}
                    }

                    //printf("%f\t%f\t%f\n", sum_q, sum_k, sum_v);
                    query_t[lt.q_off + m*net.d_s + o] = sum_q; 
                    key_t[lt.k_off + m*net.d_s + o] = sum_k;
                    value_t[lt.v_off + m*net.d_s + o] = sum_v;
                }
            }
        }

        for(int h = 0; h < net.head_num; h++){
            Head lt = heads[h];
            //Compute (Q * K_T) --> scaling --> exp
            for(int m = 0; m < net.seq_Q; m++){
                for(int o = 0; o < net.seq_KV; o++){
                    QK_buff_t[m*net.seq_KV + o] = 0; 
                }
            } 
            for(int m = 0; m < net.seq_Q; m++){
                float output = 0;
                for(int o = 0; o < net.seq_KV; o++){
                    float sum = 0;
                    for(int n = 0; n < net.d_s; n++){
                        sum += query_t[lt.q_off + m*net.d_s + n] * key_t[lt.k_off + o*net.d_s + n];
                    }
                    output = float(sum/net.d_k);
                    QK_buff_t[m*net.seq_KV + o] = output;
                }
            }
            //Softmax 
            softmax(QK_buff_t, 480*480);
            //Compute (QK * V)
            for(int m = 0; m < net.seq_Q; m++){
                for(int o = 0; o < net.d_s; o++){
                    float attn = 0;
                    for(int n = 0; n < net.seq_KV; n++){

                        attn += QK_buff_t[m*net.seq_KV + n] * value_t[lt.v_off + n*net.d_s + o];
                    }
                    mem_t[lt.out_off + m*net.d_s + o] = attn;
                }
            }
        }


        //Computpe Attention Output Matrix

        for(int m = 0; m < net.seq_Q; m++){
            for(int o = 0; o < net.d_model; o++){
                float sum = 0;
                for(int n = 0; n < net.d_model; n++){
                    sum += mem_t[heads[0].out_off + m*net.d_model + n] * weight_o[n*net.d_model + o];
                }
                // Add & Norm
                //mem_t[m*net.d_model + o] = sum + pre_buff_t[m*net.d_model + o];

                mem_t[m*net.d_model + o] = alpha[en.norm_off1 + m]*(sum + pre_buff_t[m*net.d_model +o]) + beta[en.norm_off1 + m];
                printf("%f\n", mem_t[m*net.d_model+o]);
            }
        }

	    for (int i = 0; i < net.seq_Q * net.d_model; i++) {
	    		pre_buff_t[i] = mem_t[i];
	    }

        //FFN

        for(int l = 0; l < net.ffn_num; l++){
            Linear lt = layers[l];
            int test_ = 0;
            for (int m = 0; m < lt.M; m++){
                for(int o = 0; o < lt.O; o++){
                	float sum = 0;
                    for(int n = 0; n < lt.N; n++){
                        sum += mem_t[lt.in_off + m*lt.N + n] * weight_ffn[lt.w_off + n*lt.O + o];
                    }
                    if (lt.relu){
                        mem_t[lt.out_off + m*lt.O + o] = sum > 0 ? sum : 0;
                    }
                    else{
                        //mem_t[m*lt.O + o] = sum;
                    	mem_t[m*lt.O + o] = alpha[en.norm_off2 + m]*(sum + pre_buff_t[m*lt.O + o]) + beta[en.norm_off2 + m];

                    	//if (test_ < 10){
                    	//	printf("%f\t%f\t%f\n", alpha[en.norm_off2 + m], beta[en.norm_off2 + m],mem_t[m*lt.O+o]);
                    	//	test_++;
                    	//}
                    }
                }
            }
        }

    }

	// Invoke the matrix multiply module
	enc(net, encoders, heads, layers, mem, query, key, value, pre_buff, weight_q, weight_k, weight_v, weight_o, weight_ffn, alpha, beta);
    

	// Check output
    int output_addr = heads[0].in_off1;
    for (int s = 0; s < net.seq_Q; s++){
        for (int d = 0; d < net.d_model; d++){
        	//printf("%d\t%f\t%f\n", output_addr + s*d_model + d, mem[output_addr + s*d_model + d], mem_t[output_addr + s*d_model + d]);
        	if(mem[output_addr + s*d_model + d] != mem_t[output_addr + s*d_model + d]){
                correct = false;
                printf("%f\t%f\n", mem[output_addr + s*d_model + d], mem_t[output_addr + s*d_model + d]);
            }
        }
    } 
    int pre_test = 0;
	printf("========pre_buff==========\n");
    for (int s = 0; s < net.seq_Q; s++){
        for (int d = 0; d < net.d_model; d++){
        	if (pre_test < 10){
        		printf("%f\t%f\n", pre_buff[s*d_model + d], pre_buff_t[s*d_model + d]);
        		pre_test++;
        	}
        	if(pre_buff[s*d_model + d] != pre_buff_t[s*d_model + d]){
                correct = false;
                //printf("%f\t%f\n", pre_buff[s*d_model + d], pre_buff_t[s*d_model + d]);
            }
        }
    }

	// Free arrays
	free(heads);
	free(mem);
	free(mem_t);
    free(query);
    free(query_t);
    free(key);
    free(key_t);
    free(value);
    free(value_t);
	free(weight_q);
	free(weight_k);
	free(weight_v);
    free(weight_o);
    free(weight_ffn);
    free(alpha);
    free(beta);
    free(pre_buff_t);
    free(pre_buff);
	
    if (correct) {
		printf("Test successful\n");
		return 0;
	} else {
		printf("Test unsuccessful\n");
		return -1;
	}
}
