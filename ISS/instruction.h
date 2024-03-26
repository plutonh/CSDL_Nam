#ifndef INSTRUCTION
#define INSTRUCTION

uint64_t pc;
uint64_t gpr[32];
uint8_t memory[4096];
char* opcode;
uint32_t arrange;
uint64_t next;

union {
    uint32_t inst;

    struct R_type {
        uint32_t opcode : 7;
        uint32_t rd : 5;
        uint32_t funct3 : 3;
        uint32_t rs1 : 5;
        uint32_t rs2 : 5;
        uint32_t funct7 : 7;
    } R;

    struct I_type {
        uint32_t opcode : 7;
        uint32_t rd : 5;
        uint32_t funct3 : 3;
        uint32_t rs1 : 5;
        uint32_t imm_11_0 : 12;
    } I;

    struct S_type {
        uint32_t opcode : 7;
        uint32_t imm_4_0 : 5;
        uint32_t funct3 : 3;
        uint32_t rs1 : 5;
        uint32_t rs2 : 5;
        uint32_t imm_11_5 : 7;
    } S;

    struct SB_type {
        uint32_t opcode : 7;
        uint32_t imm_11 : 1;
        uint32_t imm_4_1 : 4;
        uint32_t funct3 : 3;
        uint32_t rs1 : 5;
        uint32_t rs2 : 5;
        uint32_t imm_10_5 : 6;
        uint32_t imm_12 : 1;
    } SB;

    struct UJ_type {
        uint32_t opcode : 7;
        uint32_t rd : 5;
        uint32_t imm_19_12 : 8;
        uint32_t imm_11 : 1;
        uint32_t imm_10_1 : 10;
        uint32_t imm_20 : 1;
    } UJ;

    struct U_type {
        uint32_t opcode : 7;
        uint32_t rd : 5;
        uint32_t imm_31_12 : 20;
    } U;
} RISC_V;

#endif // INSTRUCTION