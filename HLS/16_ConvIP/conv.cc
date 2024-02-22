#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "./conv.h"

#define OH_T 2
#define OW_T 2
#define IC_tile 2 // DSP_IC
#define OC_tile 2 // DSP_OC

#define R 6
#define Q 6

#define IC_T IC_tile*Q
#define OC_T OC_tile*R

#define K_max 3
#define S_max 2
#define OC_max 512

#define	IH_T K_max + (OH_T - 1) * S_max
#define	IW_T K_max + (OH_T - 1) * S_max


void input_load(
		int IH,
		int IW,
		int IC,

		int oh_t,
		int ow_t,
		int ic_t,

		int K,
		int S,
		int P,

		float input_buff_load[IH_T][IW_T][IC_T],
		volatile float *input){

	input_load : for(int ic = 0; ic < IC_T; ic++){
		for(int ih = 0; ih < K + (OH_T - 1) * S; ih++){
			for(int iw = 0; iw < K + (OW_T - 1) * S; iw++){
				bool cond = ((ow_t == 0) && (iw < P)) || ((oh_t == 0) && (ih < P)) || ((iw + ow_t * S * OW_T) > IW) || ((ih + oh_t * S * OH_T) > IH);
				int padded_iw = iw - P + ow_t*S*OW_T;
				int padded_ih = ih - P + oh_t*S*OH_T;
				input_buff_load[ih][iw][ic] = cond ? 0 : input[(padded_iw) + (padded_ih)*IW + (ic+ic_t*IC_T)*IW*IH];
			}
		}
	}
}


void weight_load(
		int OC,
		int IC,

		int oc_t,
		int ic_t,

		int K,

		float weight_buff_load[K_max][K_max][IC_T][OC_T],
		volatile float *weight){


	weight_load : for(int oc=0; oc<OC_T; oc++){
		for(int ic=0; ic<IC_T; ic++){
			for(int kh=0; kh<K; kh++){
				for(int kw=0; kw<K; kw++){
					int weight_index =  kw + kh*K + (ic+ic_t*IC_T)*K*K + (oc+oc_t*OC_T)*K*K*IC;
					weight_buff_load[kh][kw][ic][oc] = weight[weight_index];
				}
			}
		}

	}
}

void computation(
		int S,
		int K,

		float input_buff_load[IH_T][IW_T][IC_T],
		float weight_buff_load[K_max][K_max][IC_T][OC_T],
		float output_buff_store[OH_T][OW_T][OC_T]){

#pragma HLS ARRAY_PARTITION variable=input_buff_load	factor=IC_T dim=3
#pragma HLS ARRAY_PARTITION variable=weight_buff_load	factor=IC_T dim=3
#pragma HLS ARRAY_PARTITION variable=weight_buff_load	factor=OC_T dim=4
#pragma HLS ARRAY_PARTITION variable=output_buff_store	factor=OC_T dim=3


	computation : for(int kh=0; kh<K; kh++){
		for(int kw=0; kw<K; kw++){
			for(int oh=0; oh<OH_T; oh++){
				for(int ow=0; ow<OW_T; ow++){
#pragma HLS PIPELINE
					for(int oc=0; oc<OC_T; oc++){
#pragma HLS UNROLL
						for(int ic=0; ic<IC_T; ic++){
#pragma HLS UNROLL
							output_buff_store[oh][ow][oc] += weight_buff_load[kh][kw][ic][oc]*input_buff_load[S*oh+kh][S*ow+kw][ic];
						}
					}
				}
			}
		}
	}

}


