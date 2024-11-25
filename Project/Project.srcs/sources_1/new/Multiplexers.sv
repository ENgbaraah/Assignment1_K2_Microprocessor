`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 02:54:09 PM
// Design Name: 
// Module Name: Multiplexers
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Multiplexers #(
    parameter bits = 8,
    selectBits = 3
) (
    input logic [bits-1:0] d[(2**selectBits)-1:0],
    input logic [selectBits-1:0] s,
    output logic [bits-1:0] y
);
  always @(*) begin
    y = d[s];
  end

endmodule
