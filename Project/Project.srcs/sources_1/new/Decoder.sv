`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 02:54:30 PM
// Design Name: 
// Module Name: Decoder
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

module Decoder #(
    parameter bits = 2
) (
    input [bits-1:0] i,
    input en,
    output reg [2**bits-1:0] out
);

  always @(*) begin
    out = '0;
    if (en) begin
      out[i] = 1'b1;
    end
  end

endmodule