void output_store(
		int OC,
		int OH,
		int OW,

		int oh_t,
		int ow_t,
		int oc_t,

		bool RELU,

		float output_buff_store[OH_T][OW_T][OC_T],
		float shift_buff[OC_max],
		float scale_buff[OC_max],
		volatile float *output){

	output_store : for(int oc=0; oc<OC_T; oc++){
		for(int oh=0; oh<OH_T; oh++){
			for(int ow=0; ow<OW_T; ow++){
				bool cond = (ow+ow_t*OW_T < OW) && (oh+oh_t*OH_T < OH);
				output_buff_store[oh][ow][oc] = output_buff_store[oh][ow][oc] * scale_buff[(oc+oc_t*OC_T)] + shift_buff[(oc+oc_t*OC_T)];
				if (RELU) {
				    output_buff_store[oh][ow][oc] = (output_buff_store[oh][ow][oc] < 0) ? 0 : output_buff_store[oh][ow][oc];
				}
				if (cond){
					output[(ow+ow_t*OW_T)+(oh+oh_t*OH_T)*OW+(oc+oc_t*OC_T)*OW*OH] = output_buff_store[oh][ow][oc];
				}
			}
		}
	}
}


void conv(
		int IH,
		int IW,

		int IC,
		int OC,
		int K,
		int S,
		int P,

		bool RELU,

		volatile float *input,
		volatile float *weight,
		volatile float *scale,
		volatile float *shift,

		volatile float *output) {

	//========================================================================
	// 16384
	#pragma HLS INTERFACE m_axi 	port = input 	depth = 5000000 	offset = slave bundle = input_port
	#pragma HLS INTERFACE m_axi 	port = weight 	depth = 5000000		offset = slave bundle = weight_port
	#pragma HLS INTERFACE m_axi 	port = scale 	depth = 1000		offset = slave bundle = scale_port
	#pragma HLS INTERFACE m_axi 	port = shift 	depth = 1000		offset = slave bundle = shift_port
	#pragma HLS INTERFACE m_axi 	port = output 	depth = 5000000		offset = slave bundle = output_port

	#pragma HLS INTERFACE s_axilite port = input 	bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = weight 	bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = scale	bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = shift	bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = output 	bundle = CONTROL_BUS

	#pragma HLS INTERFACE s_axilite port = IH 		bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = IW 		bundle = CONTROL_BUS

	#pragma HLS INTERFACE s_axilite port = IC 		bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = OC 		bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = K 		bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = S 		bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = P 		bundle = CONTROL_BUS
	#pragma HLS INTERFACE s_axilite port = RELU 	bundle = CONTROL_BUS

	#pragma HLS INTERFACE s_axilite port = return 	bundle = CONTROL_BUS

	//========================================================================

	int OH = (IH - K + 2 * P) / S + 1;
	int OW = (IW - K + 2 * P) / S + 1;

	float input_buff_load[IH_T][IW_T][IC_T];

	float weight_buff_load[K_max][K_max][IC_T][OC_T];

	float output_buff_store[OH_T][OW_T][OC_T];

	float scale_buff[OC_max];
	float shift_buff[OC_max];

	int d_buff = 0;

	//========================================================================
	//========================================================================


	for (int o = 0; o<OC; o++){
		scale_buff[o] = scale[o];
		shift_buff[o] = shift[o];
	}



	for(int oh_t = 0; oh_t < (OH-1)/OH_T+1; oh_t++){
		for(int ow_t = 0; ow_t < (OW-1)/OW_T+1; ow_t++){
			for(int oc_t = 0; oc_t < (OC-1)/(OC_T)+1; oc_t++){


				output_initialization : for(int oc=0;oc<OC_T;oc++){
					for(int oh=0; oh<OH_T;oh++){
						for(int ow=0; ow<OW_T;ow++){
							output_buff_store[oh][ow][oc] = 0;
						}
					}
				}


				load_computation : for(int ic_t = 0; ic_t < (IC-1)/(IC_T)+1; ic_t++){
					input_load(IH,IW,IC,oh_t,ow_t,ic_t,K,S,P,input_buff_load,input);
					weight_load(OC,IC,oc_t,ic_t,K,weight_buff_load,weight);
					computation(S,K,input_buff_load, weight_buff_load,output_buff_store);
				}
				output_store(OC, OH, OW, oh_t, ow_t, oc_t, RELU, output_buff_store, shift_buff, scale_buff, output);
			}
		}
	}


}

