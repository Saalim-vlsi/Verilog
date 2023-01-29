`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2023 20:09:52
// Design Name: 
// Module Name: Ha_sub_tb
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


module Ha_sub_tb();

reg a,b;
wire dif,bor;

HA dut(.a(a),.b(b),.dif(dif),.bor(bor));

initial begin

a='b0; b='b0;
#10;
a='b0;b='b1;
#10;
a='b1;b='b0;
#10;
a='b1;b='b1;
#10
$stop;
end   
endmodule
