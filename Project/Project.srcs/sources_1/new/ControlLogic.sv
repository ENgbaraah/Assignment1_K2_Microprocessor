`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 02:53:29 PM
// Design Name: 
// Module Name: ControlLogic
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


module ControlLogic#(
    parameter bits = 4
) (
    clk,
    rst_n,
    en,
    load,
    d,
    q
);
  input clk, rst_n, en, load;
  input logic [bits-1:0] d;
  output logic [bits-1:0] q;

  always @(posedge clk, negedge rst_n) begin

    if (~rst_n) q <= '0;
    else if (en) begin
      if (load) q <= d;
      else q <= q + 1;
    end
  end


endmodule
