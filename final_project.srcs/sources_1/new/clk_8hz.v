`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/02 18:32:08
// Design Name: 
// Module Name: clk_8hz
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
module divider2hz(in,out,reset);
input in,reset;
output out;
reg [28:0]temp;
always @(posedge in or negedge reset)begin
if(!reset)temp<=0;
else temp<=temp+26'd1;
end
assign out=temp[25];
endmodule
