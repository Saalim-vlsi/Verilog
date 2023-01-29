`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2023 14:51:50
// Design Name: 
// Module Name: FA_ha_tb
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


module FA_ha_tb(
    );
    
    reg x,y,z;   wire Cout,Sum;
    Fa_Ha dut(.x(x), .y(y), .cin(z), .SUM(Sum), .COUT(Cout));
    
    initial begin
         x='b0; y='b0; z='b0;
    #10      x='b0; y='b0; z='b1;
    #10     x='b0; y='b1; z='b0;
    #10      x='b0; y='b1; z='b1;
    #10     x='b1; y='b0; z='b0;
    #10      x='b1; y='b0; z='b1;
    #10     x='b1; y='b1; z='b0;
    #10      x='b1; y='b1; z='b1;
    #10
    $stop;
    end
endmodule

module Ha_tb();
reg k,l; wire m,n;
Ha dut(.a(k),.b(l),.sum(m),.cout(n));
initial begin
         k='b0; l='b0; 
    #10  k='b0; l='b1;
    #10  k='b1; l='b0;
    #10  k='b1; l='b1;
    #10
    $stop;
    end
endmodule
