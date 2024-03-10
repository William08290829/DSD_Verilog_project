`timescale 1ns / 1ps
module VGAExample(clk, rst, hsync, vsync, vga_r, vga_g, vga_b,s0,s1,s2,s3,s4,switch,ps2_clk,ps2_data,LED,en_L,en_R,seg_L,seg_R);

       input           clk,ps2_clk;
       input           rst,s0,s1,s2,s3,s4,ps2_data;
       input           [0:7]switch;
       output          hsync,vsync;
       output [3:0]    vga_r, vga_g, vga_b,en_L,en_R;
       output reg [15:0]  LED;
       output [6:0]seg_L,seg_R;
       wire            diffcult,pclk;
       wire            valid;
       wire [9:0]      h_cnt,v_cnt;
       reg [11:0]      vga_data;
       wire [11:0]     wall_nut_big_dout,peashooter_big_dout,sun_dout,wall_nut_dout,peashooter_dout;
       reg [11:0]  sun_addr,wall_nut_addr,peashooter_addr; 
       reg [14:0]  wall_nut_big_addr,peashooter_big_addr;
       reg          shooter_big_icon_area,wallnut_big_icon_area;
       wire             line_h_area,line_v_area;
       reg[11:0] zombie_addr, buckethead_zombie_addr, pea_addr;
       wire [11:0] zombie_dout, buckethead_zombie_dout, pea_dout;

       
       //殭屍血量
       reg [1:0]zombie1_HP, zombie2_HP, zombie3_HP, zombie4_HP, zombie5_HP, zombie6_HP, zombie7_HP;
       reg [1:0]buckethead_zombie1_HP, buckethead_zombie2_HP, buckethead_zombie3_HP;
        reg [1:0]pea1_HP, pea2_HP, pea3_HP, pea4_HP;
       reg [1:0]pea5_HP, pea6_HP, pea7_HP, pea8_HP;
       reg [1:0]pea9_HP, pea10_HP, pea11_HP, pea12_HP;

       //call clk
       wire clk_1;
    
 dcm_25M u0(.clk_in1(clk),.clk_out1(clk_1),.resetn(rst));  
/////////////////call rom
peashooter_big big_icon_pea(.clka(clk_1),.addra(peashooter_big_addr),.douta(peashooter_big_dout));
wall_nut_big big_icon_wall(.clka(clk_1),.addra(wall_nut_big_addr),.douta(wall_nut_big_dout));
sun sunny(.clka(clk_1),.addra(sun_addr),.douta(sun_dout));
peashooter shooter(.clka(clk_1),.addra(peashooter_addr),.douta(peashooter_dout));
wall_nut  wall(.clka(clk_1),.addra(wall_nut_addr),.douta(wall_nut_dout));
pea u4(.clka(clk_1),.addra(pea_addr),.douta(pea_dout));
zombie u1(.clka(clk_1),.addra(zombie_addr),.douta(zombie_dout));
buckethead_zombie u3(.clka(clk_1),.addra(buckethead_zombie_addr),.douta(buckethead_zombie_dout));

/////////////////calll rom
   parameter [9:0] logo_length=10'd169;
   parameter [9:0] logo_height=10'd78; //169*78=13182<16384
   parameter [2:0] init=3'd0,countdown=3'd1,diff_1=3'd2,diff_2=3'd3,game_end=3'd4;
   reg[2:0] state,nextstate;
   reg [4:0] count_down;
   reg pass,fail;
   assign diffcult=switch[0];
   assign start=switch[1];
    always@(posedge clk or negedge rst )begin 
        if(!rst)state<=init;
        else state<=nextstate;
    end 
    always@(*)begin
        nextstate=init;
        if(!rst)nextstate=init;
        else begin 
            case (state)
                init:if(start==1)nextstate=countdown;
                      else nextstate=init;
                countdown: if(count_down==5'd0 && diffcult==1)nextstate=diff_2;
                            else if(count_down==5'd0 && diffcult==0) nextstate=diff_1;
                            else nextstate=countdown;
                diff_1:if(pass|| fail)nextstate=game_end;
                        else nextstate=diff_1;
                diff_2:if(pass|| fail)nextstate=game_end;
                        else nextstate=diff_2;
                game_end:if(!rst)nextstate=init;
                         else nextstate=game_end;
               default:nextstate=init;
             endcase 
        end 
    end
    wire clk_2hz;
    integer i;

 //////////////////////////////////////////////////////////  below only control LED light
    divider2hz clk2(.in(clk),.out(clk_2hz),.reset(rst));
     always@(posedge clk_2hz or negedge rst)begin
        if(!rst)begin count_down<=5'd16;i<=0;LED<=16'd0;end 
        else begin 
            case (state)
                init:begin i<=0; end
                countdown:begin 
                               if(count_down==5'd16)begin LED<=16'b1111111111111111; count_down<=count_down-5'd1;end
                               else if(count_down!=5'd0)begin LED <= LED<<1;count_down<=count_down-5'd1; $display("fjweu");end
                               else if(count_down==5'd0) begin LED <= LED<<1;count_down<=count_down;end
                          end
                diff_1:begin  i<=0; LED<=16'd0;end
                diff_2:begin i<=0; LED<=16'd0; end
                game_end:begin  
                $display("1213");
                        if(pass==1)begin 
                            if(i==32'd0||i==32'd1)begin LED<=16'b1000000000000001;i<=i+1;end
                            else if(i==32'd2||i==32'd3)begin LED<=16'b0100000000000010;i<=i+1;end
                            else if(i==32'd4||i==32'd5)begin LED<=16'b0010000000000100;i<=i+1;end
                            else if(i==32'd6||i==32'd7)begin LED<=16'b0001000000001000;i<=i+1;end
                            else if(i==32'd8||i==32'd9)begin LED<=16'b0010000000000100;i<=i+1;end
                            else if(i==32'd10)begin LED<=16'b0100000000000010;i<=i+1;end
                             else if(i==32'd11)begin LED<=16'b0100000000000010;i<=0;end 
                        end 
                        else if(fail==1)begin
                            if(i==32'd0||i==32'd1)begin LED<=16'b1111000011110000;i<=i+1;end
                            else if(i==32'd2)begin LED<=16'b0000111100001111;i<=i+1;end
                            else if(i==32'd3)begin LED<=16'b0000111100001111;i<=0;end
                        end
                        
                end
               default:i<=0;
             endcase 
        end 
    end
//////below sevensegemnt control part
     reg [3:0] sun1,sun0,normal_zomb,buck_zomb;
     reg [3:0]diff;
     //assign diff=(switch[0])?4'd2 :4'd1 ;
     wire [6:0]diff_seg,sun1_seg,sun0_seg,normal_zomb_seg,buck_zomb_seg;
     //wire [6:0]diff_seg_t,sun1_seg_t,sun0_seg_t,normal_zomb_seg_t,buck_zomb_seg_t;
//     assign diff_seg_t=diff_seg;
//     assign sun1_seg_t=sun1_seg;
//     assign sun0_seg_t=sun0_seg;
//     assign normal_zomb_seg_t=normal_zomb_seg;

///////////////////////////////////////////////////////////  above only control LED light
 //////////////////////////////////////////////////////////  below only control  position cahnge and  switch  plant
wire clk40,clk8hz;
reg [9:0]red_frame_h,red_frame_v,brown_frame_h,brown_frame_v;
divider_40hz clk_40(.in(clk),.out(clk40),.reset(rst));
divider_8hz  clk_8(.in(clk),.out(clk8hz),.reset(rst));
wire  s0_d,s1_d,s2_d,s3_d,s4_d;
debouncer s0d(.din(s0),.dout(s0_d),.clk(clk40),.reset(rst));
debouncer s1d(.din(s1),.dout(s1_d),.clk(clk40),.reset(rst));
debouncer s2d(.din(s2),.dout(s2_d),.clk(clk40),.reset(rst));
debouncer s3d(.din(s3),.dout(s3_d),.clk(clk40),.reset(rst));
debouncer s4d(.din(s4),.dout(s4_d),.clk(clk40),.reset(rst));
integer l;
     //call keyboard module
 wire q,w;
 reg life3,life1,life2,life4,life5,life6,life7;
 reg [9:0] wall_nut1_place_h,wall_nut2_place_h,wall_nut3_place_h,peashooter1_place_h,peashooter2_place_h,peashooter3_place_h;
 reg [9:0] wall_nut1_place_v,wall_nut2_place_v,wall_nut3_place_v,peashooter1_place_v,peashooter2_place_v,peashooter3_place_v;
 
 reg [9:0] zombie1_place_v, zombie2_place_v, zombie3_place_v, zombie4_place_v, zombie5_place_v, zombie6_place_v, zombie7_place_v;
 reg [9:0] zombie1_place_h, zombie2_place_h, zombie3_place_h, zombie4_place_h, zombie5_place_h, zombie6_place_h, zombie7_place_h;
 reg [9:0] buckethead_zombie1_place_v, buckethead_zombie2_place_v, buckethead_zombie3_place_v;
 reg [9:0] buckethead_zombie1_place_h, buckethead_zombie2_place_h, buckethead_zombie3_place_h;
 reg [9:0] pea1_place_v, pea2_place_v, pea3_place_v, pea4_place_v;
reg [9:0] pea5_place_v, pea6_place_v, pea7_place_v, pea8_place_v;
reg [9:0] pea9_place_v, pea10_place_v, pea11_place_v, pea12_place_v;

reg [9:0] pea1_place_h, pea2_place_h, pea3_place_h, pea4_place_h;
reg [9:0] pea5_place_h, pea6_place_h, pea7_place_h, pea8_place_h;
reg [9:0] pea9_place_h, pea10_place_h, pea11_place_h, pea12_place_h;

reg [3:0] normal_zomb_max;
reg [3:0]buck_zomb_max;
reg[3:0] N_zombnumber,B_zombnumber;
//     assign buck_zomb_seg_t=buck_zomb_seg;
     change_7seg seg1(.in(diff),.out(diff_seg));
     change_7seg seg2(.in(sun1),.out(sun1_seg));
     change_7seg seg3(.in(sun0),.out(sun0_seg));
     change_7seg seg4(.in(N_zombnumber),.out(normal_zomb_seg));
     change_7seg seg5(.in(B_zombnumber),.out(buck_zomb_seg));
     seven_seg_display LEFT(.clk(clk),.en(en_L),.seg1(diff_seg),.seg2(7'd0),.seg3(sun1_seg),.seg4(sun0_seg),.rst(rst),.seg_out(seg_L));
     seven_seg_display RIGHT(.clk(clk),.en(en_R),.seg1(7'd0),.seg2(normal_zomb_seg),.seg3(7'd0),.seg4(buck_zomb_seg),.rst(rst),.seg_out(seg_R));
//////above sevensegemnt control part
integer six;
 keyboard  key(.PS2_CLK(ps2_clk),.RESET(rst),.q(q),.w(w),.PS2_DATA(ps2_data));
     always@(posedge clk8hz or negedge rst)begin
        if(!rst)begin 
                    l<=0;red_frame_h<=10'd240;red_frame_v<=10'd240;brown_frame_h<=10'd160;brown_frame_v<=10'd1; 
                    life3<=1'd1;life1<=1'd1;life2<=1'd1;life4<=1'd1;life5<=1'd1;life6<=1'd1;life7<=1'd1;
                    sun1<=4'd0;sun0<=4'd0;diff<=4'd1;
                    wall_nut1_place_h<=10'd1023;wall_nut2_place_h<=10'd1023;wall_nut3_place_h<=10'd1023;
                    wall_nut1_place_v<=10'd1023;wall_nut2_place_v<=10'd1023;wall_nut3_place_v<=10'd1023;
                    peashooter3_place_v<=10'd1023;peashooter2_place_v<=10'd1023;peashooter1_place_v<=10'd1023;
                    peashooter3_place_h<=10'd1023;peashooter2_place_h<=10'd1023;peashooter1_place_h<=10'd1023;
                end 
        else begin 
            case (state)
                init:begin  l<=0;
                      if(switch[0]==0)begin 
//                            if(switch[3:5]<=4'd3)begin normal_zomb_max<={1'd0,switch[3:5]}; 
//                            normal_zomb<=normal_zomb_max;end
//                            else begin normal_zomb_max<=4'd3; normal_zomb<=normal_zomb_max;end
                           buck_zomb<=4'd0;diff<=4'd1; 
                      end
                       else if(switch[0]==1)begin diff<=4'd2;end
//                                normal_zomb<=normal_zomb_max;buck_zomb<=buck_zomb_max;
//                         end
                     end
                countdown:begin l<=0;
               end
               //N_zombnumber<=normal_zomb_max;B_zombbnumber<=buck_zomb_max;
                diff_1:begin 
                            //normal_zomb<=N_zombnumber;
                            if(s0_d==1&&red_frame_h==10'd560)begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v;end
                            else if(s1_d==1&& red_frame_v==10'd400)begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v;end
                            else if(s3_d==1&& red_frame_h==10'd0)begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v;end
                            else if(s4_d==1&&red_frame_v==10'd160)begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v;end
                            else if(s0_d==1)begin red_frame_h<=red_frame_h+10'd80;red_frame_v<=red_frame_v;end
                            else if(s1_d==1)begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v+10'd80;end
                            else if(s3_d==1)begin red_frame_h<=red_frame_h-10'd80;red_frame_v<=red_frame_v;end
                            else if(s4_d==1)begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v-10'd80;end
                            else begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v; end
                            if(red_frame_v==10'd400&&red_frame_h==10'd80&&s2==1&&life1!=0)begin life1<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v==10'd400&&red_frame_h==10'd160&&s2==1&&life2!=0)begin life2<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v==10'd400&&red_frame_h==10'd240&&s2==1&&life3!=0)begin life3<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v==10'd400&&red_frame_h==10'd320&&s2==1&&life4!=0)begin life4<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v==10'd400&&red_frame_h==10'd400&&s2==1&&life5!=0)begin life5<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v==10'd400&&red_frame_h==10'd480&&s2==1&&life6!=0)begin life6<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v==10'd400&&red_frame_h==10'd560&&s2==1&&life7!=0)begin life7<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v>=10'd160&&red_frame_v<=10'd320&&red_frame_h>=10'd80&&red_frame_h<=10'd560&&wall_nut1_place_h==10'd1023&&sun0>=10'd2&&s2==1&&brown_frame_h==10'd160)begin 
                            wall_nut1_place_h<=red_frame_h+10'd10;
                             wall_nut1_place_v<=red_frame_v+10'd10;
                             sun0<=sun0-4'd2;
                            end
                            else if(red_frame_v>=10'd160&&red_frame_v<=10'd320&&red_frame_h>=10'd80&&red_frame_h<=10'd560&&wall_nut2_place_h==10'd1023&&sun0>=10'd2&&s2==1&&brown_frame_h==10'd160
                             &&~((red_frame_h+10'd10)==wall_nut1_place_h&&(red_frame_v+10'd10)==wall_nut1_place_v))begin
                                wall_nut2_place_h<=red_frame_h+10'd10;
                                wall_nut2_place_v<=red_frame_v+10'd10;sun0<=sun0-4'd2;
                            end
                            else if(red_frame_v>=10'd160&&red_frame_v<=10'd320&&red_frame_h>=10'd80&&red_frame_h<=10'd560&&wall_nut3_place_h==10'd1023&&sun0>=10'd2&&s2==1&&brown_frame_h==10'd160
                            &&~((red_frame_v+10'd10)==wall_nut1_place_v&&(red_frame_h+10'd10)==wall_nut1_place_h)
                            &&~((red_frame_v+10'd10)==wall_nut2_place_v&&(red_frame_h+10'd10)==wall_nut2_place_h))begin
                                wall_nut3_place_h<=red_frame_h+10'd10;
                                wall_nut3_place_v<=red_frame_v+10'd10;sun0<=sun0-4'd2;
                            end
                            
                        end
                diff_2:begin 
                 //normal_zomb<=N_zombnumber; buck_zomb<=B_zombnumber;
                            if(q==1)begin brown_frame_h<=10'd1;brown_frame_v<=10'd1; end
                            else if(w==1)begin brown_frame_h<=10'd160;brown_frame_v<=10'd1; end
                            else begin brown_frame_h<=brown_frame_h;brown_frame_v<=brown_frame_v; end 
                            if(s0_d==1&&red_frame_h==10'd560)begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v;end
                            else if(s1_d==1&& red_frame_v==10'd400)begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v;end
                            else if(s3_d==1&& red_frame_h==10'd0)begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v;end
                            else if(s4_d==1&&red_frame_v==10'd160)begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v;end
                            else if(s0_d==1)begin red_frame_h<=red_frame_h+10'd80;red_frame_v<=red_frame_v;end
                            else if(s1_d==1)begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v+10'd80;end
                            else if(s3_d==1)begin red_frame_h<=red_frame_h-10'd80;red_frame_v<=red_frame_v;end
                            else if(s4_d==1)begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v-10'd80;end
                            else begin red_frame_h<=red_frame_h;red_frame_v<=red_frame_v; end
                            if(red_frame_v==10'd400&&red_frame_h==10'd80&&s2==1&&life1!=0)begin life1<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v==10'd400&&red_frame_h==10'd160&&s2==1&&life2!=0)begin life2<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v==10'd400&&red_frame_h==10'd240&&s2==1&&life3!=0)begin life3<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v==10'd400&&red_frame_h==10'd320&&s2==1&&life4!=0)begin life4<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v==10'd400&&red_frame_h==10'd400&&s2==1&&life5!=0)begin life5<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v==10'd400&&red_frame_h==10'd480&&s2==1&&life6!=0)begin life6<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v==10'd400&&red_frame_h==10'd560&&s2==1&&life7!=0)begin life7<=0;sun0<=sun0+4'd1;end
                            else if(red_frame_v>=10'd160&&red_frame_v<=10'd320&&red_frame_h>=10'd80&&red_frame_h<=10'd560&&wall_nut1_place_h==10'd1023&&sun0>=10'd2&&s2==1&&brown_frame_h==10'd160)begin 
                            wall_nut1_place_h<=red_frame_h+10'd10;
                             wall_nut1_place_v<=red_frame_v+10'd10;
                             sun0<=sun0-4'd2;
                            end
                            else if(red_frame_v>=10'd160&&red_frame_v<=10'd320&&red_frame_h>=10'd80&&red_frame_h<=10'd560&&wall_nut2_place_h==10'd1023&&sun0>=10'd2&&s2==1&&brown_frame_h==10'd160
                             &&~((red_frame_h+10'd10)==wall_nut1_place_h&&(red_frame_v+10'd10)==wall_nut1_place_v))begin
                                wall_nut2_place_h<=red_frame_h+10'd10;
                                wall_nut2_place_v<=red_frame_v+10'd10;sun0<=sun0-4'd2;
                            end
                            else if(red_frame_v>=10'd160&&red_frame_v<=10'd320&&red_frame_h>=10'd80&&red_frame_h<=10'd560&&wall_nut3_place_h==10'd1023&&sun0>=10'd2&&s2==1&&brown_frame_h==10'd160
                            &&~((red_frame_v+10'd10)==wall_nut1_place_v&&(red_frame_h+10'd10)==wall_nut1_place_h)
                            &&~((red_frame_v+10'd10)==wall_nut2_place_v&&(red_frame_h+10'd10)==wall_nut2_place_h))begin
                                wall_nut3_place_h<=red_frame_h+10'd10;
                                wall_nut3_place_v<=red_frame_v+10'd10;sun0<=sun0-4'd2;
                            end
                            else if(red_frame_v==10'd160&&red_frame_h>=10'd80&&red_frame_h<=10'd560&&peashooter1_place_v==10'd1023&&sun0>=10'd1&&s2==1&&brown_frame_h==10'd1)begin 
                            peashooter1_place_h<=red_frame_h+10'd10;
                            peashooter1_place_v<=red_frame_v+10'd10; sun0<=sun0-4'd1;
                            end
                            else if(red_frame_v==10'd240&&red_frame_h>=10'd80&&red_frame_h<=10'd560&&peashooter2_place_v==10'd1023&&sun0>=10'd1&&s2==1&&brown_frame_h==10'd1)begin
                                peashooter2_place_h<=red_frame_h+10'd10;
                            peashooter2_place_v<=red_frame_v+10'd10; sun0<=sun0-4'd1;
                            end
                            else if(red_frame_v==10'd320&&red_frame_h>=10'd80&&red_frame_h<=10'd560&&peashooter3_place_v==10'd1023&&sun0>=10'd1&&s2==1&&brown_frame_h==10'd1)begin
                                peashooter3_place_h<=red_frame_h+10'd10;
                            peashooter3_place_v<=red_frame_v+10'd10; sun0<=sun0-4'd1;
                            end
                        end
                game_end:begin  l<=0;end
               default:l<=0;
             endcase 
        end 
    end
//殭屍 位置   
//普通殭屍
reg [4:0]delay_1;//讓三波殭屍不要重疊

reg [4:0]delay_3;//讓水桶殭屍不要重疊
reg [4:0]delay_4;
 
//1號殭屍
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        zombie1_place_h <= 10'd641; zombie1_place_v <= 10'd171;
    end
    else begin
        case(state)
        init: begin
            zombie1_place_h <= 10'd641; zombie1_place_v <= 10'd171;
        end
        
        countdown:begin
            zombie1_place_h <= 10'd641; zombie1_place_v <= 10'd171;
        end
        diff_1:begin
            if(((zombie1_place_h == wall_nut1_place_h + 10'd71) && (zombie1_place_v == wall_nut1_place_v + 10'd1)) || (zombie1_place_h == wall_nut2_place_h + 10'd71 && zombie1_place_v == wall_nut2_place_v + 10'd1) || (zombie1_place_h == wall_nut3_place_h + 10'd71 && zombie1_place_v == wall_nut3_place_v + 10'd1))begin
                zombie1_place_h <= zombie1_place_h; zombie1_place_v <= zombie1_place_v;
            end
            else begin
                zombie1_place_h <= zombie1_place_h - 10'd40; zombie1_place_v <= 10'd171;
            end
        end
        
        diff_2:begin
            if(((zombie1_place_h == wall_nut1_place_h + 10'd71) && (zombie1_place_v == wall_nut1_place_v + 10'd1)) || (zombie1_place_h == wall_nut2_place_h + 10'd71 && zombie1_place_v == wall_nut2_place_v + 10'd1) || (zombie1_place_h == wall_nut3_place_h + 10'd71 && zombie1_place_v == wall_nut3_place_v + 10'd1))begin
                zombie1_place_h <= zombie1_place_h; zombie1_place_v <= zombie1_place_v;
            end
            else begin
                zombie1_place_h <= zombie1_place_h - 10'd40; zombie1_place_v <= 10'd171;
            end
        end
        
        game_end: begin
            //STOP
            zombie1_place_h <= zombie1_place_h; zombie1_place_v <= zombie1_place_v;
        end
        
        default:begin
            zombie1_place_h <= zombie1_place_h; zombie1_place_v <= zombie1_place_v;
        end
        endcase
    end 
 end

//2號殭屍
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        zombie2_place_h <= 10'd801; zombie2_place_v <= 10'd251;
    end
    else begin
        case(state)
        init: begin
            zombie2_place_h <= 10'd801; zombie2_place_v <= 10'd251;
        end
        
        countdown:begin
            zombie2_place_h <= 10'd801; zombie2_place_v <= 10'd251;
        end
        diff_1:begin
            if(((zombie2_place_h == wall_nut1_place_h + 10'd71) && (zombie2_place_v == wall_nut1_place_v + 10'd1)) || (zombie2_place_h == wall_nut2_place_h + 10'd71 && zombie2_place_v == wall_nut2_place_v + 10'd1) || (zombie2_place_h == wall_nut3_place_h + 10'd71 && zombie2_place_v == wall_nut3_place_v + 10'd1))begin
                zombie2_place_h <= zombie2_place_h; zombie2_place_v <= zombie2_place_v;
            end
            else begin
                zombie2_place_h <= zombie2_place_h - 10'd40; zombie2_place_v <= 10'd251;
            end
        end
        
        diff_2:begin
            if(zombie2_HP == 2'd1)begin
                if(((zombie2_place_h == wall_nut1_place_h + 10'd71) && (zombie2_place_v == wall_nut1_place_v + 10'd1)) || (zombie2_place_h == wall_nut2_place_h + 10'd71 && zombie2_place_v == wall_nut2_place_v + 10'd1) || (zombie2_place_h == wall_nut3_place_h + 10'd71 && zombie2_place_v == wall_nut3_place_v + 10'd1))begin
                    zombie2_place_h <= zombie2_place_h; zombie2_place_v <= zombie2_place_v;
                end
                else begin
                    zombie2_place_h <= zombie2_place_h - 10'd40; zombie2_place_v <= 10'd251;
                end
            end
            else begin
                zombie2_place_h <= 10'd1023; zombie2_place_v <= 10'd1023;
            end
        end
        
        game_end: begin
            //STOP
            zombie2_place_h <= zombie2_place_h; zombie2_place_v <= zombie2_place_v;
        end
        
        default:begin
            zombie2_place_h <= zombie2_place_h; zombie2_place_v <= zombie2_place_v;
        end
        endcase
    end 
 end
 
//3號殭屍
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        zombie3_place_h <= 10'd961; zombie3_place_v <= 10'd331; 
    end
    else begin
        case(state)
        init: begin
            zombie3_place_h <= 10'd961; zombie3_place_v <= 10'd331;
        end
        
        countdown:begin
            zombie3_place_h <= 10'd961; zombie3_place_v <= 10'd331;
        end
        diff_1:begin
            if(((zombie3_place_h == wall_nut1_place_h + 10'd71) && (zombie3_place_v == wall_nut1_place_v + 10'd1)) || (zombie3_place_h == wall_nut2_place_h + 10'd71 && zombie3_place_v == wall_nut2_place_v + 10'd1) || (zombie3_place_h == wall_nut3_place_h + 10'd71 && zombie3_place_v == wall_nut3_place_v + 10'd1))begin
                zombie3_place_h <= zombie3_place_h; zombie3_place_v <= zombie3_place_v;
            end
            else begin
                zombie3_place_h <= zombie3_place_h - 10'd40; zombie3_place_v <= 10'd331;
            end
        end
        
        diff_2:begin
            if(zombie3_HP == 2'd1)begin
                if(((zombie3_place_h == wall_nut1_place_h + 10'd71) && (zombie3_place_v == wall_nut1_place_v + 10'd1)) || (zombie3_place_h == wall_nut2_place_h + 10'd71 && zombie3_place_v == wall_nut2_place_v + 10'd1) || (zombie3_place_h == wall_nut3_place_h + 10'd71 && zombie3_place_v == wall_nut3_place_v + 10'd1))begin
                    zombie3_place_h <= zombie3_place_h; zombie3_place_v <= zombie3_place_v;
                end
                else begin
                    zombie3_place_h <= zombie3_place_h - 10'd40; zombie3_place_v <= 10'd331;
                end
            end
            else begin
                zombie3_place_h <= 10'd1023; zombie3_place_v <= 10'd1023;
            end
        end
        
        game_end: begin
            //STOP
            zombie3_place_h <= zombie3_place_h; zombie3_place_v <= zombie3_place_v;
        end
        
        default:begin
            zombie3_place_h <= zombie3_place_h; zombie3_place_v <= zombie3_place_v;
        end
        endcase
    end 
 end

//delay_1
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        delay_1 <= 5'd0;   
    end
    else begin
        case(state)
        init: begin
            delay_1 <= 5'd0;  
        end
        
        countdown:begin
            delay_1 <= 5'd0;  
        end
        diff_1:begin
            delay_1 <= delay_1;
        end
        
        diff_2:begin
            //MOVE
            if(delay_1 == 5'b11111)begin
                delay_1 <= delay_1;  
            end
            else begin
                delay_1 <= delay_1 + 1'b1;
            end
        end
        game_end:begin
            //STOP
            delay_1 <= delay_1;
        end
        default: begin
            delay_1 <= delay_1;
        end    
        endcase
    end 
 end

//四號殭屍
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        zombie4_place_h <= 10'd641; zombie4_place_v <= 10'd171;
    end
    else begin
        case(state)
        init: begin
            zombie4_place_h <= 10'd641; zombie4_place_v <= 10'd171;
        end
        
        countdown:begin
            zombie4_place_h <= 10'd641; zombie4_place_v <= 10'd171;
        end
        
        diff_1:begin
            //STAY
            zombie4_place_h <= 10'd641; zombie4_place_v <= 10'd171;
        end
        
        diff_2:begin
            //MOVE
            if(delay_1 >= 5'd12)begin
                if(((zombie4_place_h == wall_nut1_place_h + 10'd71) && (zombie4_place_v == wall_nut1_place_v + 10'd1)) || (zombie4_place_h == wall_nut2_place_h + 10'd71 && zombie4_place_v == wall_nut2_place_v + 10'd1) || (zombie4_place_h == wall_nut3_place_h + 10'd71 && zombie4_place_v == wall_nut3_place_v + 10'd1))begin
                    zombie4_place_h <= zombie4_place_h; zombie4_place_v <= zombie4_place_v;
                end
                else begin  
                    zombie4_place_h <= zombie4_place_h - 10'd40; zombie4_place_v <= 10'd171;
                end  
            end
            
            else begin
                zombie4_place_h <= zombie4_place_h; zombie4_place_v <= zombie4_place_v;
            end
        end
        game_end:begin
            //STOP
            zombie4_place_h <= zombie4_place_h; zombie4_place_v <= zombie4_place_v;
        end
        default: begin
            zombie4_place_h <= zombie4_place_h; zombie4_place_v <= zombie4_place_v;
        end    
        endcase
    end 
 end
 
//五號殭屍
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        zombie5_place_h <= 10'd801; zombie5_place_v <= 10'd251;
    end
    else begin
        case(state)
        init: begin
            zombie5_place_h <= 10'd801; zombie5_place_v <= 10'd251;
        end
        
        countdown:begin
            zombie5_place_h <= 10'd801; zombie5_place_v <= 10'd251;
        end
        
        diff_1:begin
            //STAY
            zombie5_place_h <= 10'd801; zombie5_place_v <= 10'd251;
        end
        
        diff_2:begin
            //MOVE
            if(delay_1 >= 5'd12)begin
                if(zombie5_HP == 2'd1)begin
                    if(((zombie5_place_h == wall_nut1_place_h + 10'd71) && (zombie5_place_v == wall_nut1_place_v + 10'd1)) || (zombie5_place_h == wall_nut2_place_h + 10'd71 && zombie5_place_v == wall_nut2_place_v + 10'd1) || (zombie5_place_h == wall_nut3_place_h + 10'd71 && zombie5_place_v == wall_nut3_place_v + 10'd1))begin
                        zombie5_place_h <= zombie5_place_h; zombie5_place_v <= zombie5_place_v;
                    end
                    else begin  
                        zombie5_place_h <= zombie5_place_h - 10'd40; zombie5_place_v <= 10'd251;
                    end
                 end
                 else begin
                    zombie5_place_h <= 10'd1023; zombie5_place_v <= 10'd1023;
                 end  
            end
            
            else begin
                zombie5_place_h <= zombie5_place_h; zombie5_place_v <= zombie5_place_v;
            end
        end
        game_end:begin
            //STOP
            zombie5_place_h <= zombie5_place_h; zombie5_place_v <= zombie5_place_v;
        end
        default: begin
            zombie5_place_h <= zombie5_place_h; zombie5_place_v <= zombie5_place_v;
            zombie6_place_h <= zombie6_place_h; zombie6_place_v <= zombie6_place_v;
        end    
        endcase
    end 
 end
 
//六號殭屍
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        zombie6_place_h <= 10'd961; zombie6_place_v <= 10'd331;   
    end
    else begin
        case(state)
        init: begin
            zombie6_place_h <= 10'd961; zombie6_place_v <= 10'd331;  
        end
        
        countdown:begin
            zombie6_place_h <= 10'd961; zombie6_place_v <= 10'd331;
        end
        
        diff_1:begin
            //STAY
            zombie6_place_h <= 10'd961; zombie6_place_v <= 10'd331; 
        end
        
        diff_2:begin
            //MOVE
            if(zombie6_HP == 2'd1)begin
                if(delay_1 >= 5'd12)begin
                    if(((zombie6_place_h == wall_nut1_place_h + 10'd71) && (zombie6_place_v == wall_nut1_place_v + 10'd1)) || (zombie6_place_h == wall_nut2_place_h + 10'd71 && zombie6_place_v == wall_nut2_place_v + 10'd1) || (zombie6_place_h == wall_nut3_place_h + 10'd71 && zombie6_place_v == wall_nut3_place_v + 10'd1))begin
                        zombie6_place_h <= zombie6_place_h; zombie6_place_v <= zombie6_place_v;
                    end
                    else begin  
                        zombie6_place_h <= zombie6_place_h - 10'd40; zombie6_place_v <= 10'd331;
                    end  
                end
                
                else begin
                    zombie6_place_h <= zombie6_place_h; zombie6_place_v <= zombie6_place_v;
                end
            end
            else begin
                zombie6_place_h <= 10'd1023; zombie6_place_v <= 10'd1023;
            end
        end
        game_end:begin
            //STOP
            zombie6_place_h <= zombie6_place_h; zombie6_place_v <= zombie6_place_v;
        end
        default: begin
            zombie6_place_h <= zombie6_place_h; zombie6_place_v <= zombie6_place_v;
        end    
        endcase
    end 
 end
 
//七號殭屍
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        zombie7_place_h <= 10'd641; zombie7_place_v <= 10'd171;
          
    end
    else begin
        case(state)
        init: begin
            zombie7_place_h <= 10'd641; zombie7_place_v <= 10'd171;
            
        end
        
        countdown:begin
            zombie7_place_h <= 10'd641; zombie7_place_v <= 10'd171;
            
        end
        diff_1:begin
            //STAY
            zombie7_place_h <= 10'd641; zombie7_place_v <= 10'd171;
        end
        
        diff_2:begin
            //MOVE
            if(delay_1 >= 5'd24)begin
                if(((zombie7_place_h == wall_nut1_place_h + 10'd71) && (zombie7_place_v == wall_nut1_place_v + 10'd1)) || (zombie7_place_h == wall_nut2_place_h + 10'd71 && zombie7_place_v == wall_nut2_place_v + 10'd1) || (zombie7_place_h == wall_nut3_place_h + 10'd71 && zombie7_place_v == wall_nut3_place_v + 10'd1))begin
                    zombie7_place_h <= zombie7_place_h; zombie7_place_v <= zombie7_place_v;
                end
                else begin
                    zombie7_place_h <= zombie7_place_h - 10'd40; zombie7_place_v <= 10'd171;
                end    
            end
            
            else begin
                zombie7_place_h <= zombie7_place_h; zombie7_place_v <= zombie7_place_v;
            end
        end
        game_end:begin
            //STOP
            zombie7_place_h <= zombie7_place_h; zombie7_place_v <= zombie7_place_v;
        end
        default: begin
            zombie7_place_h <= zombie7_place_h; zombie7_place_v <= zombie7_place_v;
        end    
        endcase
    end 
end 

//delay_3
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        delay_3 <= 5'd0;  
    end
    else begin
        case(state)
        init: begin
            delay_3 <= 5'd0;  
        end
        
        countdown:begin
            delay_3 <= 5'd0;  
        end
        diff_1:begin
            delay_3 <= delay_3;
        end
        
        diff_2:begin
            //MOVE
            if(delay_3 == 5'b11111)begin
                delay_3 <= delay_3;  
            end
            else begin
                delay_3 <= delay_3 + 1'b1;
            end
        end
        game_end:begin
            //STOP
            delay_3 <= delay_3;
        end
        default: begin
            delay_3 <= delay_3;
        end    
        endcase
    end 
 end
 
//delay_4
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        delay_4 <= 5'd0;  
    end
    else begin
        case(state)
        init: begin
            delay_4 <= 5'd0;  
        end
        
        countdown:begin
            delay_4 <= 5'd0;  
        end
        diff_1:begin
            delay_4 <= delay_4;
        end
        
        diff_2:begin
            //MOVE
            if(delay_3 >= 5'b11111)begin
                if(delay_4 == 5'b11111)begin
                    delay_4 <= delay_4;  
                end
                else begin
                    delay_4 <= delay_4 + 1'b1;
                end
            end
            else begin
                delay_4 <= delay_4;
            end
        end
        game_end:begin
            //STOP
            delay_4 <= delay_4;
        end
        default: begin
            delay_4 <= delay_4;
        end    
        endcase
    end 
 end 

//1號水桶殭屍
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        buckethead_zombie1_place_h <= 10'd641; buckethead_zombie1_place_v <= 10'd171;
    end
    else begin
        case(state)
        init: begin
            buckethead_zombie1_place_h <= 10'd641; buckethead_zombie1_place_v <= 10'd171;
        end
        
        countdown:begin
            buckethead_zombie1_place_h <= 10'd641; buckethead_zombie1_place_v <= 10'd171;
        end
        diff_1:begin
            //STOP
            buckethead_zombie1_place_h <= buckethead_zombie1_place_h; buckethead_zombie1_place_v <= buckethead_zombie1_place_v;
        end
        
        diff_2:begin
            if(delay_3 >= 5'b11111)begin
                if(((buckethead_zombie1_place_h == wall_nut1_place_h + 10'd71) && (buckethead_zombie1_place_v == wall_nut1_place_v + 10'd1)) || (buckethead_zombie1_place_h == wall_nut2_place_h + 10'd71 && buckethead_zombie1_place_v == wall_nut2_place_v + 10'd1) || (buckethead_zombie1_place_h == wall_nut3_place_h + 10'd71 && buckethead_zombie1_place_v == wall_nut3_place_v + 10'd1))begin
                    buckethead_zombie1_place_h <= buckethead_zombie1_place_h; buckethead_zombie1_place_v <= buckethead_zombie1_place_v;
                end
                else begin
                    buckethead_zombie1_place_h <= buckethead_zombie1_place_h - 10'd40; buckethead_zombie1_place_v <= 10'd171;
                end
            end
            else begin
                buckethead_zombie1_place_h <= buckethead_zombie1_place_h; buckethead_zombie1_place_v <= buckethead_zombie1_place_v;
            end
        end
        
        game_end: begin
            //STOP
            buckethead_zombie1_place_h <= buckethead_zombie1_place_h; buckethead_zombie1_place_v <= buckethead_zombie1_place_v;
        end
        
        default:begin
            buckethead_zombie1_place_h <= buckethead_zombie1_place_h; buckethead_zombie1_place_v <= buckethead_zombie1_place_v;
        end
        endcase
    end 
 end

//2號水桶殭屍
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        buckethead_zombie2_place_h <= 10'd641; buckethead_zombie2_place_v <= 10'd251;
    end
    else begin
        case(state)
        init: begin
            buckethead_zombie2_place_h <= 10'd641; buckethead_zombie2_place_v <= 10'd251;
        end
        
        countdown:begin
            buckethead_zombie2_place_h <= 10'd641; buckethead_zombie2_place_v <= 10'd251;
        end
        diff_1:begin
            //STOP
            buckethead_zombie2_place_h <= buckethead_zombie2_place_h; buckethead_zombie2_place_v <= buckethead_zombie2_place_v;
        end
        
        diff_2:begin
            if(delay_3 >= 5'b11111)begin
                if(delay_4 >= 5'd8)begin
                    if(((buckethead_zombie2_place_h == wall_nut1_place_h + 10'd71) && (buckethead_zombie2_place_v == wall_nut1_place_v + 10'd1)) || (buckethead_zombie2_place_h == wall_nut2_place_h + 10'd71 && buckethead_zombie2_place_v == wall_nut2_place_v + 10'd1) || (buckethead_zombie2_place_h == wall_nut3_place_h + 10'd71 && buckethead_zombie2_place_v == wall_nut3_place_v + 10'd1))begin
                        buckethead_zombie2_place_h <= buckethead_zombie2_place_h; buckethead_zombie2_place_v <= buckethead_zombie2_place_v;
                    end
                    else begin
                        buckethead_zombie2_place_h <= buckethead_zombie2_place_h - 10'd40; buckethead_zombie2_place_v <= 10'd251;
                    end
                end
                else begin
                    buckethead_zombie2_place_h <= buckethead_zombie2_place_h; buckethead_zombie2_place_v <= buckethead_zombie2_place_v;
                end
            end
            else begin
                buckethead_zombie2_place_h <= buckethead_zombie2_place_h; buckethead_zombie2_place_v <= buckethead_zombie2_place_v;
            end
        end
        
        game_end: begin
            //STOP
            buckethead_zombie2_place_h <= buckethead_zombie2_place_h; buckethead_zombie2_place_v <= buckethead_zombie2_place_v;
        end
        
        default:begin
            buckethead_zombie2_place_h <= buckethead_zombie2_place_h; buckethead_zombie2_place_v <= buckethead_zombie2_place_v;
        end
        endcase
    end 
 end
 
//3號水桶殭屍
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        buckethead_zombie3_place_h <= 10'd641; buckethead_zombie3_place_v <= 10'd331; 
    end
    else begin
        case(state)
        init: begin
            buckethead_zombie3_place_h <= 10'd641; buckethead_zombie3_place_v <= 10'd331;
        end
        
        countdown:begin
            buckethead_zombie3_place_h <= 10'd641; buckethead_zombie3_place_v <= 10'd331;
        end
        diff_1:begin
            //STOP
            buckethead_zombie3_place_h <= buckethead_zombie3_place_h; buckethead_zombie3_place_v <= buckethead_zombie3_place_v;
        end
        
        diff_2:begin
            if(delay_3 >= 5'b11111)begin
                if(delay_4 >= 5'd16)begin
                    if(((buckethead_zombie3_place_h == wall_nut1_place_h + 10'd71) && (buckethead_zombie3_place_v == wall_nut1_place_v + 10'd1)) || (buckethead_zombie3_place_h == wall_nut2_place_h + 10'd71 && buckethead_zombie3_place_v == wall_nut2_place_v + 10'd1) || (buckethead_zombie3_place_h == wall_nut3_place_h + 10'd71 && buckethead_zombie3_place_v == wall_nut3_place_v + 10'd1))begin
                        buckethead_zombie3_place_h <= buckethead_zombie3_place_h; buckethead_zombie3_place_v <= buckethead_zombie3_place_v;
                    end
                    else begin
                        buckethead_zombie3_place_h <= buckethead_zombie3_place_h - 10'd40; buckethead_zombie3_place_v <= 10'd331;
                    end
                end
                else begin
                    buckethead_zombie3_place_h <= buckethead_zombie3_place_h; buckethead_zombie3_place_v <= buckethead_zombie3_place_v;
                end
            end
            else begin
                buckethead_zombie3_place_h <= buckethead_zombie3_place_h; buckethead_zombie3_place_v <= buckethead_zombie3_place_v;
            end
        end
        
        game_end: begin
            //STOP
            buckethead_zombie3_place_h <= buckethead_zombie3_place_h; buckethead_zombie3_place_v <= buckethead_zombie3_place_v;
        end
        
        default:begin
            buckethead_zombie3_place_h <= buckethead_zombie3_place_h; buckethead_zombie3_place_v <= buckethead_zombie3_place_v;
        end
        endcase
    end 
 end

reg [3:0]delay1_pea;
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        delay1_pea <= 4'd0;  
    end
    else begin
        case(state)
        init: begin
            delay1_pea <= 4'd0;  
        end
        
        countdown:begin
            delay1_pea <= 4'd0;  
        end
        diff_1:begin
            delay1_pea <= delay1_pea;
        end
        
        diff_2:begin
            //MOVE
            if(peashooter1_place_h <= 10'd640 && peashooter1_place_v <= 10'd480 )begin
                if(delay1_pea == 4'd15)begin
                    delay1_pea <= delay1_pea;  
                end
                else begin
                    delay1_pea <= delay1_pea + 1'b1;
                end
            end
            
        end
        game_end:begin
            //STOP
            delay1_pea <= delay1_pea;
        end
        default: begin
            delay1_pea <= delay1_pea;
        end    
        endcase
    end 
end
 
//delay2_pea
reg [3:0]delay2_pea;
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        delay2_pea <= 4'd0;  
    end
    else begin
        case(state)
        init: begin
            delay2_pea <= 4'd0;  
        end
        
        countdown:begin
            delay2_pea <= 4'd0;  
        end
        diff_1:begin
            delay2_pea <= delay2_pea;
        end
        
        diff_2:begin
            //MOVE
            if(peashooter2_place_h <= 10'd640 && peashooter2_place_v <= 10'd480 )begin
                if(delay2_pea == 4'd15)begin
                    delay2_pea <= delay2_pea;  
                end
                else begin
                    delay2_pea <= delay2_pea + 1'b1;
                end
            end
            
        end
        game_end:begin
            //STOP
            delay2_pea <= delay2_pea;
        end
        default: begin
            delay2_pea <= delay2_pea;
        end    
        endcase
    end 
 end

//delay3_pea
reg [3:0]delay3_pea;
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        delay3_pea <= 4'd0;  
    end
    else begin
        case(state)
        init: begin
            delay3_pea <= 4'd0;  
        end
        
        countdown:begin
            delay3_pea <= 4'd0;  
        end
        diff_1:begin
            delay3_pea <= delay3_pea;
        end
        
        diff_2:begin
            //MOVE
            if(peashooter3_place_h <= 10'd640 && peashooter3_place_v <= 10'd480 )begin
                if(delay3_pea == 4'd15)begin
                    delay3_pea <= delay3_pea;  
                end
                else begin
                    delay3_pea <= delay3_pea + 1'b1;
                end
            end
            
        end
        game_end:begin
            //STOP
            delay3_pea <= delay3_pea;
        end
        default: begin
            delay3_pea <= delay3_pea;
        end    
        endcase
    end 
 end


//new_pea
reg place_peashooter1;
//pea 1
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        pea1_place_h <= 10'd900 ; pea1_place_v <= 10'd900;
        place_peashooter1 <= 1'd0; 
    end
    else begin
        case(state)
        init: begin
            pea1_place_h <= 10'd900 ; pea1_place_v <= 10'd900;
        end
        
        countdown:begin
            pea1_place_h <= 10'd900 ; pea1_place_v <= 10'd900;
        end
        diff_1:begin
            //STOP
            pea1_place_h <= pea1_place_h; pea1_place_v <= pea1_place_v;
        end
        
        diff_2:begin
            if(peashooter1_place_h <= 10'd640 && peashooter1_place_v <= 10'd480)begin
                if(place_peashooter1 == 1'b0)begin
                    pea1_place_h <= peashooter1_place_h + 10'd71;
                    pea1_place_v <= peashooter1_place_v + 10'd1;
                    place_peashooter1 <= 1'b1;
                end
                else begin
                    if(pea1_place_h == peashooter1_place_h + 10'd71 + 10'd440)begin
                        pea1_place_h <= peashooter1_place_h + 10'd71;
                    end
                    else begin
                        pea1_place_h <= pea1_place_h + 10'd40;
                    end
                end
            end
            else begin
                pea1_place_h <= 10'd900 ; pea1_place_v <= peashooter1_place_v + 10'd900;
            end
        end
        
        game_end: begin
            //STOP
            pea1_place_h <= pea1_place_h; pea1_place_h <= pea1_place_h;
        end
        
        default:begin
            pea1_place_h <= pea1_place_h; pea1_place_h <= pea1_place_h;
        end
        endcase
    end 
 end

//pea 2
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        pea2_place_h <= 10'd900 ; pea2_place_v <= 10'd900; 
    end
    else begin
        case(state)
        init: begin
            pea2_place_h <= 10'd900 ; pea2_place_v <= 10'd900;
        end
        
        countdown:begin
            pea2_place_h <= 10'd900 ; pea2_place_v <= 10'd900;
        end
        diff_1:begin
            //STOP
            pea2_place_h <= pea2_place_h; pea2_place_v <= pea2_place_v;
        end
        
        diff_2:begin
            if(peashooter1_place_h <= 10'd640 && peashooter1_place_v <= 10'd480)begin
                if(place_peashooter1 == 1'd0)begin
                    pea2_place_h <= peashooter1_place_h;
                    pea2_place_v <= peashooter1_place_v + 10'd1;
                end
                else begin
                    if(pea2_place_h == peashooter1_place_h + 10'd71 + 10'd440)begin
                        pea2_place_h <= peashooter1_place_h + 10'd71;
                    end
                    else begin
                        if(delay1_pea >= 4'd4)
                            pea2_place_h <= pea2_place_h + 10'd40;
                        else if(delay1_pea == 4'd3)begin
                            pea2_place_h <= peashooter1_place_h + 10'd71;
                        end
                        else 
                           pea2_place_h <= pea2_place_h; 
                    end
                end
            end
            else begin
                pea2_place_h <= 10'd900 ; pea2_place_v <= peashooter1_place_v + 10'd1;
            end
        end
        
        game_end: begin
            //STOP
            pea2_place_h <= pea2_place_h; pea2_place_h <= pea2_place_h;
        end
        
        default:begin
            pea2_place_h <= pea2_place_h; pea2_place_h <= pea2_place_h;
        end
        endcase
    end 
 end

//pea 3
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        pea3_place_h <= peashooter1_place_h + 10'd71 ; pea3_place_v <= peashooter1_place_v + 10'd1; 
    end
    else begin
        case(state)
        init: begin
            pea3_place_h <= peashooter1_place_h + 10'd71 ; pea3_place_v <= peashooter1_place_v + 10'd1;
        end
        
        countdown:begin
            pea3_place_h <= peashooter1_place_h + 10'd71 ; pea3_place_v <= peashooter1_place_v + 10'd1;
        end
        diff_1:begin
            //STOP
            pea3_place_h <= pea3_place_h; pea3_place_v <= pea3_place_v;
        end
        
        diff_2:begin
            if(peashooter1_place_h <= 10'd640 && peashooter1_place_v <= 10'd480)begin
                if(place_peashooter1 == 1'd0)begin
                    pea3_place_h <= peashooter1_place_h;
                    pea3_place_v <= peashooter1_place_v + 10'd1;
                end
                else begin
                    if(pea3_place_h == peashooter1_place_h + 10'd71 + 10'd440)begin
                        pea3_place_h <= peashooter1_place_h + 10'd71;
                    end
                    else begin
                        if(delay1_pea >= 4'd7)
                            pea3_place_h <= pea3_place_h + 10'd40;
                        else if(delay1_pea == 4'd6)begin
                            pea3_place_h <= peashooter1_place_h + 10'd71;
                        end
                        else 
                           pea3_place_h <= pea3_place_h; 
                    end
                end
            end
            else begin
                pea3_place_h <= 10'd900 ; pea3_place_v <= 10'd900;
            end
        end
        
        game_end: begin
            //STOP
            pea3_place_h <= pea3_place_h; pea3_place_h <= pea3_place_h;
        end
        
        default:begin
            pea3_place_h <= pea3_place_h; pea3_place_h <= pea3_place_h;
        end
        endcase
    end 
end

//pea 4
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        pea4_place_h <= 10'd900 ; pea4_place_v <= 10'd900; 
    end
    else begin
        case(state)
        init: begin
            pea4_place_h <= 10'd900 ; pea4_place_v <= 10'd900;
        end
        
        countdown:begin
            pea4_place_h <= 10'd900 ; pea4_place_v <= 10'd900;
        end
        diff_1:begin
            //STOP
            pea4_place_h <= pea4_place_h; pea4_place_v <= pea4_place_v;
        end
        
        diff_2:begin
            if(peashooter1_place_h <= 10'd640 && peashooter1_place_v <= 10'd480)begin
                if(place_peashooter1 == 1'd0)begin
                    pea4_place_h <= peashooter1_place_h;
                    pea4_place_v <= peashooter1_place_v + 10'd1;
                end
                else begin
                    if(pea4_place_h == peashooter1_place_h + 10'd71 + 10'd440)begin
                        pea4_place_h <= peashooter1_place_h + 10'd71;
                    end
                    else begin
                        if(delay1_pea >= 4'd10)
                            pea4_place_h <= pea4_place_h + 10'd40;
                        else if(delay1_pea == 4'd9)begin
                            pea4_place_h <= peashooter1_place_h + 10'd71;
                        end
                        else 
                           pea4_place_h <= pea4_place_h; 
                    end
                end
            end
            else begin
                pea4_place_h <= 10'd900 ; pea4_place_v <= 10'd900;
            end
        end
        
        game_end: begin
            //STOP
            pea4_place_h <= pea4_place_h; pea4_place_h <= pea4_place_h;
        end
        
        default:begin
            pea4_place_h <= pea4_place_h; pea4_place_h <= pea4_place_h;
        end
        endcase
    end 
end

reg place_peashooter2;
//pea 5
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        pea5_place_h <= 10'd900 ; pea5_place_v <= 10'd900;
        place_peashooter2 <= 1'd0; 
    end
    else begin
        case(state)
        init: begin
            pea5_place_h <= 10'd900 ; pea5_place_v <= 10'd900;
        end
        
        countdown:begin
            pea5_place_h <= 10'd900 ; pea5_place_v <= 10'd900;
        end
        diff_1:begin
            //STOP
            pea5_place_h <= pea5_place_h; pea5_place_v <= pea5_place_v;
        end
        
        diff_2:begin
            if(peashooter2_place_h <= 10'd640 && peashooter2_place_v <= 10'd480)begin
                if(place_peashooter2 == 1'b0)begin
                    pea5_place_h <= peashooter2_place_h + 10'd71;
                    pea5_place_v <= peashooter2_place_v + 10'd1;
                    place_peashooter2 <= 1'b1;
                end
                else begin
                    if(pea5_place_h == peashooter2_place_h + 10'd71 + 10'd440)begin
                        pea5_place_h <= peashooter2_place_h + 10'd71;
                    end
                    else begin
                        pea5_place_h <= pea5_place_h + 10'd40;
                    end
                end
            end
            else begin
                pea5_place_h <= 10'd900 ; pea5_place_v <= peashooter2_place_v + 10'd900;
            end
        end
        
        game_end: begin
            //STOP
            pea5_place_h <= pea5_place_h; pea5_place_h <= pea5_place_h;
        end
        
        default:begin
            pea5_place_h <= pea5_place_h; pea5_place_h <= pea5_place_h;
        end
        endcase
    end 
 end

//pea 6
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        pea6_place_h <= 10'd900 ; pea6_place_v <= 10'd900; 
    end
    else begin
        case(state)
        init: begin
            pea6_place_h <= 10'd900 ; pea6_place_v <= 10'd900;
        end
        
        countdown:begin
            pea6_place_h <= 10'd900 ; pea6_place_v <= 10'd900;
        end
        diff_1:begin
            //STOP
            pea6_place_h <= pea6_place_h; pea6_place_v <= pea6_place_v;
        end
        
        diff_2:begin
            if(peashooter2_place_h <= 10'd640 && peashooter2_place_v <= 10'd480)begin
                if(place_peashooter2 == 1'd0)begin
                    pea6_place_h <= peashooter2_place_h;
                    pea6_place_v <= peashooter2_place_v + 10'd1;
                end
                else begin
                    if(pea6_place_h == peashooter2_place_h + 10'd71 + 10'd440)begin
                        pea6_place_h <= peashooter2_place_h + 10'd71;
                    end
                    else begin
                        if(delay2_pea >= 4'd4)
                            pea6_place_h <= pea6_place_h + 10'd40;
                        else if(delay2_pea == 4'd3) begin
                            pea6_place_h <= peashooter2_place_h + 10'd71;
                        end
                        else 
                           pea6_place_h <= pea6_place_h; 
                    end
                end
            end
            else begin
                pea6_place_h <= 10'd900 ; pea6_place_v <= peashooter2_place_v + 10'd1;
            end
        end
        
        game_end: begin
            //STOP
            pea6_place_h <= pea6_place_h; pea6_place_h <= pea6_place_h;
        end
        
        default:begin
            pea6_place_h <= pea6_place_h; pea6_place_h <= pea6_place_h;
        end
        endcase
    end 
 end

//pea 7
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        pea7_place_h <= peashooter2_place_h + 10'd71 ; pea7_place_v <= peashooter2_place_v + 10'd1; 
    end
    else begin
        case(state)
        init: begin
            pea7_place_h <= peashooter2_place_h + 10'd71 ; pea7_place_v <= peashooter2_place_v + 10'd1;
        end
        
        countdown:begin
            pea7_place_h <= peashooter2_place_h + 10'd71 ; pea7_place_v <= peashooter2_place_v + 10'd1;
        end
        diff_1:begin
            //STOP
            pea7_place_h <= pea7_place_h; pea7_place_v <= pea7_place_v;
        end
        
        diff_2:begin
            if(peashooter2_place_h <= 10'd640 && peashooter2_place_v <= 10'd480)begin
                if(place_peashooter2 == 1'd0)begin
                    pea7_place_h <= peashooter2_place_h;
                    pea7_place_v <= peashooter2_place_v + 10'd1;
                end
                else begin
                    if(pea7_place_h == peashooter2_place_h + 10'd71 + 10'd440)begin
                        pea7_place_h <= peashooter2_place_h + 10'd71;
                    end
                    else begin
                        if(delay2_pea >= 4'd7)
                            pea7_place_h <= pea7_place_h + 10'd40;
                        else if(delay2_pea == 4'd6) begin
                            pea7_place_h <= peashooter2_place_h + 10'd71;
                        end
                        else 
                           pea7_place_h <= pea7_place_h; 
                    end
                end
            end
            else begin
                pea7_place_h <= 10'd900 ; pea7_place_v <= 10'd900;
            end
        end
        
        game_end: begin
            //STOP
            pea7_place_h <= pea7_place_h; pea7_place_h <= pea7_place_h;
        end
        
        default:begin
            pea7_place_h <= pea7_place_h; pea7_place_h <= pea7_place_h;
        end
        endcase
    end 
end

//pea 8
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        pea8_place_h <= 10'd900 ; pea8_place_v <= 10'd900; 
    end
    else begin
        case(state)
        init: begin
            pea8_place_h <= 10'd900 ; pea8_place_v <= 10'd900;
        end
        
        countdown:begin
            pea8_place_h <= 10'd900 ; pea8_place_v <= 10'd900;
        end
        diff_1:begin
            //STOP
            pea8_place_h <= pea8_place_h; pea8_place_v <= pea8_place_v;
        end
        
        diff_2:begin
            if(peashooter2_place_h <= 10'd640 && peashooter2_place_v <= 10'd480)begin
                if(place_peashooter2 == 1'd0)begin
                    pea8_place_h <= peashooter2_place_h;
                    pea8_place_v <= peashooter2_place_v + 10'd1;
                end
                else begin
                    if(pea8_place_h == peashooter2_place_h + 10'd71 + 10'd440)begin
                        pea8_place_h <= peashooter2_place_h + 10'd71;
                    end
                    else begin
                        if(delay2_pea >= 4'd10)
                            pea8_place_h <= pea8_place_h + 10'd40;
                        else if(delay2_pea == 4'd9)begin
                            pea8_place_h <= peashooter2_place_h + 10'd71;
                        end
                        else 
                           pea8_place_h <= pea8_place_h; 
                    end
                end
            end
            else begin
                pea8_place_h <= 10'd900 ; pea8_place_v <= 10'd900;
            end
        end
        
        game_end: begin
            //STOP
            pea8_place_h <= pea8_place_h; pea8_place_h <= pea8_place_h;
        end
        
        default:begin
            pea8_place_h <= pea8_place_h; pea8_place_h <= pea8_place_h;
        end
        endcase
    end 
end

reg place_peashooter3;
//pea 9
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        pea9_place_h <= 10'd900 ; pea9_place_v <= 10'd900;
        place_peashooter3 <= 1'd0; 
    end
    else begin
        case(state)
        init: begin
            pea9_place_h <= 10'd900 ; pea9_place_v <= 10'd900;
        end
        
        countdown:begin
            pea9_place_h <= 10'd900 ; pea9_place_v <= 10'd900;
        end
        diff_1:begin
            //STOP
            pea9_place_h <= pea9_place_h; pea9_place_v <= pea9_place_v;
        end
        
        diff_2:begin
            if(peashooter3_place_h <= 10'd640 && peashooter3_place_v <= 10'd480)begin
                if(place_peashooter3 == 1'b0)begin
                    pea9_place_h <= peashooter3_place_h + 10'd71;
                    pea9_place_v <= peashooter3_place_v + 10'd1;
                    place_peashooter3 <= 1'b1;
                end
                else begin
                    if(pea9_place_h == peashooter3_place_h + 10'd71 + 10'd440)begin
                        pea9_place_h <= peashooter3_place_h + 10'd71;
                    end
                    else begin
                        pea9_place_h <= pea9_place_h + 10'd40;
                    end
                end
            end
            else begin
                pea9_place_h <= 10'd900 ; pea9_place_v <= peashooter3_place_v + 10'd900;
            end
        end
        
        game_end: begin
            //STOP
            pea9_place_h <= pea9_place_h; pea9_place_h <= pea9_place_h;
        end
        
        default:begin
            pea9_place_h <= pea9_place_h; pea9_place_h <= pea9_place_h;
        end
        endcase
    end 
 end

//pea 10
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        pea10_place_h <= 10'd900 ; pea10_place_v <= 10'd900; 
    end
    else begin
        case(state)
        init: begin
            pea10_place_h <= 10'd900 ; pea10_place_v <= 10'd900;
        end
        
        countdown:begin
            pea10_place_h <= 10'd900 ; pea10_place_v <= 10'd900;
        end
        diff_1:begin
            //STOP
            pea10_place_h <= pea10_place_h; pea10_place_v <= pea10_place_v;
        end
        
        diff_2:begin
            if(peashooter3_place_h <= 10'd640 && peashooter3_place_v <= 10'd480)begin
                if(place_peashooter3 == 1'd0)begin
                    pea10_place_h <= peashooter3_place_h;
                    pea10_place_v <= peashooter3_place_v + 10'd1;
                end
                else begin
                    if(pea10_place_h == peashooter3_place_h + 10'd71 + 10'd440)begin
                        pea10_place_h <= peashooter3_place_h + 10'd71;
                    end
                    else begin
                        if(delay3_pea >= 4'd4)
                            pea10_place_h <= pea10_place_h + 10'd40;
                        else if(delay3_pea == 4'd3)begin
                            pea10_place_h <= peashooter3_place_h + 10'd71;
                        end
                        else 
                           pea10_place_h <= pea10_place_h; 
                    end
                end
            end
            else begin
                pea10_place_h <= 10'd900 ; pea10_place_v <= peashooter3_place_v + 10'd1;
            end
        end
        
        game_end: begin
            //STOP
            pea10_place_h <= pea10_place_h; pea10_place_h <= pea10_place_h;
        end
        
        default:begin
            pea10_place_h <= pea10_place_h; pea10_place_h <= pea10_place_h;
        end
        endcase
    end 
 end

//pea 11
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        pea11_place_h <= peashooter3_place_h + 10'd71 ; pea11_place_v <= peashooter3_place_v + 10'd1; 
    end
    else begin
        case(state)
        init: begin
            pea11_place_h <= peashooter3_place_h + 10'd71 ; pea11_place_v <= peashooter3_place_v + 10'd1;
        end
        
        countdown:begin
            pea11_place_h <= peashooter3_place_h + 10'd71 ; pea11_place_v <= peashooter3_place_v + 10'd1;
        end
        diff_1:begin
            //STOP
            pea11_place_h <= pea11_place_h; pea11_place_v <= pea11_place_v;
        end
        
        diff_2:begin
            if(peashooter3_place_h <= 10'd640 && peashooter3_place_v <= 10'd480)begin
                if(place_peashooter3 == 1'd0)begin
                    pea11_place_h <= peashooter3_place_h;
                    pea11_place_v <= peashooter3_place_v + 10'd1;
                end
                else begin
                    if(pea11_place_h == peashooter3_place_h + 10'd71 + 10'd440)begin
                        pea11_place_h <= peashooter3_place_h + 10'd71;
                    end
                    else begin
                        if(delay3_pea >= 4'd7)
                            pea11_place_h <= pea11_place_h + 10'd40;
                        else if(delay3_pea == 4'd6)begin
                            pea11_place_h <= peashooter3_place_h + 10'd71;
                        end    
                        else 
                           pea11_place_h <= pea11_place_h; 
                    end
                end
            end
            else begin
                pea11_place_h <= 10'd900 ; pea11_place_v <= 10'd900;
            end
        end
        
        game_end: begin
            //STOP
            pea11_place_h <= pea11_place_h; pea11_place_h <= pea11_place_h;
        end
        
        default:begin
            pea11_place_h <= pea11_place_h; pea11_place_h <= pea11_place_h;
        end
        endcase
    end 
end

//pea 12
always@(posedge clk_2hz or negedge rst)begin
    if (!rst)begin 
        pea12_place_h <= 10'd900 ; pea12_place_v <= 10'd900; 
    end
    else begin
        case(state)
        init: begin
            pea12_place_h <= 10'd900 ; pea12_place_v <= 10'd900;
        end
        
        countdown:begin
            pea12_place_h <= 10'd900 ; pea12_place_v <= 10'd900;
        end
        diff_1:begin
            //STOP
            pea12_place_h <= pea12_place_h; pea12_place_v <= pea12_place_v;
        end
        
        diff_2:begin
            if(peashooter3_place_h <= 10'd640 && peashooter3_place_v <= 10'd480)begin
                if(place_peashooter3 == 1'd0)begin
                    pea12_place_h <= peashooter3_place_h;
                    pea12_place_v <= peashooter3_place_v + 10'd1;
                end
                else begin
                    if(pea12_place_h == peashooter3_place_h + 10'd71 + 10'd440)begin
                        pea12_place_h <= peashooter3_place_h + 10'd71;
                    end
                    else begin
                        if(delay3_pea >= 4'd10)
                            pea12_place_h <= pea12_place_h + 10'd40;
                        else if(delay3_pea == 4'd9)begin
                            pea12_place_h <= peashooter3_place_h + 10'd71;
                        end
                        else 
                           pea12_place_h <= pea12_place_h; 
                    end
                end
            end
            else begin
                pea12_place_h <= 10'd900 ; pea12_place_v <= 10'd900;
            end
        end
        
        game_end: begin
            //STOP
            pea12_place_h <= pea12_place_h; pea12_place_h <= pea12_place_h;
        end
        
        default:begin
            pea12_place_h <= pea12_place_h; pea12_place_h <= pea12_place_h;
        end
        endcase
    end 
end


 
 ////////////////////////////////////////////////////////// above only control  position cahnge and  switch  plant
 //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////below are for vga display
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////below are for vga display
   //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////below are for vga display
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////below are for vga display

	reg ctrlclk;
 // module on p14.
	SyncGeneration u2 (
		.pclk(clk_1), 
		.reset(rst), 
		.hSync(hsync), 
		.vSync(vsync), 
		.dataValid(valid), 
		.hDataCnt(h_cnt), 
		.vDataCnt(v_cnt)
		);

reg sun1_area,sun2_area,sun3_area,sun4_area,sun5_area,sun6_area,sun7_area;
reg wall_nut1_area,wall_nut2_area,wall_nut3_area;
reg peashooter1_area,peashooter2_area,peashooter3_area;

wire zombie1_area, zombie2_area, zombie3_area, zombie4_area, zombie5_area, zombie6_area, zombie7_area;
wire buckethead_zombie1_area, buckethead_zombie2_area, buckethead_zombie3_area; 

//鋤草
reg [1:0] zombie_decrease;
reg [3:0]N_zombnumber_max,B_zombnumber_max;
reg[31:0] weeder;
reg negweeder;
reg row1_de,row2_de,row3_de;
//一般殭屍HP//B_zombnumber<=4'd0;
always@(posedge clk_2hz or negedge rst)begin
    if(!rst)begin
        zombie1_HP <= 2'd1; zombie2_HP <= 2'd1; zombie3_HP <= 2'd1; zombie4_HP <= 2'd1; zombie5_HP <= 2'd1; zombie6_HP <= 2'd1; zombie7_HP <= 2'd1;
         weeder<=32'd3;N_zombnumber<=4'd0;N_zombnumber_max<=4'd0;fail<=1'd0;pass<=1'd0;
          buckethead_zombie1_HP <= 2'd2; buckethead_zombie2_HP <= 2'd2; buckethead_zombie3_HP <= 2'd2; B_zombnumber<=0; B_zombnumber_max<=0; negweeder<=0;
          pea1_HP <= 2'd1; pea2_HP <= 2'd1; pea3_HP <= 2'd1; pea4_HP <= 2'd1; pea5_HP <= 2'd1; pea6_HP <= 2'd1; pea7_HP <= 2'd1; pea8_HP <= 2'd1; pea9_HP <= 2'd1; pea10_HP <= 2'd1; pea11_HP <= 2'd1; pea12_HP <= 2'd1;
          row1_de<=0;row2_de<=0;row3_de<=0;
    end
    else begin
        //暫時
        case(state)
        init: begin
          pea1_HP <= 2'd1; pea2_HP <= 2'd1; pea3_HP <= 2'd1; pea4_HP <= 2'd1; pea5_HP <= 2'd1; pea6_HP <= 2'd1; pea7_HP <= 2'd1; 
          pea8_HP <= 2'd1; pea9_HP <= 2'd1; pea10_HP <= 2'd1; pea11_HP <= 2'd1; pea12_HP <= 2'd1;
            zombie1_HP <= 2'd1; zombie2_HP <= 2'd1; zombie3_HP <= 2'd1; zombie4_HP <= 2'd1; zombie5_HP <= 2'd1; zombie6_HP <= 2'd1; zombie7_HP <= 2'd1;
            buckethead_zombie1_HP <= 2'd2; buckethead_zombie2_HP <= 2'd2; buckethead_zombie3_HP <= 2'd2;
            if(switch[0]==0)begin 
                        B_zombnumber<=0; B_zombnumber_max<=0;
                            if(switch[3:5]<=4'd3)begin N_zombnumber<={1'd0,switch[3:5]}; 
                            N_zombnumber_max<={1'd0,switch[3:5]};                          
                            end
                            else begin N_zombnumber<=4'd3; N_zombnumber_max<=4'd3; end
                            if(N_zombnumber == 3'd1)begin
                zombie1_HP <= 2'd1; zombie2_HP <= 2'd0; zombie3_HP <= 2'd0; zombie4_HP <= 2'd0; zombie5_HP <= 2'd0; zombie6_HP <= 2'd0; zombie7_HP <= 2'd0;
            end
            else if(N_zombnumber == 3'd2)begin
                zombie1_HP <= 2'd1; zombie2_HP <= 2'd1; zombie3_HP <= 2'd0; zombie4_HP <= 2'd0; zombie5_HP <= 2'd0; zombie6_HP <= 2'd0; zombie7_HP <= 2'd0;
            end
            else if(N_zombnumber == 3'd3)begin
                zombie1_HP <= 2'd1; zombie2_HP <= 2'd1; zombie3_HP <= 2'd1; zombie4_HP <= 2'd0; zombie5_HP <= 2'd0; zombie6_HP <= 2'd0; zombie7_HP <= 2'd0;
            end
                            //diff<=4'd1; 
                        end
                        else if(switch[0]==1)begin 
                        B_zombnumber<={2'd0,switch[6:7]};
                     B_zombnumber_max<={2'd0,switch[6:7]};
                        N_zombnumber<={1'd0,switch[3:5]};
                        N_zombnumber_max<={1'd0,switch[3:5]};//diff<=4'd2;
                        if( N_zombnumber_max == 3'd1)begin
                zombie1_HP <= 2'd1; zombie2_HP <= 2'd0; zombie3_HP <= 2'd0; zombie4_HP <= 2'd0; zombie5_HP <= 2'd0; zombie6_HP <= 2'd0; zombie7_HP <= 2'd0;
            end
            else if( N_zombnumber_max == 3'd2)begin
                zombie1_HP <= 2'd1; zombie2_HP <= 2'd1; zombie3_HP <= 2'd0; zombie4_HP <= 2'd0; zombie5_HP <= 2'd0; zombie6_HP <= 2'd0; zombie7_HP <= 2'd0;
            end
            else if( N_zombnumber_max == 3'd3)begin
                zombie1_HP <= 2'd1; zombie2_HP <= 2'd1; zombie3_HP <= 2'd1; zombie4_HP <= 2'd0; zombie5_HP <= 2'd0; zombie6_HP <= 2'd0; zombie7_HP <= 2'd0;
            end
            else if( N_zombnumber_max == 3'd4)begin
                zombie1_HP <= 2'd1; zombie2_HP <= 2'd1; zombie3_HP <= 2'd1; zombie4_HP <= 2'd1; zombie5_HP <= 2'd0; zombie6_HP <= 2'd0; zombie7_HP <= 2'd0;
            end
            else if( N_zombnumber_max == 3'd5)begin
                zombie1_HP <= 2'd1; zombie2_HP <= 2'd1; zombie3_HP <= 2'd1; zombie4_HP <= 2'd1; zombie5_HP <= 2'd1; zombie6_HP <= 2'd0; zombie7_HP <= 2'd0;
            end
            else if( N_zombnumber_max == 3'd6)begin
                zombie1_HP <= 2'd1; zombie2_HP <= 2'd1; zombie3_HP <= 2'd1; zombie4_HP <= 2'd1; zombie5_HP <= 2'd1; zombie6_HP <= 2'd1; zombie7_HP <= 2'd0;
            end
            else if( N_zombnumber_max == 3'd7)begin
                zombie1_HP <= 2'd1; zombie2_HP <= 2'd1; zombie3_HP <= 2'd1; zombie4_HP <= 2'd1; zombie5_HP <= 2'd1; zombie6_HP <= 2'd1; zombie7_HP <= 2'd1;
            end
            else begin
                zombie1_HP <= 2'd0; zombie2_HP <= 2'd0; zombie3_HP <= 2'd0; zombie4_HP <= 2'd0; zombie5_HP <= 2'd0; zombie6_HP <= 2'd0; zombie7_HP <= 2'd0;
            end
                         end
        end
        countdown: begin
        pea1_HP <= 2'd1; pea2_HP <= 2'd1; pea3_HP <= 2'd1; pea4_HP <= 2'd1; pea5_HP <= 2'd1; pea6_HP <= 2'd1; pea7_HP <= 2'd1; 
        pea8_HP <= 2'd1; pea9_HP <= 2'd1; pea10_HP <= 2'd1; pea11_HP <= 2'd1; pea12_HP <= 2'd1;
         if( B_zombnumber_max == 3'd1)begin
                buckethead_zombie1_HP <= 2'd2; buckethead_zombie2_HP <= 2'd0; buckethead_zombie3_HP <= 2'd0;
            end
            else if(B_zombnumber_max == 3'd2)begin
                buckethead_zombie1_HP <= 2'd2; buckethead_zombie2_HP <= 2'd2; buckethead_zombie3_HP <= 2'd0;
            end
            else if(B_zombnumber_max == 3'd3)begin
                buckethead_zombie1_HP <= 2'd2; buckethead_zombie2_HP <= 2'd2; buckethead_zombie3_HP <= 2'd2;
            end
                        else begin
                buckethead_zombie1_HP <= 2'd0; buckethead_zombie2_HP <= 2'd0; buckethead_zombie3_HP <= 2'd0;
            end
            N_zombnumber<=N_zombnumber;
        end
        
        diff_1: begin
        buckethead_zombie1_HP <= 2'd0; buckethead_zombie2_HP <= 2'd0; buckethead_zombie3_HP <= 2'd0;
        pea1_HP <= 2'd0; pea2_HP <= 2'd0; pea3_HP <= 2'd0; pea4_HP <= 2'd0; pea5_HP <= 2'd0; pea6_HP <= 2'd0; pea7_HP <= 2'd0;
         pea8_HP <= 2'd0; pea9_HP <= 2'd0; pea10_HP <= 2'd0; pea11_HP <= 2'd0; pea12_HP <= 2'd0;
        if( N_zombnumber_max == 4'd1)begin
                //zombie1_HP <= 2'd1; zombie2_HP <= 2'd0; zombie3_HP <= 2'd0; zombie4_HP <= 2'd0; zombie5_HP <= 2'd0; zombie6_HP <= 2'd0; zombie7_HP <= 2'd0;
                 
             if(s2==1 && red_frame_v==10'd160&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3&&zombie1_place_h<10'd640&&zombie1_HP == 2'd1)begin 
            zombie1_HP<=1'd0;N_zombnumber<=N_zombnumber-4'd1;weeder<=weeder-2'd1;
            end
            else if(s2==1 && red_frame_v==10'd240&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3&&zombie2_place_h<10'd640&&zombie2_HP==1'd1)begin 
                    zombie2_HP<=1'd0;N_zombnumber<=N_zombnumber-4'd1;weeder<=weeder-2'd1;
            end
            else if(s2==1 && red_frame_v==10'd320&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3&&zombie3_place_h<10'd640&& zombie3_HP==1'd1)begin 
                    zombie3_HP<=1'd0;N_zombnumber<=N_zombnumber-4'd1;weeder<=weeder-2'd1;
            end
            //else if(weeder==2'd0) weeder<=weeder;
            else if(s2_d==1&&red_frame_h==10'd0&&red_frame_v<10'd480)weeder<=weeder-2'd1;
            end
        else if( N_zombnumber_max == 4'd2)begin
                //zombie1_HP <= 2'd1; zombie2_HP <= 2'd1; zombie3_HP <= 2'd0; zombie4_HP <= 2'd0; zombie5_HP <= 2'd0; zombie6_HP <= 2'd0; zombie7_HP <= 2'd0;
                
                if(s2==1 && red_frame_v==10'd160&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3&&zombie1_place_h<10'd640&&zombie1_HP == 2'd1)begin 
                zombie1_HP<=1'd0;N_zombnumber<=N_zombnumber-4'd1;weeder<=weeder-2'd1;
                end
                else if(s2==1 && red_frame_v==10'd240&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3&&zombie2_place_h<10'd640&&zombie2_HP==1'd1)begin 
                        zombie2_HP<=1'd0;N_zombnumber<=N_zombnumber-4'd1;weeder<=weeder-2'd1;
                end
                else if(s2==1 && red_frame_v==10'd320&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3&&zombie3_place_h<10'd640&& zombie3_HP==1'd1)begin 
                        zombie3_HP<=1'd0;N_zombnumber<=N_zombnumber-4'd1;weeder<=weeder-2'd1;
                end
                //else if(weeder==2'd0) weeder<=weeder;
                else if(s2_d==1&&red_frame_h==10'd0&&red_frame_v<10'd480)weeder<=weeder-2'd1;
                
            end
            else if( N_zombnumber_max == 4'd3)begin
                //zombie1_HP <= 2'd1; zombie2_HP <= 2'd1; zombie3_HP <= 2'd1; zombie4_HP <= 2'd0; zombie5_HP <= 2'd0; zombie6_HP <= 2'd0; zombie7_HP <= 2'd0;
               
                if(s2_d==1 && red_frame_v==10'd160&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3&&zombie1_place_h<10'd640&&zombie1_HP == 2'd1)begin 
                    zombie1_HP<=1'd0;N_zombnumber<=N_zombnumber-4'd1;weeder<=weeder-2'd1;
                end
                else if(s2_d==1 && red_frame_v==10'd240&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3&&zombie2_place_h<10'd640&&zombie2_HP==1'd1)begin 
                        zombie2_HP<=1'd0;N_zombnumber<=N_zombnumber-4'd1;weeder<=weeder-2'd1;
                end                
                else if(s2_d==1 && red_frame_v==10'd320&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3&&zombie3_place_h<10'd640&& zombie3_HP==1'd1)begin 
                        zombie3_HP<=1'd0;N_zombnumber<=N_zombnumber-4'd1;weeder<=weeder-2'd1;
                end
                //else if(weeder==2'd0) weeder<=weeder;
                else if(s2_d==1&&red_frame_h==10'd0&&red_frame_v<10'd480)weeder<=weeder-2'd1;
            end //+10'd40
           if( ((zombie1_place_h-10'd40 == 10'd41 &&zombie1_HP!=0 ) || (zombie2_place_h-10'd40 == 10'd41 &&zombie2_HP!=0) || (zombie3_place_h -10'd40== 10'd41 &&zombie3_HP!=0) || (zombie4_place_h-10'd40 == 10'd41 &&zombie4_HP!=0) || (zombie5_place_h-10'd40 == 10'd41 &&zombie5_HP!=0) || (zombie6_place_h-10'd40 == 10'd41 &&zombie6_HP!=0) || (zombie7_place_h-10'd40 == 10'd41 &&zombie7_HP!=0) || (buckethead_zombie1_place_h-10'd40 == 10'd41 &&buckethead_zombie1_HP!=0) || (buckethead_zombie2_place_h-10'd40 == 10'd41 &&buckethead_zombie2_HP!=0) || (buckethead_zombie3_place_h-10'd40 == 10'd41 &&buckethead_zombie3_HP!=0)) && (state == diff_1 || state == diff_2))
                fail<=1'd1;
            //else fail<=1'd0;
           else  if(N_zombnumber_max!=4'd0&&N_zombnumber==4'd0)pass<=1'd1;
           else begin pass<=1'd0;fail<=1'd0; end
            end
            
        diff_2: begin
                    if(zombie1_place_h<10'd640 && zombie4_place_h<10'd640 && zombie7_place_h<10'd640 && zombie1_HP==2'd1 && zombie4_HP==2'd1 && zombie7_HP==2'd1&&
                    (s2_d==1 && red_frame_v==10'd160&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3)) begin zombie1_HP<=2'd0;zombie4_HP<=2'd0;weeder<=weeder-2'd1;zombie7_HP<=2'd0;N_zombnumber<=N_zombnumber-3'd3;end
                    else if(zombie1_place_h<10'd640&&zombie4_place_h<10'd640&&zombie1_HP==2'd1&&zombie4_HP==2'd1&&
                    (s2_d==1 && red_frame_v==10'd160&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3))begin zombie1_HP<=2'd0;zombie4_HP<=2'd0;N_zombnumber<=N_zombnumber-3'd2;weeder<=weeder-2'd1;end
                    else if(zombie7_place_h<10'd640&&zombie4_place_h<10'd640&&zombie4_HP==2'd1&&zombie7_HP==2'd1&&
                    (s2_d==1 && red_frame_v==10'd160&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3))begin zombie7_HP<=2'd0;zombie4_HP<=2'd0;N_zombnumber<=N_zombnumber-3'd2;weeder<=weeder-2'd1;end
                    else if(zombie1_place_h<10'd640&&zombie1_HP==2'd1&&
                    (s2_d==1 && red_frame_v==10'd160&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3))begin zombie1_HP<=2'd0;N_zombnumber<=N_zombnumber-3'd1;weeder<=weeder-2'd1;end
                    else if(zombie4_place_h<10'd640&&zombie4_HP==2'd1&&
                    (s2_d==1 && red_frame_v==10'd160&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd30))begin zombie4_HP<=2'd0;N_zombnumber<=N_zombnumber-3'd1;weeder<=weeder-2'd1;end
                    else if(zombie7_place_h<10'd640&&zombie7_HP==2'd1&&
                    (s2_d==1 && red_frame_v==10'd160&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3))begin zombie7_HP<=2'd0;N_zombnumber<=N_zombnumber-3'd1;weeder<=weeder-2'd1;end
                    else  if(zombie2_place_h<10'd640&&zombie5_place_h<10'd640&&zombie2_HP==2'd1&&zombie5_HP==2'd1&&
                     (s2_d==1 && red_frame_v==10'd240 && red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3))begin weeder<=weeder-2'd1;zombie2_HP<=2'd0;zombie5_HP<=0;N_zombnumber<=N_zombnumber-3'd2;end
                     else if(zombie2_place_h<10'd640&&zombie2_HP==2'd1&&
                     (s2_d==1 && red_frame_v==10'd240 && red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3))begin zombie2_HP<=2'd0;N_zombnumber<=N_zombnumber-3'd1;weeder<=weeder-2'd1;end
                     else if(zombie5_place_h<10'd640&&zombie5_HP==2'd1&&
                     (s2_d==1 && red_frame_v==10'd240 && red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3))begin zombie5_HP<=2'd0;N_zombnumber<=N_zombnumber-3'd1;weeder<=weeder-2'd1;end
                    else if(zombie3_place_h<10'd640 && zombie6_place_h<10'd640 && zombie3_HP==2'd1 && zombie6_HP==2'd1&&(s2_d==1 && red_frame_v==10'd320&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3))begin zombie3_HP<=2'd0;zombie6_HP<=2'd0;N_zombnumber<=N_zombnumber-3'd2;weeder<=weeder-2'd1;end
                    else if(zombie3_place_h<10'd640&&zombie3_HP==2'd1&&
                    (s2_d==1 && red_frame_v==10'd320&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3))begin zombie3_HP<=2'd0;N_zombnumber<=N_zombnumber-3'd1;weeder<=weeder-2'd1;end
                    else if(zombie6_place_h<10'd640&&zombie6_HP==2'd1&&
                    (s2_d==1 && red_frame_v==10'd320&&red_frame_h==10'd0&&weeder>=32'd1&&weeder<=32'd3))begin zombie6_HP<=2'd0;N_zombnumber<=N_zombnumber-3'd1;weeder<=weeder-2'd1;end
                    else if(s2_d==1&&red_frame_h==10'd0&&red_frame_v<10'd480)weeder<=weeder-2'd1;
                    ////////////buck head
                    if(red_frame_h==10'd0&&red_frame_v==10'd160&&buckethead_zombie1_HP!=2'd0&&buckethead_zombie1_place_h<10'd640&&s2_d==1&&weeder<=32'd3&&weeder>=32'd1)begin B_zombnumber<=B_zombnumber-2'd1;buckethead_zombie1_HP<=0;negweeder<=1'd1;end
                    else if(red_frame_h==10'd0&&red_frame_v==10'd240&&buckethead_zombie2_HP!=2'd0&&buckethead_zombie2_place_h<10'd640&&s2_d==1&&weeder<=32'd3&&weeder>=32'd1)begin B_zombnumber<=B_zombnumber-2'd1;buckethead_zombie2_HP<=0;negweeder<=1'd1;end
                    else if(red_frame_h==10'd0&&red_frame_v==10'd320&&buckethead_zombie3_HP!=2'd0&&buckethead_zombie3_place_h<10'd640&&s2_d==1&&weeder<=32'd3&&weeder>=32'd1)begin B_zombnumber<=B_zombnumber-2'd1;buckethead_zombie3_HP<=0;negweeder<=1'd1; end
       
                    //////row1
                    ////B_zombnumber<={2'd0,switch[6:7]};
                     ///B_zombnumber_max<={2'd0,switch[6:7]};
                        ///N_zombnumber<={1'd0,switch[3:5]};
                    ////pea1 judge//N_zombnumber<= N_zombnumber-3'd1;
                    if ((pea1_place_h==buckethead_zombie1_place_h||pea1_place_h+10'd40==buckethead_zombie1_place_h)&&pea1_HP==1&&buckethead_zombie1_HP==2'd2&&buckethead_zombie1_place_h<10'd640&&pea1_place_h<10'd640)begin row1_de<=1; buckethead_zombie1_HP<=buckethead_zombie1_HP-10'd1; pea1_HP<=0; end
                    else if ((pea1_place_h==buckethead_zombie1_place_h||pea1_place_h+10'd40==buckethead_zombie1_place_h)&&pea1_HP==1&&buckethead_zombie1_HP==2'd1&&buckethead_zombie1_place_h<10'd640)begin B_zombnumber<=B_zombnumber-3'd1;buckethead_zombie1_HP<=0; pea1_HP<=0; end
                    else if((pea1_place_h==zombie1_place_h||pea1_place_h+10'd40==zombie1_place_h)&&pea1_HP==1&&zombie1_HP&&zombie1_place_h<10'd640)begin zombie1_HP<=0; pea1_HP<=0;N_zombnumber<= N_zombnumber-3'd1;row1_de<=1; end
                    else if((pea1_place_h==zombie4_place_h||pea1_place_h+10'd40==zombie4_place_h)&&pea1_HP==1&&zombie4_HP&&zombie4_place_h<10'd640)begin zombie4_HP<=0; pea1_HP<=0;N_zombnumber<= N_zombnumber-3'd1; row1_de<=1;end
                    else if((pea1_place_h==zombie7_place_h||pea1_place_h+10'd40==zombie7_place_h)&&pea1_HP==1&&zombie7_HP&&zombie7_place_h<10'd640)begin zombie7_HP<=0; pea1_HP<=0;N_zombnumber<= N_zombnumber-3'd1;row1_de<=1;end
                   ////pea2 judge 
                    else if ((pea2_place_h==buckethead_zombie1_place_h||pea2_place_h+10'd40==buckethead_zombie1_place_h)&&pea2_HP==1&&buckethead_zombie1_HP==2'd2&&buckethead_zombie1_place_h<10'd640)begin  buckethead_zombie1_HP<=buckethead_zombie1_HP-10'd1; pea2_HP<=0; end
                    else if ((pea2_place_h==buckethead_zombie1_place_h||pea2_place_h+10'd40==buckethead_zombie1_place_h)&&pea2_HP==1&&buckethead_zombie1_HP==2'd1&&buckethead_zombie1_place_h<10'd640)begin B_zombnumber<=B_zombnumber-3'd1;buckethead_zombie1_HP<=0; pea2_HP<=0; end
                    else if((pea2_place_h==zombie1_place_h||pea2_place_h+10'd40==zombie1_place_h)&&pea2_HP==1&&zombie1_HP&&zombie1_place_h<10'd640)begin zombie1_HP<=0;pea2_HP<=0; row1_de<=1;N_zombnumber<= N_zombnumber-3'd1;end
                    else if((pea2_place_h==zombie4_place_h||pea2_place_h+10'd40==zombie4_place_h)&&pea2_HP==1&&zombie4_HP&&zombie4_place_h<10'd640)begin zombie4_HP<=0;pea2_HP<=0;row1_de<=1;N_zombnumber<= N_zombnumber-3'd1;end
                    else if((pea2_place_h==zombie7_place_h||pea2_place_h+10'd40==zombie7_place_h)&&pea2_HP==1&&zombie7_HP&&zombie7_place_h<10'd640)begin zombie7_HP<=0; pea2_HP<=0;row1_de<=1;N_zombnumber<= N_zombnumber-3'd1;end
                    /////pea3 judge
                    else if ((pea3_place_h==buckethead_zombie1_place_h||pea3_place_h+10'd40==buckethead_zombie1_place_h)&&pea3_HP==1&&buckethead_zombie1_HP==2'd2&&buckethead_zombie1_place_h<10'd640)begin  buckethead_zombie1_HP<=buckethead_zombie1_HP-10'd1; pea3_HP<=0; end
                    else if ((pea3_place_h==buckethead_zombie1_place_h||pea3_place_h+10'd40==buckethead_zombie1_place_h)&&pea3_HP==1&&buckethead_zombie1_HP==2'd1&&buckethead_zombie1_place_h<10'd640)begin B_zombnumber<=B_zombnumber-3'd1;buckethead_zombie1_HP<=0; pea3_HP<=0; end
                    else if((pea3_place_h==zombie1_place_h||pea3_place_h+10'd40==zombie1_place_h)&&pea3_HP==1&&zombie1_HP&&zombie1_place_h<10'd640)begin zombie1_HP<=0;pea3_HP<=0;row1_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                    else if((pea3_place_h==zombie4_place_h||pea3_place_h+10'd40==zombie4_place_h)&&pea3_HP==1&&zombie4_HP&&zombie4_place_h<10'd640)begin zombie4_HP<=0; pea3_HP<=0; row1_de<=1;N_zombnumber<= N_zombnumber-3'd1;end
                    else if((pea3_place_h==zombie7_place_h||pea3_place_h+10'd40==zombie7_place_h)&&pea3_HP==1&&zombie7_HP&&zombie7_place_h<10'd640)begin zombie7_HP<=0; pea3_HP<=0;row1_de<=1;N_zombnumber<= N_zombnumber-3'd1;end
                    /////pea4 judge
                   else  if ((pea4_place_h==buckethead_zombie1_place_h||pea4_place_h+10'd40==buckethead_zombie1_place_h)&&pea4_HP==1&&buckethead_zombie1_HP==2'd2&&buckethead_zombie1_place_h<10'd640)begin  buckethead_zombie1_HP<=buckethead_zombie1_HP-10'd1; pea4_HP<=0; end
                    else if ((pea4_place_h==buckethead_zombie1_place_h||pea4_place_h+10'd40==buckethead_zombie1_place_h)&&pea4_HP==1&&buckethead_zombie1_HP==2'd1&&buckethead_zombie1_place_h<10'd640)begin B_zombnumber<=B_zombnumber-3'd1;buckethead_zombie1_HP<=0; pea4_HP<=0; end
                    else if((pea4_place_h==zombie1_place_h||pea4_place_h+10'd40==zombie1_place_h)&&pea4_HP==1&&zombie1_HP&&zombie1_place_h<10'd640)begin zombie1_HP<=0; pea4_HP<=0; row1_de<=1;N_zombnumber<= N_zombnumber-3'd1;end
                    else if((pea4_place_h==zombie4_place_h||pea4_place_h+10'd40==zombie4_place_h)&&pea4_HP==1&&zombie4_HP&&zombie4_place_h<10'd640)begin zombie4_HP<=0;pea4_HP<=0;row1_de<=1;N_zombnumber<= N_zombnumber-3'd1;end
                    else if((pea4_place_h==zombie7_place_h||pea4_place_h+10'd40==zombie7_place_h)&&pea4_HP==1&&zombie7_HP&&zombie7_place_h<10'd640)begin zombie7_HP<=0;pea4_HP<=0;row1_de<=1;N_zombnumber<= N_zombnumber-3'd1;end
                    
                    ////////////////////revive pea
                    if(pea1_place_h==peashooter1_place_h+10'd71+10'd440)begin pea1_HP<=2'd1; end
                    if(pea2_place_h==peashooter1_place_h+10'd71+10'd440)begin pea2_HP<=2'd1; end 
                    if(pea3_place_h==peashooter1_place_h+10'd71+10'd440)begin pea3_HP<=2'd1; end
                    if(pea4_place_h==peashooter1_place_h+10'd71+10'd440)begin pea4_HP<=2'd1; end
                    //////row2row2_de<=1;
                    if ((pea5_place_h==buckethead_zombie2_place_h||pea5_place_h+10'd40==buckethead_zombie2_place_h)&&pea5_HP==1&&buckethead_zombie2_HP==2'd2&&buckethead_zombie2_place_h<10'd640&&pea5_place_h<10'd640)begin  buckethead_zombie2_HP<=buckethead_zombie2_HP-10'd1; pea5_HP<=0;end
                    else if ((pea5_place_h==buckethead_zombie2_place_h||pea5_place_h+10'd40==buckethead_zombie2_place_h)&&pea5_HP==1&&buckethead_zombie2_HP==2'd1&&buckethead_zombie2_place_h<10'd640)begin B_zombnumber<=B_zombnumber-3'd1;buckethead_zombie2_HP<=0; pea5_HP<=0;end
                    else if((pea5_place_h==zombie2_place_h||pea5_place_h+10'd40==zombie2_place_h)&&pea5_HP==1&&zombie2_HP&&zombie2_place_h<10'd640)begin zombie2_HP<=0; pea5_HP<=0;row2_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                    else if((pea5_place_h==zombie5_place_h||pea5_place_h+10'd40==zombie5_place_h)&&pea5_HP==1&&zombie5_HP&&zombie5_place_h<10'd640)begin zombie5_HP<=0; pea5_HP<=0;row2_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                   ////pea6 judge 
                    else if ((pea6_place_h==buckethead_zombie2_place_h||pea6_place_h+10'd40==buckethead_zombie2_place_h)&&pea6_HP==1&&buckethead_zombie2_HP==2'd2&&buckethead_zombie2_place_h<10'd640&&pea6_place_h<10'd640)begin  buckethead_zombie2_HP<=buckethead_zombie2_HP-10'd1; pea6_HP<=0; end
                    else if ((pea6_place_h==buckethead_zombie2_place_h||pea6_place_h+10'd40==buckethead_zombie2_place_h)&&pea6_HP==1&&buckethead_zombie2_HP==2'd1&&buckethead_zombie2_place_h<10'd640)begin B_zombnumber<=B_zombnumber-3'd1;buckethead_zombie2_HP<=0; pea6_HP<=0;end
                    else if((pea6_place_h==zombie2_place_h||pea6_place_h+10'd40==zombie2_place_h)&&pea6_HP==1&&zombie2_HP&&zombie2_place_h<10'd640)begin zombie2_HP<=0;  pea6_HP<=0;row2_de<=1;N_zombnumber<= N_zombnumber-3'd1;end
                    else if((pea6_place_h==zombie5_place_h||pea6_place_h+10'd40==zombie5_place_h)&&pea6_HP==1&&zombie5_HP&&zombie5_place_h<10'd640)begin zombie5_HP<=0;  pea6_HP<=0;row2_de<=1;N_zombnumber<= N_zombnumber-3'd1;end
                    /////pea7 judge
                    else if ((pea7_place_h==buckethead_zombie2_place_h||pea7_place_h+10'd40==buckethead_zombie2_place_h)&&pea7_HP==1&&buckethead_zombie2_HP==2'd2&&buckethead_zombie2_place_h<10'd640&&pea7_place_h<10'd640)begin  buckethead_zombie2_HP<=buckethead_zombie2_HP-10'd1; pea7_HP<=0; end
                    else if ((pea7_place_h==buckethead_zombie2_place_h||pea7_place_h+10'd40==buckethead_zombie2_place_h)&&pea7_HP==1&&buckethead_zombie2_HP==2'd1&&buckethead_zombie2_place_h<10'd640)begin B_zombnumber<=B_zombnumber-3'd1;buckethead_zombie2_HP<=0; pea7_HP<=0;end
                    else if((pea7_place_h==zombie2_place_h||pea7_place_h+10'd40==zombie2_place_h)&&pea7_HP==1&&zombie2_HP&&zombie2_place_h<10'd640)begin zombie2_HP<=0;  pea7_HP<=0;row2_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                    else if((pea7_place_h==zombie5_place_h||pea7_place_h+10'd40==zombie5_place_h)&&pea7_HP==1&&zombie5_HP&&zombie5_place_h<10'd640)begin zombie5_HP<=0;  pea7_HP<=0;row2_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                    /////pea8 judge
                    else if ((pea8_place_h==buckethead_zombie2_place_h||pea8_place_h+10'd40==buckethead_zombie2_place_h)&&pea8_HP==1&&buckethead_zombie2_HP==2'd2&&buckethead_zombie2_place_h<10'd640&&pea8_place_h<10'd640)begin  buckethead_zombie2_HP<=buckethead_zombie2_HP-10'd1; pea8_HP<=0;end
                    else if ((pea8_place_h==buckethead_zombie2_place_h||pea8_place_h+10'd40==buckethead_zombie2_place_h)&&pea8_HP==1&&buckethead_zombie2_HP==2'd1&&buckethead_zombie2_place_h<10'd640)begin B_zombnumber<=B_zombnumber-3'd1;buckethead_zombie2_HP<=0; pea8_HP<=0;end
                    else if((pea8_place_h==zombie2_place_h||pea8_place_h+10'd40==zombie2_place_h)&&pea8_HP==1&&zombie2_HP&&zombie2_place_h<10'd640)begin zombie2_HP<=0;  pea8_HP<=0;row2_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                    else if((pea8_place_h==zombie5_place_h||pea8_place_h+10'd40==zombie5_place_h)&&pea8_HP==1&&zombie5_HP&&zombie5_place_h<10'd640)begin zombie5_HP<=0;  pea8_HP<=0;row2_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                    
                    ////////////////////revive pea
                    if(pea5_place_h==peashooter1_place_h+10'd71+10'd440)begin pea5_HP<=2'd1; end
                    if(pea6_place_h==peashooter1_place_h+10'd71+10'd440)begin pea6_HP<=2'd1; end 
                    if(pea7_place_h==peashooter1_place_h+10'd71+10'd440)begin pea7_HP<=2'd1; end
                    if(pea8_place_h==peashooter1_place_h+10'd71+10'd440)begin pea8_HP<=2'd1; end
                    /////////row3 row3_de<=1;
                    //pea9 judge
                    if ((pea9_place_h==buckethead_zombie3_place_h||pea9_place_h+10'd40==buckethead_zombie3_place_h)&&pea9_HP==1&&buckethead_zombie3_HP==2'd2&&buckethead_zombie3_place_h<10'd640&&pea9_place_h<10'd640)begin  buckethead_zombie3_HP<=buckethead_zombie3_HP-10'd1; pea9_HP<=0; end
                    else if ((pea9_place_h==buckethead_zombie3_place_h||pea9_place_h+10'd40==buckethead_zombie3_place_h)&&pea9_HP==1&&buckethead_zombie3_HP==2'd1&&buckethead_zombie3_place_h<10'd640)begin B_zombnumber<=B_zombnumber-3'd1;buckethead_zombie3_HP<=0; pea9_HP<=0;end
                    else if((pea9_place_h==zombie3_place_h||pea9_place_h+10'd40==zombie3_place_h)&&pea9_HP==1&&zombie3_HP&&zombie3_place_h<10'd640)begin zombie3_HP<=0;  pea9_HP<=0;row3_de<=1;N_zombnumber<= N_zombnumber-3'd1;end
                    else if((pea9_place_h==zombie6_place_h||pea9_place_h+10'd40==zombie6_place_h)&&pea9_HP==1&&zombie6_HP&&zombie6_place_h<10'd640)begin zombie6_HP<=0;  pea9_HP<=0;row3_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                    /////pea10 judge
                    else if ((pea10_place_h==buckethead_zombie3_place_h||pea10_place_h+10'd40==buckethead_zombie3_place_h)&&pea10_HP==1&&buckethead_zombie3_HP==2'd2&&buckethead_zombie3_place_h<10'd640&&pea10_place_h<10'd640)begin  buckethead_zombie3_HP<=buckethead_zombie3_HP-10'd1; pea10_HP<=0; end
                    else if ((pea10_place_h==buckethead_zombie3_place_h||pea10_place_h+10'd40==buckethead_zombie3_place_h)&&pea10_HP==1&&buckethead_zombie3_HP==2'd1&&buckethead_zombie3_place_h<10'd640)begin B_zombnumber<=B_zombnumber-3'd1;buckethead_zombie3_HP<=0; pea10_HP<=0;end
                    else if((pea10_place_h==zombie3_place_h||pea10_place_h+10'd40==zombie3_place_h)&&pea10_HP==1&&zombie3_HP&&zombie3_place_h<10'd640)begin zombie3_HP<=0;  pea10_HP<=0;row3_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                    else if((pea10_place_h==zombie6_place_h||pea10_place_h+10'd40==zombie6_place_h)&&pea10_HP==1&&zombie6_HP&&zombie6_place_h<10'd640)begin zombie6_HP<=0;  pea10_HP<=0;row3_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                    /////pea11 judge
                   else if ((pea11_place_h==buckethead_zombie3_place_h||pea11_place_h+10'd40==buckethead_zombie3_place_h)&&pea11_HP==1&&buckethead_zombie3_HP==2'd2&&buckethead_zombie3_place_h<10'd640&&pea11_place_h<10'd640)begin  buckethead_zombie3_HP<=buckethead_zombie3_HP-10'd1; pea11_HP<=0;end
                    else if ((pea11_place_h==buckethead_zombie3_place_h||pea11_place_h+10'd40==buckethead_zombie3_place_h)&&pea11_HP==1&&buckethead_zombie3_HP==2'd1&&buckethead_zombie3_place_h<10'd640)begin B_zombnumber<=B_zombnumber-3'd1;buckethead_zombie3_HP<=0; pea11_HP<=0;end
                    else if((pea11_place_h==zombie3_place_h||pea11_place_h+10'd40==zombie3_place_h)&&pea11_HP==1&&zombie3_HP&&zombie3_place_h<10'd640)begin zombie3_HP<=0; pea11_HP<=0;row3_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                    else if((pea11_place_h==zombie6_place_h||pea11_place_h+10'd40==zombie6_place_h)&&pea11_HP==1&&zombie6_HP&&zombie6_place_h<10'd640)begin zombie6_HP<=0;  pea11_HP<=0;row3_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                    /////pea12 judge
                   else if ((pea12_place_h==buckethead_zombie3_place_h||pea12_place_h+10'd40==buckethead_zombie3_place_h)&&pea12_HP==1&&buckethead_zombie3_HP==2'd2&&buckethead_zombie3_place_h<10'd640&&pea12_place_h<10'd640)begin  buckethead_zombie3_HP<=buckethead_zombie3_HP-10'd1; pea12_HP<=0;end
                    else if ((pea12_place_h==buckethead_zombie3_place_h||pea12_place_h+10'd40==buckethead_zombie3_place_h)&&pea12_HP==1&&buckethead_zombie3_HP==2'd1&&buckethead_zombie3_place_h<10'd640)begin B_zombnumber<=B_zombnumber-3'd1;buckethead_zombie3_HP<=0; pea12_HP<=0;end
                    else if((pea12_place_h==zombie3_place_h||pea12_place_h+10'd40==zombie3_place_h)&&pea12_HP==1&&zombie3_HP&&zombie3_place_h<10'd640)begin zombie3_HP<=0; pea12_HP<=0;row3_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                    else if((pea12_place_h==zombie6_place_h||pea12_place_h+10'd40==zombie6_place_h)&&pea12_HP==1&&zombie6_HP&&zombie6_place_h<10'd640)begin zombie6_HP<=0; pea12_HP<=0;row3_de<=1;N_zombnumber<= N_zombnumber-3'd1; end
                    ////////////////////revive pea
                    if(pea9_place_h==peashooter3_place_h+10'd71+10'd440)begin pea9_HP<=2'd1; end
                    if(pea10_place_h==peashooter3_place_h+10'd71+10'd440)begin pea10_HP<=2'd1; end 
                    if(pea11_place_h==peashooter3_place_h+10'd71+10'd440)begin pea11_HP<=2'd1; end
                    if(pea12_place_h==peashooter3_place_h+10'd71+10'd440)begin pea12_HP<=2'd1; end
                   
//                        if(row1_de==1)begin N_zombnumber<= N_zombnumber-3'd1;row1_de<=0; end
//                        else if(row2_de==1)begin N_zombnumber<= N_zombnumber-3'd1;row2_de<=0; end
//                        else if(row3_de==1)begin N_zombnumber<= N_zombnumber-3'd1;row3_de<=0; end
            if( ((zombie1_place_h -10'd40== 10'd41 &&zombie1_HP!=0 ) || (zombie2_place_h-10'd40 == 10'd41 &&zombie2_HP!=0) || (zombie3_place_h -10'd40== 10'd41 &&zombie3_HP!=0) || (zombie4_place_h-10'd40 == 10'd41 &&zombie4_HP!=0) || (zombie5_place_h-10'd40 == 10'd41 &&zombie5_HP!=0) || (zombie6_place_h-10'd40 == 10'd41 &&zombie6_HP!=0) || (zombie7_place_h-10'd40 == 10'd41 &&zombie7_HP!=0) || (buckethead_zombie1_place_h-10'd40 == 10'd41 &&buckethead_zombie1_HP!=0) || (buckethead_zombie2_place_h-10'd40 == 10'd41 &&buckethead_zombie2_HP!=0) || (buckethead_zombie3_place_h-10'd40 == 10'd41 &&buckethead_zombie3_HP!=0)) && (state == diff_1 || state == diff_2))
                fail<=1'd1;
           else  if((N_zombnumber_max!=4'd0||B_zombnumber_max!=4'd0)&&N_zombnumber==4'd0&&B_zombnumber==4'd0)pass<=1'd1;
           else begin pass<=1'd0;fail<=1'd0; end
        end
        game_end: begin
        pea1_HP <= 2'd1; pea2_HP <= 2'd1; pea3_HP <= 2'd1; pea4_HP <= 2'd1; pea5_HP <= 2'd1; pea6_HP <= 2'd1; pea7_HP <= 2'd1;
        pea8_HP <= 2'd1; pea9_HP <= 2'd1; pea10_HP <= 2'd1; pea11_HP <= 2'd1; pea12_HP <= 2'd1;
            zombie1_HP <= zombie1_HP; zombie2_HP <= zombie2_HP; zombie3_HP <= zombie3_HP; zombie4_HP <= zombie4_HP; zombie5_HP <= zombie5_HP; zombie6_HP <= zombie6_HP; zombie7_HP <= zombie7_HP;
            buckethead_zombie1_HP <= buckethead_zombie1_HP; buckethead_zombie2_HP <= buckethead_zombie2_HP; buckethead_zombie3_HP <= buckethead_zombie3_HP;
        end
            
        default: begin
        pea1_HP <= 2'd1; pea2_HP <= 2'd1; pea3_HP <= 2'd1; pea4_HP <= 2'd1; pea5_HP <= 2'd1; pea6_HP <= 2'd1; pea7_HP <= 2'd1;
        pea8_HP <= 2'd1; pea9_HP <= 2'd1; pea10_HP <= 2'd1; pea11_HP <= 2'd1; pea12_HP <= 2'd1;
            zombie1_HP <= zombie1_HP; zombie2_HP <= zombie2_HP; zombie3_HP <= zombie3_HP; zombie4_HP <= zombie4_HP; zombie5_HP <= zombie5_HP; zombie6_HP <= zombie6_HP; zombie7_HP <= zombie7_HP;
            buckethead_zombie1_HP <= buckethead_zombie1_HP; buckethead_zombie2_HP <= buckethead_zombie2_HP; buckethead_zombie3_HP <= buckethead_zombie3_HP;
        end
        endcase
        
    end
    
end

//普通殭屍Area
assign zombie1_area = ((v_cnt <= zombie1_place_v+10'd59) && (v_cnt >= zombie1_place_v) && (h_cnt >= zombie1_place_h) && (h_cnt <= zombie1_place_h + 10'd39) && (state == diff_1 || state == diff_2 || state == game_end) && (zombie1_HP >= 2'b1))?1'b1 : 1'b0;
assign zombie2_area = ((v_cnt <= zombie2_place_v+10'd59) && (v_cnt >= zombie2_place_v) && (h_cnt >= zombie2_place_h) && (h_cnt <= zombie2_place_h + 10'd39) && (state == diff_1 || state == diff_2 || state == game_end) && (zombie2_HP >= 2'b1))?1'b1 : 1'b0;
assign zombie3_area = ((v_cnt <= zombie3_place_v+10'd59) && (v_cnt >= zombie3_place_v) && (h_cnt >= zombie3_place_h) && (h_cnt <= zombie3_place_h + 10'd39) && (state == diff_1 || state == diff_2 || state == game_end) && (zombie3_HP >= 2'b1))?1'b1 : 1'b0;
assign zombie4_area = ((v_cnt <= zombie4_place_v+10'd59) && (v_cnt >= zombie4_place_v) && (h_cnt >= zombie4_place_h) && (h_cnt <= zombie4_place_h + 10'd39) && (state == diff_2 || state == game_end) && (zombie4_HP >= 2'b1))?1'b1 : 1'b0;
assign zombie5_area = ((v_cnt <= zombie5_place_v+10'd59) && (v_cnt >= zombie5_place_v) && (h_cnt >= zombie5_place_h) && (h_cnt <= zombie5_place_h + 10'd39) && (state == diff_2 || state == game_end) && (zombie5_HP >= 2'b1))?1'b1 : 1'b0;
assign zombie6_area = ((v_cnt <= zombie6_place_v+10'd59) && (v_cnt >= zombie6_place_v) && (h_cnt >= zombie6_place_h) && (h_cnt <= zombie6_place_h + 10'd39) && (state == diff_2 || state == game_end) && (zombie6_HP >= 2'b1))?1'b1 : 1'b0;
assign zombie7_area = ((v_cnt <= zombie7_place_v+10'd59) && (v_cnt >= zombie7_place_v) && (h_cnt >= zombie7_place_h) && (h_cnt <= zombie7_place_h + 10'd39) && (state == diff_2 || state == game_end) && (zombie7_HP >= 2'b1))?1'b1 : 1'b0;

//水桶殭屍Area
assign buckethead_zombie1_area = ((v_cnt <= buckethead_zombie1_place_v+10'd59) && (v_cnt >= buckethead_zombie1_place_v) && (h_cnt >= buckethead_zombie1_place_h) && (h_cnt <= buckethead_zombie1_place_h + 10'd39) && (state == diff_1 || state == diff_2 || state == game_end) && (buckethead_zombie1_HP >= 2'b1))?1'b1 : 1'b0;
assign buckethead_zombie2_area = ((v_cnt <= buckethead_zombie2_place_v+10'd59) && (v_cnt >= buckethead_zombie2_place_v) && (h_cnt >= buckethead_zombie2_place_h) && (h_cnt <= buckethead_zombie2_place_h + 10'd39) && (state == diff_1 || state == diff_2 || state == game_end) && (buckethead_zombie2_HP >= 2'b1))?1'b1 : 1'b0;
assign buckethead_zombie3_area = ((v_cnt <= buckethead_zombie3_place_v+10'd59) && (v_cnt >= buckethead_zombie3_place_v) && (h_cnt >= buckethead_zombie3_place_h) && (h_cnt <= buckethead_zombie3_place_h + 10'd39) && (state == diff_1 || state == diff_2 || state == game_end) && (buckethead_zombie3_HP >= 2'b1))?1'b1 : 1'b0;
//pea Area
assign pea1_area = ((v_cnt <= pea1_place_v+10'd39) && (v_cnt >= pea1_place_v) && (h_cnt >= pea1_place_h) && (h_cnt <= pea1_place_h + 10'd39) && (state == diff_2) && (pea1_HP >= 2'b1))?1'b1 : 1'b0;
assign pea2_area = ((v_cnt <= pea2_place_v+10'd39) && (v_cnt >= pea2_place_v) && (h_cnt >= pea2_place_h) && (h_cnt <= pea2_place_h + 10'd39) && (state == diff_2) && (pea2_HP >= 2'b1) && (delay1_pea >= 4'd4))?1'b1 : 1'b0;
assign pea3_area = ((v_cnt <= pea3_place_v+10'd39) && (v_cnt >= pea3_place_v) && (h_cnt >= pea3_place_h) && (h_cnt <= pea3_place_h + 10'd39) && (state == diff_2) && (pea3_HP >= 2'b1) && (delay1_pea >= 4'd7))?1'b1 : 1'b0;
assign pea4_area = ((v_cnt <= pea4_place_v+10'd39) && (v_cnt >= pea4_place_v) && (h_cnt >= pea4_place_h) && (h_cnt <= pea4_place_h + 10'd39) && (state == diff_2) && (pea4_HP >= 2'b1) && (delay1_pea >= 4'd10))?1'b1 : 1'b0;

assign pea5_area = ((v_cnt <= pea5_place_v+10'd39) && (v_cnt >= pea5_place_v) && (h_cnt >= pea5_place_h) && (h_cnt <= pea5_place_h + 10'd39) && (state == diff_2) && (pea5_HP >= 2'b1))?1'b1 : 1'b0;
assign pea6_area = ((v_cnt <= pea6_place_v+10'd39) && (v_cnt >= pea6_place_v) && (h_cnt >= pea6_place_h) && (h_cnt <= pea6_place_h + 10'd39) && (state == diff_2) && (pea6_HP >= 2'b1) && (delay2_pea >= 4'd4))?1'b1 : 1'b0;
assign pea7_area = ((v_cnt <= pea7_place_v+10'd39) && (v_cnt >= pea7_place_v) && (h_cnt >= pea7_place_h) && (h_cnt <= pea7_place_h + 10'd39) && (state == diff_2) && (pea7_HP >= 2'b1) && (delay2_pea >= 4'd7))?1'b1 : 1'b0;
assign pea8_area = ((v_cnt <= pea8_place_v+10'd39) && (v_cnt >= pea8_place_v) && (h_cnt >= pea8_place_h) && (h_cnt <= pea8_place_h + 10'd39) && (state == diff_2) && (pea8_HP >= 2'b1) && (delay2_pea >= 4'd10))?1'b1 : 1'b0;

assign pea9_area = ((v_cnt <= pea9_place_v+10'd39) && (v_cnt >= pea9_place_v) && (h_cnt >= pea9_place_h) && (h_cnt <= pea9_place_h + 10'd39) && (state == diff_2) && (pea9_HP >= 2'b1))?1'b1 : 1'b0;
assign pea10_area = ((v_cnt <= pea10_place_v+10'd39) && (v_cnt >= pea10_place_v) && (h_cnt >= pea10_place_h) && (h_cnt <= pea10_place_h + 10'd39) && (state == diff_2) && (pea10_HP >= 2'b1) && (delay3_pea >= 4'd4))?1'b1 : 1'b0;
assign pea11_area = ((v_cnt <= pea11_place_v+10'd39) && (v_cnt >= pea11_place_v) && (h_cnt >= pea11_place_h) && (h_cnt <= pea11_place_h + 10'd39) && (state == diff_2) && (pea11_HP >= 2'b1) && (delay3_pea >= 4'd7))?1'b1 : 1'b0;
assign pea12_area = ((v_cnt <= pea12_place_v+10'd39) && (v_cnt >= pea12_place_v) && (h_cnt >= pea12_place_h) && (h_cnt <= pea12_place_h + 10'd39) && (state == diff_2) && (pea12_HP >= 2'b1) && (delay3_pea >= 4'd10))?1'b1 : 1'b0;

always @(*)begin
shooter_big_icon_area=0;wallnut_big_icon_area=0;sun1_area=0;sun2_area=0;sun3_area=0;sun4_area=0;sun5_area=0;sun6_area=0;sun7_area=0;
wall_nut1_area=0;wall_nut2_area=0;wall_nut3_area=0;

	if((v_cnt <=10'd140) && (v_cnt >= 10'd21) && (h_cnt >= 10'd20) && (h_cnt <= 10'd139))begin
	   shooter_big_icon_area=1;
	end
	else if ((v_cnt <=10'd140) && (v_cnt >= 10'd21) && (h_cnt >= 10'd180) && (h_cnt <= 10'd299)) begin
	   wallnut_big_icon_area=1;
	end
	else if ((v_cnt <=10'd469) && (v_cnt >= 10'd410) && (h_cnt >= 10'd90) && (h_cnt <= 10'd149)&&life1==1&&(state==diff_1||state==diff_2|| state == game_end)) begin
	   sun1_area=1;
	end
	else if ((v_cnt <=10'd469) && (v_cnt >= 10'd410) && (h_cnt >= 10'd170) && (h_cnt <= 10'd229)&&life2==1&&(state==diff_1||state==diff_2|| state == game_end)) begin
	   sun2_area=1;
	end
	else if ((v_cnt <=10'd469) && (v_cnt >= 10'd410) && (h_cnt >= 10'd250) && (h_cnt <= 10'd309)&&life3==1&&(state==diff_1||state==diff_2|| state == game_end)) begin
	   sun3_area=1;
	end
	else if ((v_cnt <=10'd469) && (v_cnt >= 10'd410) && (h_cnt >= 10'd330) && (h_cnt <= 10'd389)&&life4==1&&(state==diff_1||state==diff_2|| state == game_end)) begin
	   sun4_area=1;
	end
	else if ((v_cnt <=10'd469) && (v_cnt >= 10'd410) && (h_cnt >= 10'd410) && (h_cnt <= 10'd469)&&switch[2]==1&&life5==1&&(state==diff_1||state==diff_2|| state == game_end)) begin
	   sun5_area=1;
	end
	else if ((v_cnt <=10'd469) && (v_cnt >= 10'd410) && (h_cnt >= 10'd490) && (h_cnt <= 10'd549)&&switch[2]==1&&life6==1&&(state==diff_1||state==diff_2|| state == game_end)) begin
	   sun6_area=1;
	end
	else if ((v_cnt <=10'd469) && (v_cnt >= 10'd410) && (h_cnt >= 10'd570) && (h_cnt <= 10'd629)&&switch[2]==1&&life7==1&&(state==diff_1||state==diff_2|| state == game_end)) begin
	   sun7_area=1;
	end
	else if ((v_cnt <=wall_nut1_place_v+10'd59) && (v_cnt >= wall_nut1_place_v) && (h_cnt >= wall_nut1_place_h) && (h_cnt <=wall_nut1_place_h+10'd59)&&(state==diff_1||state==diff_2|| state == game_end)) begin
	  wall_nut1_area=1;
	end
	else if ((v_cnt <=wall_nut2_place_v+10'd59) && (v_cnt >= wall_nut2_place_v) && (h_cnt >= wall_nut2_place_h) && (h_cnt <=wall_nut2_place_h+10'd59)&&(state==diff_1||state==diff_2|| state == game_end)) begin
	  wall_nut2_area=1;
	end
	else if ((v_cnt <=wall_nut3_place_v+10'd59) && (v_cnt >= wall_nut3_place_v) && (h_cnt >= wall_nut3_place_h) && (h_cnt <=wall_nut3_place_h+10'd59)&&(state==diff_1||state==diff_2|| state == game_end)) begin
	  wall_nut3_area=1;
	end
	else if ((v_cnt <=peashooter1_place_v+10'd59) && (v_cnt >= peashooter1_place_v) && (h_cnt >= peashooter1_place_h) && (h_cnt <=peashooter1_place_h+10'd59)&&(state==diff_2|| state == game_end)) begin
	  peashooter1_area=1;
	end
	else if ((v_cnt <=peashooter2_place_v+10'd59) && (v_cnt >= peashooter2_place_v) && (h_cnt >= peashooter2_place_h) && (h_cnt <=peashooter2_place_h+10'd59)&&(state==diff_2|| state == game_end)) begin
	  peashooter2_area=1;
	end
	else if ((v_cnt <=peashooter3_place_v+10'd59) && (v_cnt >= peashooter3_place_v) && (h_cnt >= peashooter3_place_h) && (h_cnt <=peashooter3_place_h+10'd59)&&(state==diff_2|| state == game_end)) begin
	  peashooter3_area=1;
	end
	
end   

reg [11:0]  sun1_addr,sun2_addr,sun3_addr,sun4_addr,sun5_addr,sun6_addr,sun7_addr,wall_nut1_addr,wall_nut2_addr,
            wall_nut3_addr,peashooter1_addr,peashooter2_addr,peashooter3_addr;
            
reg[11:0] zombie1_addr, zombie2_addr, zombie3_addr, zombie4_addr, zombie5_addr, zombie6_addr, zombie7_addr;
reg[11:0] buckethead_zombie1_addr, buckethead_zombie2_addr, buckethead_zombie3_addr;
reg[11:0] pea1_addr, pea2_addr, pea3_addr, pea4_addr, pea5_addr, pea6_addr, pea7_addr, pea8_addr, pea9_addr, pea10_addr, pea11_addr, pea12_addr;
 //Display
always @(posedge clk_1 or negedge rst)
   begin: display
      if (rst == 1'b0) begin
        vga_data <= 12'd0;
        wall_nut_big_addr<=15'd0;peashooter_big_addr<=15'd0;    
        sun1_addr<=12'd0; sun2_addr<=12'd0; sun3_addr<=12'd0;sun4_addr<=12'd0; sun5_addr<=12'd0; sun6_addr<=12'd0; sun7_addr<=12'd0;
        wall_nut1_addr<=12'd0; wall_nut2_addr<=12'd0; wall_nut3_addr<=12'd0;
        peashooter1_addr<=12'd0; peashooter2_addr<=12'd0; peashooter3_addr<=12'd0; 
        
        pea1_addr<=12'd0; pea2_addr<=12'd0; pea3_addr<=12'd0; pea4_addr<=12'd0; pea5_addr<=12'd0; pea6_addr<=12'd0; pea7_addr<=12'd0; pea8_addr<=12'd0; pea9_addr<=12'd0; pea10_addr<=12'd0; pea11_addr<=12'd0; pea12_addr<=12'd0;
        
        //殭屍
        zombie1_addr <= 12'd0; zombie2_addr <= 12'd0; zombie3_addr <= 12'd0; zombie4_addr <= 12'd0; zombie5_addr <= 12'd0; zombie6_addr <= 12'd0; zombie7_addr <= 12'd0;
        buckethead_zombie1_addr <= 12'd0; buckethead_zombie2_addr <= 12'd0; buckethead_zombie3_addr <= 12'd0;
      end
      else 
      begin
         if (valid == 1'b1)
         begin
            if(shooter_big_icon_area==1)begin 
//                if(peashooter_big_addr==15'd14399)begin peashooter_big_addr<=15'd0;
//                vga_data<=peashooter_big_dout; end 
//                else begin
                peashooter_big_addr<=peashooter_big_addr+15'd1;
                vga_data<=peashooter_big_dout;
//                end
            end
            else  if(wallnut_big_icon_area==1)begin 
                wall_nut_big_addr<=wall_nut_big_addr+15'd1;
                vga_data<=wall_nut_big_dout;
            end
            else if(sun1_area==1)begin
                sun_addr<=sun1_addr;
                vga_data<=sun_dout;
                sun1_addr<=sun1_addr+11'd1;
            end
            else if(sun2_area==1)begin
                sun_addr<=sun2_addr;
                vga_data<=sun_dout;
                sun2_addr<=sun2_addr+11'd1;
            end
            else if(sun3_area==1)begin
                sun_addr<=sun3_addr;
                vga_data<=sun_dout;
                sun3_addr<=sun3_addr+11'd1;
            end
            else if(sun4_area==1)begin
                sun_addr<=sun4_addr;
                vga_data<=sun_dout;
                sun4_addr<=sun4_addr+11'd1;
            end
            else if(sun5_area==1)begin
                sun_addr<=sun5_addr;
                vga_data<=sun_dout;
                sun5_addr<=sun5_addr+11'd1;
            end
            else if(sun6_area==1)begin
                sun_addr<=sun6_addr;
                vga_data<=sun_dout;
                sun6_addr<=sun6_addr+11'd1;
            end
            else if(sun7_area==1)begin
                sun_addr<=sun7_addr;
                vga_data<=sun_dout;
                sun7_addr<=sun7_addr+11'd1;
            end
            else if(wall_nut1_area==1)begin
                wall_nut_addr<=wall_nut1_addr;
                vga_data<=wall_nut_dout;
                wall_nut1_addr<=wall_nut1_addr+11'd1;
            end
            else if(wall_nut2_area==1)begin
                wall_nut_addr<=wall_nut2_addr;
                vga_data<=wall_nut_dout;
                wall_nut2_addr<=wall_nut2_addr+11'd1;
            end
            else if(wall_nut3_area==1)begin
                wall_nut_addr<=wall_nut3_addr;
                vga_data<=wall_nut_dout;
                wall_nut3_addr<=wall_nut3_addr+11'd1;
            end
            else if(peashooter1_area==1)begin
                peashooter_addr<=peashooter1_addr;
                vga_data<=peashooter_dout;
                peashooter1_addr<=peashooter1_addr+11'd1;
            end
            else if(peashooter2_area==1)begin
                peashooter_addr<=peashooter2_addr;
                vga_data<=peashooter_dout;
                peashooter2_addr<=peashooter2_addr+11'd1;
            end
            else if(peashooter3_area==1)begin
                peashooter_addr<=peashooter3_addr;
                vga_data<=peashooter_dout;
                peashooter3_addr<=peashooter3_addr+11'd1;
            end
            
            //Pea
            else if(pea1_area==1)begin
                pea_addr <= pea1_addr;
                vga_data <= pea_dout;
                pea1_addr <= pea1_addr + 1'd1;
            end
            else if(pea2_area==1)begin
                pea_addr <= pea2_addr;
                vga_data <= pea_dout;
                pea2_addr <= pea2_addr + 1'd1;
            end
            else if(pea3_area==1)begin
                pea_addr <= pea3_addr;
                vga_data <= pea_dout;
                pea3_addr <= pea3_addr + 1'd1;
            end
            else if(pea4_area==1)begin
                pea_addr <= pea4_addr;
                vga_data <= pea_dout;
                pea4_addr <= pea4_addr + 1'd1;
            end
            else if(pea5_area==1)begin
                pea_addr <= pea5_addr;
                vga_data <= pea_dout;
                pea5_addr <= pea5_addr + 1'd1;
            end
            else if(pea6_area==1)begin
                pea_addr <= pea6_addr;
                vga_data <= pea_dout;
                pea6_addr <= pea6_addr + 1'd1;
            end
            else if(pea7_area==1)begin
                pea_addr <= pea7_addr;
                vga_data <= pea_dout;
                pea7_addr <= pea7_addr + 1'd1;
            end
            else if(pea8_area==1)begin
                pea_addr <= pea8_addr;
                vga_data <= pea_dout;
                pea8_addr <= pea8_addr + 1'd1;
            end
            else if(pea9_area==1)begin
                pea_addr <= pea9_addr;
                vga_data <= pea_dout;
                pea9_addr <= pea9_addr + 1'd1;
            end
            else if(pea10_area==1)begin
                pea_addr <= pea10_addr;
                vga_data <= pea_dout;
                pea10_addr <= pea10_addr + 1'd1;
            end
            else if(pea11_area==1)begin
                pea_addr <= pea11_addr;
                vga_data <= pea_dout;
                pea11_addr <= pea11_addr + 1'd1;
            end
            else if(pea12_area==1)begin
                pea_addr <= pea12_addr;
                vga_data <= pea_dout;
                pea12_addr <= pea12_addr + 1'd1;
            end
            
             //水桶殭屍
            else if(buckethead_zombie1_area==1)begin
                buckethead_zombie_addr <= buckethead_zombie1_addr;
                vga_data <= buckethead_zombie_dout;
                buckethead_zombie1_addr <= buckethead_zombie1_addr + 1'd1;
            end
            else if(buckethead_zombie2_area==1)begin
                buckethead_zombie_addr <= buckethead_zombie2_addr;
                vga_data <= buckethead_zombie_dout;
                buckethead_zombie2_addr <= buckethead_zombie2_addr + 1'd1;
            end
            else if(buckethead_zombie3_area==1)begin
                buckethead_zombie_addr <= buckethead_zombie3_addr;
                vga_data <= buckethead_zombie_dout;
                buckethead_zombie3_addr <= buckethead_zombie3_addr + 1'd1;
            end
            
            //一般殭屍
            else if(zombie1_area==1)begin
                zombie_addr <= zombie1_addr;
                vga_data <= zombie_dout;
                zombie1_addr <= zombie1_addr + 1'd1;
            end
            else if(zombie2_area==1)begin
                zombie_addr <= zombie2_addr;
                vga_data <= zombie_dout;
                zombie2_addr <= zombie2_addr + 1'd1;
            end
            else if(zombie3_area==1)begin
                zombie_addr <= zombie3_addr;
                vga_data <= zombie_dout;
                zombie3_addr <= zombie3_addr + 1'd1;
            end
            else if(zombie4_area==1)begin
                zombie_addr <= zombie4_addr;
                vga_data <= zombie_dout;
                zombie4_addr <= zombie4_addr + 1'd1;
            end
            else if(zombie5_area==1)begin
                zombie_addr <= zombie5_addr;
                vga_data <= zombie_dout;
                zombie5_addr <= zombie5_addr + 1'd1;
            end
            else if(zombie6_area==1)begin
                zombie_addr <= zombie6_addr;
                vga_data <= zombie_dout;
                zombie6_addr <= zombie6_addr + 1'd1;
            end
            else if(zombie7_area==1)begin
                zombie_addr <= zombie7_addr;
                vga_data <= zombie_dout;
                zombie7_addr <= zombie7_addr + 1'd1;
            end
            

            

            //框框
            else if((h_cnt>=(red_frame_h)&&h_cnt<=(red_frame_h+10'd4)&&v_cnt>=(red_frame_v)&&v_cnt<=(red_frame_v+10'd79)
                    )||(h_cnt>=(red_frame_h+10'd75)&&h_cnt<=(red_frame_h+10'd79)&&v_cnt>=(red_frame_v)&&v_cnt<=(red_frame_v+10'd79))
                    ||(h_cnt>=(red_frame_h)&&h_cnt<=(red_frame_h+10'd79)&&v_cnt>=(red_frame_v)&&v_cnt<=(red_frame_v+10'd4))
                    ||(h_cnt>=(red_frame_h)&&h_cnt<=(red_frame_h+10'd79)&&v_cnt>=(red_frame_v+10'd75)&&v_cnt<=(red_frame_v+10'd79)))
                    begin  vga_data <= 12'hF33;end
                    
            else if((h_cnt>=(brown_frame_h)&&h_cnt<=(brown_frame_h+10'd4)&&v_cnt>=(brown_frame_v)&&v_cnt<=(brown_frame_v+10'd159)
                    )||(h_cnt>=(brown_frame_h+10'd155)&&h_cnt<=(brown_frame_h+10'd159)&&v_cnt>=(brown_frame_v)&&v_cnt<=(brown_frame_v+10'd159))
                    ||(h_cnt>=(brown_frame_h)&&h_cnt<=(brown_frame_h+10'd159)&&v_cnt>=(brown_frame_v)&&v_cnt<=(brown_frame_v+10'd4))
                    ||(h_cnt>=(brown_frame_h)&&h_cnt<=(brown_frame_h+10'd159)&&v_cnt>=(brown_frame_v+10'd155)&&v_cnt<=(brown_frame_v+10'd159)))
                    begin  vga_data <= 12'h641;end
            
            //背景色        
            else if((h_cnt==1||h_cnt==10'd81||h_cnt==10'd161||h_cnt==10'd241||h_cnt==10'd321||h_cnt==10'd401||h_cnt==10'd481
            ||h_cnt==10'd561||h_cnt==10'd640)||(v_cnt==10'd1||v_cnt==10'd81||v_cnt==10'd161||v_cnt==10'd241||v_cnt==10'd321
            ||v_cnt==10'd401||v_cnt==10'd480))begin vga_data <= 12'h000; end
            
            else if((h_cnt>=10'd1&&h_cnt<=10'd320)&&(v_cnt>=10'd1&&v_cnt<=10'd160))begin  vga_data <= 12'hFA7;  end
            else if((h_cnt>=10'd1&&h_cnt<=10'd80)&&(v_cnt>=10'd161&&v_cnt<=10'd480))begin  vga_data <= 12'h191;  end
            else if((h_cnt>=10'd81&&h_cnt<=10'd640)&&(v_cnt>=10'd161&&v_cnt<=10'd400))begin  vga_data <= 12'hBFA;  end
            else if((h_cnt>=10'd81&&h_cnt<=10'd640)&&(v_cnt>=10'd401&&v_cnt<=10'd480))begin  vga_data <= 12'hFF4;  end
            else if((h_cnt>=10'd321&&h_cnt<=10'd640)&&(v_cnt>=10'd1&&v_cnt<=10'd160))begin  vga_data <= 12'hACF;  end
            
            else begin 
                vga_data <= 12'h000;
                peashooter_big_addr<=peashooter_big_addr;
                wall_nut_big_addr<= wall_nut_big_addr;
                sun1_addr<=sun1_addr;sun2_addr<=sun2_addr;sun3_addr<=sun3_addr;sun4_addr<=sun4_addr;sun5_addr<=sun5_addr;sun6_addr<=sun6_addr;sun7_addr<=sun7_addr;
                wall_nut1_addr<= wall_nut1_addr;wall_nut2_addr<=wall_nut2_addr;wall_nut3_addr<=wall_nut3_addr;
                wall_nut_addr<= wall_nut_addr;
                
                peashooter1_addr<=peashooter1_addr;peashooter2_addr<=peashooter2_addr;peashooter3_addr<=peashooter3_addr;
                peashooter_addr <= peashooter_addr;
                
                pea1_addr<=pea1_addr; pea2_addr<=pea2_addr; pea3_addr<=pea3_addr; pea4_addr<=pea4_addr; pea5_addr<=pea5_addr; pea6_addr<=pea6_addr; pea7_addr<=pea7_addr; pea8_addr<=pea8_addr; pea9_addr<=pea9_addr; pea10_addr<=pea10_addr; pea11_addr<=pea11_addr; pea12_addr<=pea12_addr;
                pea_addr <= pea_addr;
                
                zombie_addr <= zombie_addr;
                buckethead_zombie_addr <= buckethead_zombie_addr;
            end
           
         end
         else begin
            vga_data <= 12'h000;
            if(v_cnt==0)begin 
            peashooter_big_addr<=15'd0;
             wall_nut_big_addr<=15'd0;
             sun1_addr<=12'd0;sun2_addr<=12'd0;sun3_addr<=12'd0;sun4_addr<=12'd0;sun5_addr<=12'd0;sun6_addr<=12'd0;sun7_addr<=12'd0;
             wall_nut1_addr<=12'd0;wall_nut2_addr<=12'd0;wall_nut3_addr<=12'd0;
             peashooter1_addr<=12'd0;peashooter2_addr<=12'd0;peashooter3_addr<=12'd0;
             
             pea1_addr<=12'd0; pea2_addr<=12'd0; pea3_addr<=12'd0; pea4_addr<=12'd0; pea5_addr<=12'd0; pea6_addr<=12'd0; pea7_addr<=12'd0; pea8_addr<=12'd0; pea9_addr<=12'd0; pea10_addr<=12'd0; pea11_addr<=12'd0; pea12_addr<=12'd0;
             peashooter_addr <=12'd0;
             zombie1_addr <= 12'd0; zombie2_addr <= 12'd0; zombie3_addr <= 12'd0; zombie4_addr <= 12'd0; zombie5_addr <= 12'd0; zombie6_addr <= 12'd0; zombie7_addr <= 12'd0;
             buckethead_zombie1_addr <= 12'd0; buckethead_zombie2_addr <= 12'd0; buckethead_zombie3_addr <= 12'd0;
             
             end
             else begin
                
                peashooter_big_addr<=peashooter_big_addr;
                wall_nut_big_addr<= wall_nut_big_addr;
                sun1_addr<=sun1_addr;sun2_addr<=sun2_addr;sun3_addr<=sun3_addr;sun4_addr<=sun4_addr;sun5_addr<=sun5_addr;sun6_addr<=sun6_addr;sun7_addr<=sun7_addr;
                wall_nut1_addr<= wall_nut1_addr;wall_nut2_addr<=wall_nut2_addr;wall_nut3_addr<=wall_nut3_addr;
                wall_nut_addr<= wall_nut_addr;
                
                peashooter1_addr<=peashooter1_addr;peashooter2_addr<=peashooter2_addr;peashooter3_addr<=peashooter3_addr;
                peashooter_addr <= peashooter_addr;
                
                pea1_addr<=pea1_addr; pea2_addr<=pea2_addr; pea3_addr<=pea3_addr; pea4_addr<=pea4_addr; pea5_addr<=pea5_addr; pea6_addr<=pea6_addr; pea7_addr<=pea7_addr; pea8_addr<=pea8_addr; pea9_addr<=pea9_addr; pea10_addr<=pea10_addr; pea11_addr<=pea11_addr; pea12_addr<=pea12_addr;
                pea_addr <= pea_addr;
                
                zombie_addr <= zombie_addr;
                buckethead_zombie_addr <= buckethead_zombie_addr;
                
             end
         end
      end
   end

   assign {vga_r,vga_g,vga_b} = vga_data;
endmodule


