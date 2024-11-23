`timescale 1ns / 1ps
module ALU #(
parameter WIDTH = 8
) (
    input logic [WIDTH-1:0] A,
    input logic [WIDTH-1:0] B,
    input logic S,  // Selection: 0 for Add, 1 for Sub
    output logic [WIDTH-1:0] Result,
    output logic Carry
);
    always_comb begin
        if (S == 0) 
            {Carry, Result} = A + B;
        else 
            {Carry, Result} = A - B;
    end
endmodule
