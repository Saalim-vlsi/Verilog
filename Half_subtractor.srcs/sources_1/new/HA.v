`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2023 20:01:15
// Design Name: 
// Module Name: HA
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
module HA(input a,b,output reg dif,bor);

//conditional operator
//assign dif= (a==0)?(b):(~b);
//assign bor= (a==0)?(b):(0);
always@(*)
if(a==0&b==0) begin
dif='b0;
bor='b0;
end
else if (a==0 & b==1) begin
dif=1; 
bor=1;
end
else if (a==1 & b==0) begin
dif=1; 
bor=0;
end
else if (a==1 & b==1) begin
dif=0; 
bor=0;
end
endmodule