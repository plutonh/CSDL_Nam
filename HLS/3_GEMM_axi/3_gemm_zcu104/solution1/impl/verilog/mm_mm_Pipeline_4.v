// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mm_mm_Pipeline_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_AB_port_AWVALID,
        m_axi_AB_port_AWREADY,
        m_axi_AB_port_AWADDR,
        m_axi_AB_port_AWID,
        m_axi_AB_port_AWLEN,
        m_axi_AB_port_AWSIZE,
        m_axi_AB_port_AWBURST,
        m_axi_AB_port_AWLOCK,
        m_axi_AB_port_AWCACHE,
        m_axi_AB_port_AWPROT,
        m_axi_AB_port_AWQOS,
        m_axi_AB_port_AWREGION,
        m_axi_AB_port_AWUSER,
        m_axi_AB_port_WVALID,
        m_axi_AB_port_WREADY,
        m_axi_AB_port_WDATA,
        m_axi_AB_port_WSTRB,
        m_axi_AB_port_WLAST,
        m_axi_AB_port_WID,
        m_axi_AB_port_WUSER,
        m_axi_AB_port_ARVALID,
        m_axi_AB_port_ARREADY,
        m_axi_AB_port_ARADDR,
        m_axi_AB_port_ARID,
        m_axi_AB_port_ARLEN,
        m_axi_AB_port_ARSIZE,
        m_axi_AB_port_ARBURST,
        m_axi_AB_port_ARLOCK,
        m_axi_AB_port_ARCACHE,
        m_axi_AB_port_ARPROT,
        m_axi_AB_port_ARQOS,
        m_axi_AB_port_ARREGION,
        m_axi_AB_port_ARUSER,
        m_axi_AB_port_RVALID,
        m_axi_AB_port_RREADY,
        m_axi_AB_port_RDATA,
        m_axi_AB_port_RLAST,
        m_axi_AB_port_RID,
        m_axi_AB_port_RFIFONUM,
        m_axi_AB_port_RUSER,
        m_axi_AB_port_RRESP,
        m_axi_AB_port_BVALID,
        m_axi_AB_port_BREADY,
        m_axi_AB_port_BRESP,
        m_axi_AB_port_BID,
        m_axi_AB_port_BUSER,
        sext_ln53,
        AB_buff_address0,
        AB_buff_ce0,
        AB_buff_q0,
        AB_buff_1_address0,
        AB_buff_1_ce0,
        AB_buff_1_q0,
        AB_buff_2_address0,
        AB_buff_2_ce0,
        AB_buff_2_q0,
        AB_buff_3_address0,
        AB_buff_3_ce0,
        AB_buff_3_q0,
        AB_buff_4_address0,
        AB_buff_4_ce0,
        AB_buff_4_q0,
        AB_buff_5_address0,
        AB_buff_5_ce0,
        AB_buff_5_q0,
        AB_buff_6_address0,
        AB_buff_6_ce0,
        AB_buff_6_q0,
        AB_buff_7_address0,
        AB_buff_7_ce0,
        AB_buff_7_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_AB_port_AWVALID;
