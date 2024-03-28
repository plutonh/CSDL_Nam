#include <stdio.h>
#include <stdint.h>

#include "instruction.h"

int64_t sign_ext(int64_t data, int bit) { // index aligned
    int64_t sbit = bit + 1; // Set bit bit to MSB to extension sign
    int64_t sign_mask = (int64_t)1 << (sbit - 1); // Mask of the bit to set the extension code -> Cheking sign whether 0 or 1
    int64_t sign_extend_mask = ~(((int64_t)1 << sbit) - 1); // Mask with all bits set beyond the bits to which the extension is applied

    if (data & sign_mask) { // If the given data has an MSB of 1, apply the extension sign
        return data | sign_extend_mask;
    } else {
        return data & ~(sign_extend_mask);
    }
}

int64_t slice(int64_t data, int sbit) { // number aligned
    int64_t mask = ((uint64_t)1 << sbit) - 1;

    return data & mask;
}

void binary(int num) {
    for (int i = sizeof(num) * 8 - 1; i >= 0; i--) {
        printf("%d", (num >> i) & 1);
    }
    printf("\n");
}

void process () {
    // Address concatenate
    RISC_V.inst = (uint32_t)(memory[pc+3]<<24) | (uint32_t)(memory[pc+2]<<16) | 
                  (uint32_t)(memory[pc+1]<<8) | (uint32_t)(memory[pc]);

    switch(RISC_V.R.opcode) {
        case 0b0110111: // LUI
            opcode = "LUI";
            gpr[RISC_V.U.rd] = sign_ext(RISC_V.U.imm_31_12 << 12, 31);
            pc += 4;
            break;

        case 0b0010111: // AUIPC
            opcode = "AUIPC";
            gpr[RISC_V.U.rd] = pc + sign_ext(RISC_V.U.imm_31_12 << 12, 31);
            pc += 4;
            break;
        
        case 0b1101111: // JAL
            opcode = "JAL";
            arrange = (RISC_V.UJ.imm_20 << 20) | (RISC_V.UJ.imm_19_12 << 12) |
                      (RISC_V.UJ.imm_11 << 11) | (RISC_V.UJ.imm_10_1 << 1);
            gpr[RISC_V.UJ.rd] = pc + 4;
            pc += sign_ext(arrange, 20);
            break;
        
        case 0b1100111: // JALR
            opcode = "JALR";
            next = pc + 4;
            pc = gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11);
            gpr[RISC_V.I.rd] = next;
            break;

        case 0b1100011: // BEQ, BNE, BLT, BGE, BLTU, BGEU
            arrange = (RISC_V.SB.imm_12 << 12) | (RISC_V.SB.imm_11 << 11) | 
                      (RISC_V.SB.imm_10_5 << 5) | (RISC_V.SB.imm_4_1 << 1);
            
            switch(RISC_V.SB.funct3) {
                case 0b000: // BEQ
                    opcode = "BEQ";
                    if (gpr[RISC_V.SB.rs1] == gpr[RISC_V.SB.rs2])
                        pc += sign_ext(arrange, 12);
                    else
                        pc += 4;
                    break;
                
                case 0b001: // BNE
                    opcode = "BNE";
                    if (gpr[RISC_V.SB.rs1] != gpr[RISC_V.SB.rs2])
                        pc += sign_ext(arrange, 12);
                    else
                        pc += 4;
                    break;

                case 0b100: // BLT
                    opcode = "BLT";
                    if ((int)gpr[RISC_V.SB.rs1] < (int)gpr[RISC_V.SB.rs2])
                        pc += sign_ext(arrange, 12);
                    else
                        pc += 4;
                    break;

                case 0b101: // BGE
                    opcode = "BGE";
                    if ((int)gpr[RISC_V.SB.rs1] >= (int)gpr[RISC_V.SB.rs2])
                        pc += sign_ext(arrange, 12);
                    else
                        pc += 4;
                    break;

                case 0b110: // BLTU
                    opcode = "BLTU";
                    if (gpr[RISC_V.SB.rs1] < gpr[RISC_V.SB.rs2])
                        pc += sign_ext(arrange, 12);
                    else
                        pc += 4;
                    break;

                case 0b111: // BGEU
                    opcode = "BGEU";
                    if (gpr[RISC_V.SB.rs1] >= gpr[RISC_V.SB.rs2])
                        pc += sign_ext(arrange, 12);
                    else
                        pc += 4;
                    break;
            }
            break;
        
        case 0b000011: // LB, LH, LW, LBU, LHU, LD
            switch(RISC_V.I.funct3) {
                case 0b000: // LB
                    opcode = "LB";
                    gpr[RISC_V.I.rd] = sign_ext(memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11)], 7);
                    pc += 4;
                    break;
                
                case 0b001: // LH
                    opcode = "LH";
                    gpr[RISC_V.I.rd] = sign_ext((memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11)]) |
                                                (memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11) + 1]) << 8 , 15);
                                                // Increase the memory address by 1, parse the data of next address and merge them
                    pc += 4;
                    break;

                case 0b010: // LW
                    opcode = "LW";
                    gpr[RISC_V.I.rd] = (memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11)]) |
                                       (memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11) + 1]) << 8 |
                                       (memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11) + 2]) << 16 |
                                       (memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11) + 3]) << 24;
                    pc += 4;
                    break;

                case 0b100: // LBU
                    opcode = "LBU";
                    gpr[RISC_V.I.rd] = memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11)]; // No sign extension
                    pc += 4;
                    break;

                case 0b101: // LHU
                    opcode = "LHU";
                    gpr[RISC_V.I.rd] = (memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11)]) |
                                       (memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11) + 1]) << 8;
                    pc += 4;
                    break;

                case 0b011: // LD (64I)
                    opcode = "LD";
                    gpr[RISC_V.I.rd] = (uint64_t)(memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11)]) |
                                       (uint64_t)(memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11) + 1]) << 8 |
                                       (uint64_t)(memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11) + 2]) << 16 |
                                       (uint64_t)(memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11) + 3]) << 24 |
                                       (uint64_t)(memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11) + 4]) << 32 |
                                       (uint64_t)(memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11) + 5]) << 40 |
                                       (uint64_t)(memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11) + 6]) << 48 |
                                       (uint64_t)(memory[gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11) + 7]) << 56;
                    pc += 4;
                    break;
            }
            break;

        case 0b0100011: // SB, SH, SW, SD
            switch(RISC_V.S.funct3) {
                case 0b000: // SB
                    opcode = "SB";
                    arrange = (RISC_V.S.imm_11_5 >> 5) | (RISC_V.S.imm_4_0);
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11)] = (uint8_t)gpr[RISC_V.S.rs2];
                    pc += 4;
                    break;

                case 0b001: // SH
                    opcode = "SH";
                    arrange = (RISC_V.S.imm_11_5 >> 5) | (RISC_V.S.imm_4_0);
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11)] = (uint8_t)gpr[RISC_V.S.rs2];
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11) + 1] = (uint8_t)(gpr[RISC_V.S.rs2] >> 8);
                    pc += 4;
                    break;

                case 0b010: // SW
                    opcode = "SW";
                    arrange = (RISC_V.S.imm_11_5 >> 5) | (RISC_V.S.imm_4_0);
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11)] = (uint8_t)gpr[RISC_V.S.rs2];
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11) + 1] = (uint8_t)(gpr[RISC_V.S.rs2] >> 8);
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11) + 2] = (uint8_t)(gpr[RISC_V.S.rs2] >> 16);
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11) + 3] = (uint8_t)(gpr[RISC_V.S.rs2] >> 24);
                    pc += 4;
                    break;

                case 0b011: // SD (64I)
                    opcode = "SD";
                    arrange = (RISC_V.S.imm_11_5 >> 5) | (RISC_V.S.imm_4_0);
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11)] = (uint8_t)gpr[RISC_V.S.rs2];
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11) + 1] = (uint8_t)(gpr[RISC_V.S.rs2] >> 8);
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11) + 2] = (uint8_t)(gpr[RISC_V.S.rs2] >> 16);
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11) + 3] = (uint8_t)(gpr[RISC_V.S.rs2] >> 24);
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11) + 4] = (uint8_t)(gpr[RISC_V.S.rs2] >> 32);
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11) + 5] = (uint8_t)(gpr[RISC_V.S.rs2] >> 40);
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11) + 6] = (uint8_t)(gpr[RISC_V.S.rs2] >> 48);
                    memory[gpr[RISC_V.S.rs1] + sign_ext(arrange, 11) + 7] = (uint8_t)(gpr[RISC_V.S.rs2] >> 56);
                    pc += 4;
                    break;
            }
            break;

        case 0b0010011: // ADDI, SLTI, SLTIU, XORI, ORI, ANDI, SLLI, SRLI, SRAI, SLLI, SRLI, SRAI
            switch(RISC_V.I.funct3) {
                case 0b000: // ADDI
                    opcode = "ADDI";
                    gpr[RISC_V.I.rd] = gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11);
                    pc += 4;
                    break;

                case 0b010: // SLTI
                    opcode = "SLTI"; // signed -> int
                    gpr[RISC_V.I.rd] = (int)gpr[RISC_V.I.rs1] < (int)sign_ext(RISC_V.I.imm_11_0, 11);
                    pc += 4;
                    break;

                case 0b011: // SLTIU
                    opcode = "SLTIU"; // unsigned -> uint32_t
                    gpr[RISC_V.I.rd] = (uint32_t)(gpr[RISC_V.I.rs1] + (uint32_t)sign_ext(RISC_V.I.imm_11_0, 11));
                    pc += 4;
                    break;

                case 0b100: // XORI
                    opcode = "XORI";
                    gpr[RISC_V.I.rd] = gpr[RISC_V.I.rs1] ^ sign_ext(RISC_V.I.imm_11_0, 11);
                    pc += 4;
                    break;

                case 0b110: // ORI
                    opcode = "ORI";
                    gpr[RISC_V.I.rd] = gpr[RISC_V.I.rs1] | sign_ext(RISC_V.I.imm_11_0, 11);
                    pc += 4;
                    break;

                case 0b111: // ANDI
                    opcode = "ANDI";
                    gpr[RISC_V.I.rd] = gpr[RISC_V.I.rs1] & sign_ext(RISC_V.I.imm_11_0, 11);
                    pc += 4;
                    break;

                case 0b001: // SLLI
                    opcode ="SLLI";
                    gpr[RISC_V.I.rd] = gpr[RISC_V.I.rs1] << slice(RISC_V.I.imm_11_0, 5); // shamt만큼 shift
                    pc += 4;
                    break;

                case 0b101:
                    if((RISC_V.I.imm_11_0 >> 10) == 0) { // SRLI
                        opcode ="SRLI"; // unsigned
                        gpr[RISC_V.I.rd] = gpr[RISC_V.I.rs1] >> slice(RISC_V.I.imm_11_0, 5);
                        pc += 4;
                        }
                    else { // SRAI
                        opcode ="SRAI"; // signed
                        gpr[RISC_V.I.rd] = (int)gpr[RISC_V.I.rs1] >> (int)slice(RISC_V.I.imm_11_0, 5);
                        pc += 4;
                    }
                    break;
            }
            break;

        case 0b0110011: // ADD, SUB, SLL, SLT, SLTU, XOR ,SRL, SRA, OR, AND
            switch(RISC_V.R.funct3) {
                case 0b000:
                    switch(RISC_V.R.funct7) {
                        case 0b0000000: // ADD
                            opcode = "ADD";
                            gpr[RISC_V.R.rd] = gpr[RISC_V.R.rs1] + gpr[RISC_V.R.rs2];
                            pc += 4;
                            break;

                        case 0b0100000: // SUB
                            opcode = "SUB";
                            gpr[RISC_V.R.rd] = gpr[RISC_V.R.rs1] - gpr[RISC_V.R.rs2];
                            pc += 4;
                            break;
                    }
                    break;

                case 0b001: // SLL
                    opcode = "SLL";
                    gpr[RISC_V.R.rd] = gpr[RISC_V.R.rs1] << gpr[RISC_V.R.rs2];
                    pc += 4;
                    break;

                case 0b010: // SLT
                    opcode = "SLT"; // signed
                    gpr[RISC_V.R.rd] = (int)gpr[RISC_V.R.rs1] < (int)gpr[RISC_V.R.rs2];
                    pc += 4;
                    break;

                case 0b011: // SLTU
                    opcode = "SLTU"; // unsigned
                    gpr[RISC_V.R.rd] = gpr[RISC_V.R.rs1] < gpr[RISC_V.R.rs2];
                    pc += 4;
                    break;

                case 0b100: // XOR
                    opcode = "XOR";
                    gpr[RISC_V.R.rd] = gpr[RISC_V.R.rs1] ^ gpr[RISC_V.R.rs2];
                    pc += 4;
                    break;

                case 0b101:
                    switch(RISC_V.R.funct7) {
                        case 0b0000000: // SRL
                            opcode = "SRL"; // unsigned
                            gpr[RISC_V.R.rd] = gpr[RISC_V.R.rs1] >> gpr[RISC_V.R.rs2];
                            pc += 4;
                            break;

                        case 0b0100000: // SRA
                            opcode = "SRA"; // signed
                            gpr[RISC_V.R.rd] = (int)gpr[RISC_V.R.rs1] >> (int)gpr[RISC_V.R.rs2];
                            pc += 4;
                            break;
                    }
                    break;

                case 0b110: // OR
                    opcode = "OR";
                    gpr[RISC_V.R.rd] = gpr[RISC_V.R.rs1] | gpr[RISC_V.R.rs2];
                    pc += 4;
                    break;

                case 0b111: // AND
                    opcode = "AND";
                    gpr[RISC_V.R.rd] = gpr[RISC_V.R.rs1] & gpr[RISC_V.R.rs2];
                    pc += 4;
                    break;
            }

        case 0b0011011: // ADDIW, SLLIW, SRLIW, SRAIW
            switch(RISC_V.I.funct3) {
                case 0b000: // ADDIW
                    opcode = "ADDIW";
                    gpr[RISC_V.I.rd] = sign_ext(slice(gpr[RISC_V.I.rs1] + sign_ext(RISC_V.I.imm_11_0, 11), 32), 31);
                    pc += 4;
                    break;

                case 0b001: // SLLIW
                    opcode = "ADDIW";
                    gpr[RISC_V.I.rd] = sign_ext(slice(gpr[RISC_V.I.rs1] << slice(RISC_V.I.imm_11_0, 5), 32), 31);
                    pc += 4;
                    break;

                case 0b101:
                    if((RISC_V.I.imm_11_0 >> 10) == 0) { // SRLIW
                        opcode = "SRLIW"; // unsigned
                        gpr[RISC_V.I.rd] = sign_ext(gpr[RISC_V.I.rs1] >> slice(RISC_V.I.imm_11_0, 5), 31 - slice(RISC_V.I.imm_11_0, 5)); // slice by shamt
                        pc += 4;
                    }
                    else { // SRAIW
                        opcode = "SRAIW"; // signed
                        gpr[RISC_V.I.rd] = sign_ext((int)gpr[RISC_V.I.rs1] >> (int)slice(RISC_V.I.imm_11_0, 5), 31 - (int)slice(RISC_V.I.imm_11_0, 5));
                        pc += 4;
                    }
                    break;
            }
            break;

        case 0b0111011: // ADDW, SUBW, SLLW, SRLW, SRAW
            switch(RISC_V.R.funct3) {
                case 0b000: 
                    switch(RISC_V.R.funct7) {
                        case 0b0000000: // ADDW
                            opcode = "ADDW";
                            gpr[RISC_V.R.rd] = sign_ext(slice(gpr[RISC_V.R.rs1] + gpr[RISC_V.R.rs2], 32), 31);
                            pc += 4;
                            break;

                        case 0b0100000: // SUBW
                            opcode = "SUBW";
                            gpr[RISC_V.R.rd] = sign_ext(slice(gpr[RISC_V.R.rs1] - gpr[RISC_V.R.rs2], 32), 31);
                            pc += 4;
                            break;
                    }
                    break;

                case 0b001: // SLLW
                    opcode = "SLLW";
                    gpr[RISC_V.R.rd] = sign_ext(gpr[RISC_V.R.rs1] << slice(gpr[RISC_V.R.rs2], 5) , 31);
                    pc += 4;
                    break;

                case 0b101: 
                    switch(RISC_V.R.funct7) {
                        case 0b0000000: // SRLW
                            opcode = "SRLW";
                            gpr[RISC_V.R.rd] = sign_ext(gpr[RISC_V.R.rs1] >> slice(RISC_V.R.rs2, 5), 31 - slice(RISC_V.R.rs2, 5));
                            pc += 4;
                            break;

                        case 0b0100000: // SRAW
                            opcode = "SRAW";
                            gpr[RISC_V.R.rd] = sign_ext((int)gpr[RISC_V.R.rs1] >> (int)slice(RISC_V.R.rs2, 5), 31 - (int)slice(RISC_V.R.rs2, 5));
                            pc += 4;
                            break;
                    }
                    break;
            }
            break;
    }
    gpr[0] = 0;
}

void first_print() {
    printf("--------------------------------------------------------------------\n");
    printf("PC: 0x%016llx\n", pc);
}

void second_print() {
    printf("IR: 0x%08x (Instruction: %s)\n\n", RISC_V.inst, opcode);
    for(int i = 0; i < 32; i++) {
        printf("[%02d]: 0x%016llx ", i, gpr[i]);
        if(i % 4 == 3)
            printf("\n");
    }
}

void dump(FILE *output) {
    int i;
    fprintf(output, "                    ");
    for(i = 0; i < 16; i++) {
        fprintf(output, "%2d ", i);
    }
    fprintf(output, "\n-------------------------------------------------------------------");
    for(i = 0; i < 4096; i++) {
        if(i % 16)
            fprintf(output, "%02x ", memory[i]);
        else {
            fprintf(output, "\n0x%016X: ", i - (i % 16));
            fprintf(output, "%02x ", memory[i]);
        }
    }
}