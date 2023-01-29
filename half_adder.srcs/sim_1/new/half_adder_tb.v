`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2023 20:01:56
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
reg x,y;
wire s,c;
half_adder dut(.a(x), .b(y), .sum(s), .carry(c));

initial begin

x=0;y=0;
#10;
x='b0;y='b1;
#10;
x='b1;y='b0;
#10;
x='b1;y='b1;

end
endmodule
