module divider_8hz(in,out,reset);
input in,reset;
output out;
reg [28:0]temp;
always @(posedge in or negedge reset)begin
if(!reset)temp<=0;
else temp<=temp+26'd1;
end
assign out=temp[23];
endmodule