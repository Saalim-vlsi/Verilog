`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2023 20:25:17
// Design Name: 
// Module Name: Fulladder
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

/*Full adder   Data flow
*/

/*assign sum =(a^b^cin);
assign cout=(a*b+b*cin+cin*a);*/

/*assign sum=(a==0)?((b==0)?cin:~cin):((b==0)?~cin:cin);
assign cout=(a==0)?((b==0)?0:cin):((b==0)?cin:1);*/


/*
case ({a,b,cin})
3'b000: begin sum='b0; cout='b0; end
3'b001: begin sum='b1; cout='b0; end
3'b010: begin sum='b1; cout='b0; end
3'b011: begin sum='b0; cout='b1; end
3'b100: begin sum='b1; cout='b0; end
3'b101: begin sum='b0; cout='b1; end
3'b110: begin sum='b0; cout='b1; end
3'b111: begin sum='b1; cout='b1; end

endcase
*/
module Fulladder( input a,b,cin, output reg sum,output reg cout );

always @(*)
if(a==0 && b==0 && cin==0)
begin
sum=0; cout=0;
end

else if(a==0&&b==0&&cin==1) 
begin
sum=1; cout=0;
end
else if(a==0&&b==1&&cin==0) begin
sum=1; cout=0;
end
else if(a==0&&b==1&&cin==1) begin
sum=0; cout=1;
end
else if(a==1&&b==0&&cin==0) begin
sum=1; cout=0;
end
else if(a==1&&b==0&&cin==1) begin
sum=0; cout=1;
end
else if(a==1&&b==1&&cin==0) begin
sum=0; cout=1;
end
else if(a==1&&b==1&&cin==1) begin
sum=1; cout=1;
end

endmodule
