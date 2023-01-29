`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2023 19:41:46
// Design Name: 
// Module Name: FA_NOR
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


module FA_NOR(a,b,cin,sum,cout );

input a,b,cin;
output sum,cout;
wire[10:1]w;

nor(w[1],a,a),
(w[2],a,b),
(w[3],b,b),
(w[4],w[3],w[1]),
(w[5],w[4],w[2]),
(w[6],w[5],w[5]),
(w[9],w[5],cin),
(w[10],cin,cin),
(w[7],w[10],w[6]),
(w[8],w[7],w[4]),
(cout,w[8],w[8]),
(sum,w[7],w[9]);

endmodule
