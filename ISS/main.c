#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>

#include "instruction.h"
#include "command.h"

int main(int argc, char **argv) {

    FILE *input, *output;
    int max_data = 100;
    uint32_t data[max_data]; // data first_token

    // Execution: ./rv64i_iss [input_file_name] [output_file_name]
    // argv[1]: input_file_name
    input = fopen(argv[1], "rb");
    if(!input) {
        printf("Reading Error!");
        exit(1);
    }

    // Loadingn data to memory
    size_t input_num = fread(data, sizeof(uint32_t), max_data, input);

    for (int i = 0; i < input_num; i++) {
        memory[4*i] = data[i]; // Lowest byte
        memory[4*i + 1] = data[i] >> 8; // Next low byte
        memory[4*i + 2] = data[i] >> 16; // Next high byte
        memory[4*i + 3] = data[i] >> 24; // Highest byte
    }

    fclose(input);

    printf("********************************************************************\n");
    printf("                         RV64I ISS Project\n");
    printf("********************************************************************\n\n");

    int cnt = 0;
    char *command = NULL;
    ssize_t line = 0;
    size_t n = 0;
    int bp_num = 0;
    uint64_t bp_check[10] = {0}; // Checking break point address
    int i, j;
    char* first_token = NULL;
    char* second_token = NULL;

    while(1) {
        printf("Command: ");
        line = getline(&command, &n, stdin);

        if(!strcmp(command, "s\n")) { // 's' command
            first_print();
            process();
            cnt++;
            second_print();
        }
        else if(!strcmp(command, "r\n")) { // 'r' command
            for(i = cnt; (gpr[1] != 0xf); i++)
                process();
            first_print();
            process();
            cnt = i++;
            second_print();
        }
        else if(!strncmp(command, "b ", 2)) { // 'b bp' command
            uint64_t bp_add = strtoull(command+2, NULL, 16); // Convert string to hexadecimal
            int valid = 1;
            int exist = 1;
            int format = 1;
            int full = 1;

            first_token = strtok(command, " "); // Checking hexadecimal format
            while(first_token != NULL) {
                second_token = first_token;
                first_token = strtok(NULL, " ");
            }
            for(i = 0; i < strlen(second_token) - 1; i++){
                if(!isxdigit(second_token[i])) { 
                    bp_add = 0;
                    valid = 0;
                    format = 0;
                    break;
                }
            }

            for(i = 0; i < bp_num + 1; i++) { // Checking same address
                if(bp_check[i] == bp_add) {
                    valid = 0;
                    exist = 0;
                }
            }

            if(bp_num > 9) {
                valid = 0;
                full = 0;
            }

            if(!format) printf("Invalid address entered.\n");
            else if(!exist) printf("Same address already exists.\n");
            else if(!full) printf("Maximum number of break points is 10.\n");

            if(valid) {
                bp_check[bp_num++] = bp_add;
                printf("--------------------------------------------------------------------\n");
                printf("Break point\n");
                for(j = 0; j < bp_num; j++)
                    printf("[0x%016llx]\n", bp_check[j]);
                printf("Total %d\n", bp_num);
            }
        }
        else if(!strcmp(command, "j\n")) { // 'j' command
            for(i = cnt; (gpr[1] != 0xf); i++) {
                int match = 0;
                for(j = 0; j < bp_num; j++) {
                    if(pc == bp_check[j]) {
                        match = 1;
                        break;
                    }
                }
                if(match) break;
                process();
            }
            first_print();
            process();
            cnt = i++;
            second_print();
        }
        else 
            printf("unsupported command\n");
        
        printf("--------------------------------------------------------------------\n");
        
        // Instruction: JALR x0, x1, 0 -> 0x00008067
        // Data: Reg[x1] is '0xf'
        if((gpr[1] == 0xf) && (RISC_V.inst == 0x00008067))
            break;
    }
    output = fopen(argv[2], "w");
    dump(output);
    fclose(output);
    return 0;
}