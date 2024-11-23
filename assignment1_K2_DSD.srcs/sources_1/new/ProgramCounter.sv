`timescale 1ns / 1ps
module ProgramCounter #(parameter WIDTH = 8) (
    input logic clk,
    input logic reset,
    input logic load,
    input logic [WIDTH-1:0] load_value,
    output logic [WIDTH-1:0] count
);
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            count <= 0;
        else if (load)
            count <= load_value;
        else
            count <= count + 1;
    end
endmodule



