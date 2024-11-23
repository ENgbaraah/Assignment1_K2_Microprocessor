`timescale 1ns / 1ps
module Register #(parameter WIDTH = 8) (
    input logic clk,
    input logic reset,
    input logic enable,
    input logic [WIDTH-1:0] D,
    output logic [WIDTH-1:0] Q
);
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 0;
        else if (enable)
            Q <= D;
    end
endmodule

