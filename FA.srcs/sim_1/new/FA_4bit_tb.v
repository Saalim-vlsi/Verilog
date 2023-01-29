`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2023 15:26:14
// Design Name: 
// Module Name: FA_4bit_tb
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


module FA_4bit_tb();
reg[3:0] x;
reg[3:0] y;
wire [3:0]Sum;
wire Cout;

    FA_4bit dut(.X(x), .Y(y),.S(Sum), .C0(Cout));
    
    initial begin
     
          x='b0000; y='b0000;
    #10     x='b0101; y='b1101;
    #10     x='b1010; y='b1110;
    #10     x='b1111; y='b0001; 
    #10   
    $stop;
    end
    
endmodule
