`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/03 21:25:48
// Design Name: 
// Module Name: divider_20hz
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


//module divider_20hz(

//    );
//endmodule
module divider_20hz(in,out,reset);
input in,reset;
output out;
reg [23:0]counter;
always @(posedge in or negedge reset)begin 
    if(!reset)counter<=0;
    else counter<=counter+26'd1;
end
assign out=counter[18];
endmodule