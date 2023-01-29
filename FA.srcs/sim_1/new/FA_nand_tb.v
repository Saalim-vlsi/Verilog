`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2023 15:42:41
// Design Name: 
// Module Name: FA_nand_tb
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


module FA_nand_tb(

    );
    
    `timescale 1ns / 1ps
    //////////////////////////////////////////////////////////////////////////////////
    // Company: 
    // Engineer: 
    // 
    // Create Date: 22.01.2023 20:37:58
    // Design Name: 
    // Module Name: FA_tb
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
    
    

    reg x,y,z;   wire Cout,Sum;
    FA_nand dut(.a(x), .b(y), .cin(z), .sum(Sum), .cout(Cout));
    
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

