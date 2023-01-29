`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2023 14:05:23
// Design Name: 
// Module Name: Fa_Ha
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


module Fa_Ha(
input x,y,cin, output SUM,COUT
    );
wire s1,c1,W1;
Ha HA1(x,y,s1,c1);
Ha HA2(s1,cin,SUM,W1);
or(COUT,W1,c1);
endmodule

module Ha( input a,b, output sum, cout);  
   assign sum=a^b;
   assign cout=a*b; 
endmodule
