/*!
 *  Copyright (c) 2018 by Contributors
 * \file msa.cc
 * \brief Matrix-Matrix Multiply HLS design.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "./encoder.h"

#define MM 16
#define NN 16
#define OO 16

void gemm(
        int M,
        int N, 
        int O,
        bool relu,
        volatile float *a,
        volatile float *b,
        volatile float *c){

    float a_buff[MM][NN];
    float b_buff[NN][OO];
    float c_buff[MM][OO];
    
    for(int m = 0; m < M; m += MM){
        for(int o = 0; o < O; o += OO){
            init_output:
            for(int mm = 0; mm < MM; mm++){
                for(int oo=0; oo < OO; oo++){
                    c_buff[mm][oo] = 0;
                }
            }//end of initialization

            for(int n=0; n < N; n += NN){
                load_input:
                for(int mm = 0; mm < MM; mm++){
                    for(int nn = 0; nn < NN; nn++){
                        float a_tmp = a[(m+mm)*N + (n+nn)];
                        bool cond = (m+mm) < M && (n+nn) < N;
                        a_buff[mm][nn] = cond ? a_tmp : 0;
                    }
                }//end of input
                
                load_weight:
                for(int nn = 0; nn < NN; nn++){
                    for(int oo = 0; oo  < OO; oo++){
                        float b_tmp = b[(n+nn)*O + (o+oo)];
                        bool cond = (n+nn) < N && (o+oo) < O;
                        b_buff[nn][oo] = cond ? b_tmp : 0; 
                    }
                }//end of weight
                
                matmul:
                for(int mm = 0; mm < MM; mm++){
                    for(int oo = 0; oo < OO; oo++){
                        for(int nn = 0; nn < NN; nn++){
                            c_buff[mm][oo] += a_buff[mm][nn] * b_buff[nn][oo];
                        }
                    }
                }//end of matmul
            }// end of n_loop
            
            store_output:
            for(int mm = 0; mm < MM; mm++){
                for(int oo=0; oo < OO; oo++){
                    float c_tmp = c_buff[mm][oo];
                    bool cond = (m+mm) < M && (o+oo) < O;
                    if (cond){
                        c[(m+mm)*O+(o+oo)] = (c_tmp < 0 && relu) ? 0 : c_tmp;
                    }
                }
            }//end of store

        }// end of o_loop  
    }// end of m_loop
    
    return;
}// end of gemm

void add_norm(
        int M,
        int O,
        volatile float *mem,
        volatile float *pre_buff,
        volatile float *alpha,
        volatile float *beta
        ){
    for(int m = 0; m < M; m++){
        for (int o = 0; o < O; o++){
            //mem[m*O + o] = mem[m*O + o] + pre_buff[m*O + o];
        	mem[m*O + o] = alpha[m]*(mem[m*O + o] + pre_buff[m*O + o]) + beta[m];
        }
    }
    return;
}

void sdp_attn(
		int M,
		int N,
		int O,
		int d_k,
		volatile float *a,
		volatile float *b,
		volatile float *c
		) {
	float a_buff[MM][NN];
	float b_buff[OO][NN];
	float c_buff[MM][OO];
	for(int m = 0; m < M; m += MM){
		for(int o = 0; o < O; o += OO){
			init_c: for(int mm = 0; mm < MM; mm++){
				for(int oo = 0; oo < OO; oo++){
					c_buff[mm][oo] = 0;
				}
			}
			for(int n = 0; n < N; n += NN){
				load_a: for(int mm = 0; mm < MM; mm++){
					for(int nn = 0; nn < NN; nn ++){
						float a_tmp = a[(m+mm)*N + (n+nn)];
						bool cond = (m+mm) < M && (n+nn) < N;
						a_buff[mm][nn] = cond ? a_tmp : 0;
					}
				}
				load_b: for(int oo = 0; oo < OO; oo++){
					for(int nn = 0; nn < NN; nn ++){
						float b_tmp = b[(o+oo)*N + (n+nn)];
						bool cond = (o+oo) < O && (n+nn) < N;
						b_buff[oo][nn] = cond ? b_tmp : 0;
					}
				}
				matmul: for(int mm = 0; mm < MM; mm++){
					for(int oo = 0; oo < OO; oo++){
						for(int nn = 0; nn < NN; nn++){
							c_buff[mm][oo] += a_buff[mm][nn] * b_buff[oo][nn];
						}
					}
				}
			}
			store_c: for(int mm = 0; mm < MM; mm++){
				for(int oo = 0; oo < OO; oo++){
					float c_tmp = c_buff[mm][oo]/d_k;
					//float c_tmp = c_buff[mm][oo];
					bool cond = (m+mm) < M && (o+oo) < O;
					if(cond){
						c[(m+mm)*O + (o+oo)] = c_tmp;
					}
				}
			}//store_c
		}
	}
	return;
}

void softmax(
		float *input,
		int input_len){
	int i;
	float m;
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
		total += input[i];
	}
}




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
        volatile float *beta){

	#pragma HLS INTERFACE m_axi port = encoders depth = 7 offset = slave bundle = encoder_port
	#pragma HLS INTERFACE m_axi port = heads depth = 8 offset = slave bundle = head_port
    #pragma HLS INTERFACE m_axi port = layers depth = 3 offset = slave bundle = linear_port
    #pragma HLS INTERFACE m_axi port = io depth = 2457600 offset = slave bundle = io_port
	#pragma HLS INTERFACE m_axi port = query depth = 245760 offset = slave bundle = query_port
	#pragma HLS INTERFACE m_axi port = key depth = 245760 offset = slave bundle = key_port
	#pragma HLS INTERFACE m_axi port = value depth = 245760 offset = slave bundle = value_port
	#pragma HLS INTERFACE m_axi port = pre_buff depth = 245760 offset = slave bundle = pre_buff_port
    #pragma HLS INTERFACE m_axi port = weight_q depth = 262144 offset = slave bundle = weight_q_port
    #pragma HLS INTERFACE m_axi port = weight_k depth = 262144 offset = slave bundle = weight_k_port
    #pragma HLS INTERFACE m_axi port = weight_v depth = 262144 offset = slave bundle = weight_v_port
    #pragma HLS INTERFACE m_axi port = weight_o depth = 262144 offset = slave bundle = weight_o_port
    #pragma HLS INTERFACE m_axi port = weight_ffn depth = 2097152 offset = slave bundle = weight_ffn_port
    #pragma HLS INTERFACE m_axi port = alpha depth = 960*6 offset = slave bundle = alpha_port
    #pragma HLS INTERFACE m_axi port = beta depth = 960*6 offset = slave bundle = beta_port
    
	#pragma HLS INTERFACE s_axilite port = encoders bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = heads bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = layers bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = io bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = query bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = key bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = value bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = pre_buff bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = weight_q bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = weight_k bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = weight_v bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = weight_o bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = weight_ffn bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = alpha bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = beta bundle = CONTROL_BUS

	#pragma HLS INTERFACE s_axilite port = net bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = return bundle = CONTROL_BUS
    
    //float query[48*512];
    //float key[48*512];
    //float value[48*512];
    float QK_buff[480*480];
    //float pre_buff[480*512];
    /* embedding */
    //Q1 = Query x W_Q1 
    //K1 = Key x W_K1
    //V1 = Value x W_V1
    for (int e = 0; e < net.layer_num; e++){
    	Encoder *en = (Encoder*)(encoders+e);
        for (int p = 0; p < net.seq_Q*net.d_model; p++){
        	pre_buff[p] = io[p];
            //memcpy(&pre_buff[0], const_cast<float*>(io), sizeof(float) * net.seq_Q * net.d_model);
            //memcpy(const_cast<float*>(pre_buff), const_cast<float*>(io), sizeof(float) * net.seq_Q * net.d_model);
        }


        for (int h = 0; h < net.head_num; h++){
            Head *lt = (Head*)(heads+h);
            gemm(net.seq_Q, net.d_model, net.d_s, false, io, weight_q + lt->w_off_q, query + lt->q_off);
            gemm(net.seq_KV, net.d_model, net.d_s, false, io, weight_k + lt->w_off_k, key + lt->k_off);
            gemm(net.seq_KV, net.d_model, net.d_s, false, io, weight_v + lt->w_off_v, value + lt->v_off);
        }

        //attention

        for (int h = 0; h < net.head_num; h++){
            Head *lt = (Head*)(heads+h);
            //QK_buff = softmax(Q*K_T / d_k)
            sdp_attn(net.seq_Q, net.d_s, net.seq_KV, net.d_k, query + lt->q_off, key + lt->k_off, QK_buff);
            //Softmax
            softmax(QK_buff, 480*480);
            //Attention_output = QK_buff x V1 
            gemm(net.seq_Q, net.seq_KV, net.d_s, false, QK_buff, value + lt->v_off, io + lt->out_off);
        }

        //Output = A x W_O
        gemm(net.seq_Q, net.d_model, net.d_model, false, io + heads[0].out_off, weight_o, io);

        //Add & Norm
        add_norm(net.seq_Q, net.d_model, io, pre_buff, alpha + en->norm_off1, beta + en->norm_off1);

        for (int p = 0; p < net.seq_Q*net.d_model; p++){
        	pre_buff[p] = io[p];
        	//memcpy(&pre_buff[0], const_cast<float*>(io), sizeof(float) * net.seq_Q * net.d_model);
            //memcpy(const_cast<float*>(pre_buff), const_cast<float*>(io), sizeof(float) * net.seq_Q * net.d_model);
        }

        // FFN
        for (int l = 0; l < net.ffn_num; l++){
            Linear *lt = (Linear*)(layers+l);
            gemm(lt->M, lt->N, lt->O, lt->relu, io + lt->in_off, weight_ffn + lt->w_off, io + lt->out_off);
        }
        //Add & Norm
        add_norm(net.seq_Q, net.d_model, io, pre_buff, alpha + en->norm_off2, beta + en->norm_off2);

    }
    return;
}



