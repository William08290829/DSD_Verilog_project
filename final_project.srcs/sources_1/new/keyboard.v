`timescale 1ns / 1ps
module keyboard(PS2_CLK,RESET,q,w,PS2_DATA);
input PS2_CLK,RESET,PS2_DATA;
output reg  q,w;
reg[7:0]keyboard_temp;
always @(negedge PS2_CLK or negedge RESET)begin 
     
    if(!RESET)begin keyboard_temp<=0;w<=0;q<=0; end 
    else begin
    keyboard_temp<=keyboard_temp>>1;
        keyboard_temp[7]<=PS2_DATA;
        if(keyboard_temp==8'h15)begin w<=0;q<=1;  end
        else if(keyboard_temp==8'h1D)begin w<=1;q<=0; end
        else begin w<=w;q<=q;end
    end
end
endmodule
