`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/03 21:20:45
// Design Name: 
// Module Name: debouncer
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
module debouncer(din,dout,clk,reset);
input din,clk,reset;
output dout;
reg dout;
reg [2:0]ns,cs;
always@(*)begin
case(cs)
3'd0: ns=(din)?3'd1:3'd0;
3'd1: ns=(din)?3'd2:3'd0;
3'd2: ns=(din)?3'd3:3'd0;
3'd3: ns=(din)?3'd4:3'd0;
3'd4: ns=(din)?3'd5:3'd0;
3'd5: ns=(din)?3'd5:3'd0;
default :ns=3'd0;
endcase
end
always @(posedge clk or negedge reset)begin
if(!reset)cs<=3'd0;
else cs<=ns;
end
always@(*)begin
case(cs)
3'd0: dout=1'b0;
3'd1: dout=1'b0;
3'd2: dout=1'b0;
3'd3: dout=1'b0;
3'd4: dout=1'b0;
3'd5: dout=1'b1;
default :dout=1'b0;
endcase
end
endmodule