input   m_axi_AB_port_AWREADY;
output  [63:0] m_axi_AB_port_AWADDR;
output  [0:0] m_axi_AB_port_AWID;
output  [31:0] m_axi_AB_port_AWLEN;
output  [2:0] m_axi_AB_port_AWSIZE;
output  [1:0] m_axi_AB_port_AWBURST;
output  [1:0] m_axi_AB_port_AWLOCK;
output  [3:0] m_axi_AB_port_AWCACHE;
output  [2:0] m_axi_AB_port_AWPROT;
output  [3:0] m_axi_AB_port_AWQOS;
output  [3:0] m_axi_AB_port_AWREGION;
output  [0:0] m_axi_AB_port_AWUSER;
output   m_axi_AB_port_WVALID;
input   m_axi_AB_port_WREADY;
output  [31:0] m_axi_AB_port_WDATA;
output  [3:0] m_axi_AB_port_WSTRB;
output   m_axi_AB_port_WLAST;
output  [0:0] m_axi_AB_port_WID;
output  [0:0] m_axi_AB_port_WUSER;
output   m_axi_AB_port_ARVALID;
input   m_axi_AB_port_ARREADY;
output  [63:0] m_axi_AB_port_ARADDR;
output  [0:0] m_axi_AB_port_ARID;
output  [31:0] m_axi_AB_port_ARLEN;
output  [2:0] m_axi_AB_port_ARSIZE;
output  [1:0] m_axi_AB_port_ARBURST;
output  [1:0] m_axi_AB_port_ARLOCK;
output  [3:0] m_axi_AB_port_ARCACHE;
output  [2:0] m_axi_AB_port_ARPROT;
output  [3:0] m_axi_AB_port_ARQOS;
output  [3:0] m_axi_AB_port_ARREGION;
output  [0:0] m_axi_AB_port_ARUSER;
input   m_axi_AB_port_RVALID;
output   m_axi_AB_port_RREADY;
input  [31:0] m_axi_AB_port_RDATA;
input   m_axi_AB_port_RLAST;
input  [0:0] m_axi_AB_port_RID;
input  [8:0] m_axi_AB_port_RFIFONUM;
input  [0:0] m_axi_AB_port_RUSER;
input  [1:0] m_axi_AB_port_RRESP;
input   m_axi_AB_port_BVALID;
output   m_axi_AB_port_BREADY;
input  [1:0] m_axi_AB_port_BRESP;
input  [0:0] m_axi_AB_port_BID;
input  [0:0] m_axi_AB_port_BUSER;
input  [61:0] sext_ln53;
output  [2:0] AB_buff_address0;
output   AB_buff_ce0;
input  [31:0] AB_buff_q0;
output  [2:0] AB_buff_1_address0;
output   AB_buff_1_ce0;
input  [31:0] AB_buff_1_q0;
output  [2:0] AB_buff_2_address0;
output   AB_buff_2_ce0;
input  [31:0] AB_buff_2_q0;
output  [2:0] AB_buff_3_address0;
output   AB_buff_3_ce0;
input  [31:0] AB_buff_3_q0;
output  [2:0] AB_buff_4_address0;
output   AB_buff_4_ce0;
input  [31:0] AB_buff_4_q0;
output  [2:0] AB_buff_5_address0;
output   AB_buff_5_ce0;
input  [31:0] AB_buff_5_q0;
output  [2:0] AB_buff_6_address0;
output   AB_buff_6_ce0;
input  [31:0] AB_buff_6_q0;
output  [2:0] AB_buff_7_address0;
output   AB_buff_7_ce0;
input  [31:0] AB_buff_7_q0;

reg ap_idle;
reg m_axi_AB_port_WVALID;
reg AB_buff_ce0;
reg AB_buff_1_ce0;
reg AB_buff_2_ce0;
reg AB_buff_3_ce0;
reg AB_buff_4_ce0;
reg AB_buff_5_ce0;
reg AB_buff_6_ce0;
reg AB_buff_7_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] exitcond5_fu_206_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    AB_port_blk_n_W;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond5_reg_287;
wire   [2:0] empty_22_fu_240_p1;
reg   [2:0] empty_22_reg_331;
wire   [31:0] tmp_fu_254_p10;
reg   [31:0] tmp_reg_341;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] p_cast53_fu_228_p1;
wire    ap_block_pp0_stage0_01001;
reg   [6:0] loop_index_fu_72;
wire   [6:0] empty_21_fu_212_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_loop_index_load;
wire   [2:0] tmp_2_fu_218_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

mm_mux_83_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 3 ),
    .dout_WIDTH( 32 ))
mux_83_32_1_1_U222(
    .din0(AB_buff_q0),
    .din1(AB_buff_1_q0),
    .din2(AB_buff_2_q0),
    .din3(AB_buff_3_q0),
    .din4(AB_buff_4_q0),
    .din5(AB_buff_5_q0),
    .din6(AB_buff_6_q0),
    .din7(AB_buff_7_q0),
    .din8(empty_22_reg_331),
    .dout(tmp_fu_254_p10)
);

mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((exitcond5_fu_206_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            loop_index_fu_72 <= empty_21_fu_212_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            loop_index_fu_72 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        exitcond5_reg_287 <= exitcond5_fu_206_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_206_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_22_reg_331 <= empty_22_fu_240_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond5_reg_287 == 1'd0))) begin
        tmp_reg_341 <= tmp_fu_254_p10;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AB_buff_1_ce0 = 1'b1;
    end else begin
        AB_buff_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AB_buff_2_ce0 = 1'b1;
    end else begin
        AB_buff_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AB_buff_3_ce0 = 1'b1;
    end else begin
        AB_buff_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AB_buff_4_ce0 = 1'b1;
    end else begin
        AB_buff_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AB_buff_5_ce0 = 1'b1;
    end else begin
        AB_buff_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AB_buff_6_ce0 = 1'b1;
    end else begin
        AB_buff_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AB_buff_7_ce0 = 1'b1;
    end else begin
        AB_buff_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        AB_buff_ce0 = 1'b1;
    end else begin
        AB_buff_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        AB_port_blk_n_W = m_axi_AB_port_WREADY;
    end else begin
        AB_port_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond5_fu_206_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond5_reg_287 == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_loop_index_load = 7'd0;
    end else begin
        ap_sig_allocacmp_loop_index_load = loop_index_fu_72;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        m_axi_AB_port_WVALID = 1'b1;
    end else begin
        m_axi_AB_port_WVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign AB_buff_1_address0 = p_cast53_fu_228_p1;

assign AB_buff_2_address0 = p_cast53_fu_228_p1;

assign AB_buff_3_address0 = p_cast53_fu_228_p1;

assign AB_buff_4_address0 = p_cast53_fu_228_p1;

assign AB_buff_5_address0 = p_cast53_fu_228_p1;

assign AB_buff_6_address0 = p_cast53_fu_228_p1;

assign AB_buff_7_address0 = p_cast53_fu_228_p1;

assign AB_buff_address0 = p_cast53_fu_228_p1;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_AB_port_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_AB_port_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_21_fu_212_p2 = (ap_sig_allocacmp_loop_index_load + 7'd1);

assign empty_22_fu_240_p1 = ap_sig_allocacmp_loop_index_load[2:0];

assign exitcond5_fu_206_p2 = ((ap_sig_allocacmp_loop_index_load == 7'd64) ? 1'b1 : 1'b0);

assign m_axi_AB_port_ARADDR = 64'd0;

assign m_axi_AB_port_ARBURST = 2'd0;

assign m_axi_AB_port_ARCACHE = 4'd0;

assign m_axi_AB_port_ARID = 1'd0;

assign m_axi_AB_port_ARLEN = 32'd0;

assign m_axi_AB_port_ARLOCK = 2'd0;

assign m_axi_AB_port_ARPROT = 3'd0;

assign m_axi_AB_port_ARQOS = 4'd0;

assign m_axi_AB_port_ARREGION = 4'd0;

assign m_axi_AB_port_ARSIZE = 3'd0;

assign m_axi_AB_port_ARUSER = 1'd0;

assign m_axi_AB_port_ARVALID = 1'b0;

assign m_axi_AB_port_AWADDR = 64'd0;

assign m_axi_AB_port_AWBURST = 2'd0;

assign m_axi_AB_port_AWCACHE = 4'd0;

assign m_axi_AB_port_AWID = 1'd0;

assign m_axi_AB_port_AWLEN = 32'd0;

assign m_axi_AB_port_AWLOCK = 2'd0;

assign m_axi_AB_port_AWPROT = 3'd0;

assign m_axi_AB_port_AWQOS = 4'd0;

assign m_axi_AB_port_AWREGION = 4'd0;

assign m_axi_AB_port_AWSIZE = 3'd0;

assign m_axi_AB_port_AWUSER = 1'd0;

assign m_axi_AB_port_AWVALID = 1'b0;

assign m_axi_AB_port_BREADY = 1'b0;

assign m_axi_AB_port_RREADY = 1'b0;

assign m_axi_AB_port_WDATA = tmp_reg_341;

assign m_axi_AB_port_WID = 1'd0;

assign m_axi_AB_port_WLAST = 1'b0;

assign m_axi_AB_port_WSTRB = 4'd15;

assign m_axi_AB_port_WUSER = 1'd0;

assign p_cast53_fu_228_p1 = tmp_2_fu_218_p4;

assign tmp_2_fu_218_p4 = {{ap_sig_allocacmp_loop_index_load[5:3]}};

endmodule //mm_mm_Pipeline_4
