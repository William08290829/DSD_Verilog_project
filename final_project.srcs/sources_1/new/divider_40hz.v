module divider_40hz(in,out,reset);
input in,reset;
output out;
reg [23:0]counter;
always @(posedge in or negedge reset)begin 
    if(!reset)counter<=0;
    else counter<=counter+26'd1;
end
assign out=counter[17];
endmodule