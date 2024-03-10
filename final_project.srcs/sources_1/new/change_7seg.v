`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/02 18:42:21
// Design Name: 
// Module Name: change_7seg
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


module change_7seg(in,out);
input [3:0]in;
output reg [0:6]out;
always@(*)begin
     case (in) //case statement
            4'd0 :out = 7'b1111110;
             4'd1 :out = 7'b0110000;
             4'd2 :out = 7'b1101101;
             4'd3 :out = 7'b1111001;
             4'd4 :out = 7'b0110011;
             4'd5 :out = 7'b1011011;
             4'd6 :out = 7'b1011111;
             4'd7 :out = 7'b1110000;
            4'd8 :out = 7'b1111111;
            4'd9 :out = 7'b1111011;
            //switch off 7 segment character when the bcd digit is not a decimal number.
            default :out = 7'b0000000; 
        endcase
end
endmodule
