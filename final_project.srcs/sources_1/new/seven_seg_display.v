`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/04 02:31:08
// Design Name: 
// Module Name: seven_seg_display
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


module seven_seg_display(clk,en,seg1,seg2,seg3,seg4,rst,seg_out);
input clk,rst;
input [6:0]seg1,seg2,seg3,seg4;
output reg  [3:0] en;
output  reg [6:0]seg_out;
integer m;
wire clk20;
divider_20hz clk_20(.in(clk),.out(clk20),.reset(rst));
always @(posedge clk20 or negedge rst)begin
    if(!rst)m<=0;
    else m<=m+1;
end
always@(m,seg1,seg2,seg3,seg4)begin
en=4'b0000; seg_out<=7'd0;
    if(m[1:0]==2'd0)begin en=4'b1000; seg_out<=seg1; end 
    else if(m[1:0]==2'd1)begin en=4'b0100; seg_out<=seg2; end
     else if(m[1:0]==2'd2)begin en=4'b0010; seg_out<=seg3; end
     else if(m[1:0]==2'd3)begin en=4'b0001; seg_out<=seg4; end
end
endmodule