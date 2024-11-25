`timescale 1ns / 1ps
module InstructionMemory #(parameter ADDR_WIDTH = 8, DATA_WIDTH = 8) (
    input logic [ADDR_WIDTH-1:0] address,
    output logic [DATA_WIDTH-1:0] instruction
);
    logic [DATA_WIDTH-1:0] memory [0:(1<<ADDR_WIDTH)-1];

    initial begin
        memory[0] = 8'b00001000;  // RA = 0
        memory[1] = 8'b00011001;  // RB = 1
        memory[2] = 8'b00100000;  // RO = RA
        // Add more instructions
    end

    assign instruction = memory[address];
endmodule
