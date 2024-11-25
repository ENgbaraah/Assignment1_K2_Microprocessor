`timescale 1ns / 1ps
module ALU_tb;
    logic [7:0] A, B;
    logic S;
    logic [7:0] Result;
    logic Carry;
    ALU #(8) uut (
    .A(A), 
    .B(B), 
    .S(S), 
    .Result(Result),
     .Carry(Carry)
     );
    initial begin
        // Test Addition
        A = 8'h05; B = 8'h03; S = 0;
        #10;
        $display("Add: A=%d B=%d Result=%d Carry=%b", A, B, Result, Carry);

        // Test Subtraction
        A = 8'h08; B = 8'h02; S = 1;
        #10;
        $display("Sub: A=%d B=%d Result=%d Carry=%b", A, B, Result, Carry);

        $finish;
    end
endmodule

module ALU_bt(

    );
endmodule
