`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2023 19:03:48
// Design Name: 
// Module Name: FA_4bit
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


//module FA_4bit(A,B,S,Cout);
////output reg [3:0]C;
//wire W0,W1,W2;
//input [3:0] A,B;
//output [3:0]S;
//output Cout;
//Fulladder(A[0],B[0],1'b0,S[0],W0),
//         (A[1],B[1],W0,S[1],W1),
//         (A[2],B[2],W1,S[2],W2),
//         (A[3],B[3],W2,S[3],Cout);
//endmodule

module FA_4bit(X, Y,Cin, S, Co);
 input [3:0] X, Y;// Two 4-bit inputs
 input Cin='b0;
 output [3:0] S;
 output Co;

 wire [3:1] w;
 // instantiating 4 1-bit full adders in Verilog
 fulladder u1(X[0], Y[0], Cin, S[0], w[1]);
 fulladder u2(X[1], Y[1], w[1], S[1], w[2]);
 fulladder u3(X[2], Y[2], w[2], S[2], w[3]);
 fulladder u4(X[3], Y[3], w[3], S[3], Co);
endmodule

module fulladder( input a,b,cin, output sum, cout );
assign sum=(a^b^cin);
assign cout=(a&b|b&cin|cin&a);
endmodule