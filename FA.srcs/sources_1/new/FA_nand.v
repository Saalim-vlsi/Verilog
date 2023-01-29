`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2023 15:09:38
// Design Name: 
// Module Name: FA_nand
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

//Gate level modelling
module FA_nand(input a, b, cin, output sum,cout);

wire[7:1] w;
nand c (w[1],a,b),
k(w[2],a,w[1]),
d (w[3],w[1],b),
e (w[4],w[3],w[2]),
f (w[5],w[4],cin),
g (w[6],w[4],w[5]),
h (w[7],w[5],cin),
i (sum,w[7],w[6]),
j (cout,w[1],w[5]);

//nand(w[2],a,w[1]);
//nand(w[3],w[1],b);
//nand(w[4],w[3],w[2]);
//nand(w[5],w[4],cin);
//nand(w[6],w[4],w[5]);
//nand(w[7],w[5],cin);
//nand(sum,w[5],w[6]);
//nand(cout,w[1],w[5]);

endmodule