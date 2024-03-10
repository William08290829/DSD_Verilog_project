// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Jun  2 17:47:09 2023
// Host        : LAPTOP-ST2QD1SE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ wall_nut_big_sim_netlist.v
// Design      : wall_nut_big
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "wall_nut_big,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "5" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.7617 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "wall_nut_big.mem" *) 
  (* C_INIT_FILE_NAME = "wall_nut_big.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "14400" *) 
  (* C_READ_DEPTH_B = "14400" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "14400" *) 
  (* C_WRITE_DEPTH_B = "14400" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
   (ena_array,
    addra);
  output [1:0]ena_array;
  input [1:0]addra;

  wire [1:0]addra;
  wire [1:0]ena_array;

  LUT2 #(
    .INIT(4'h1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[1]),
        .I1(addra[0]),
        .O(ena_array[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[1]),
        .I1(addra[0]),
        .O(ena_array[1]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    addra,
    clka);
  output [11:0]douta;
  input [13:0]addra;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;
  wire [3:0]ena_array;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:12]),
        .ena_array({ena_array[3],ena_array[0]}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .DOPADOP(\ramloop[4].ram.r_n_8 ),
        .addra(addra[13:12]),
        .clka(clka),
        .douta(douta[11:3]),
        .\douta[10] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\douta[10]_0 ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\douta[10]_1 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\douta[11] (\ramloop[5].ram.r_n_8 ),
        .\douta[11]_0 (\ramloop[2].ram.r_n_8 ),
        .\douta[11]_1 (\ramloop[3].ram.r_n_8 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[2:1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[2].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[3].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.DOADO({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .DOPADOP(\ramloop[4].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[5].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOPADOP,
    \douta[11] ,
    \douta[11]_0 ,
    \douta[11]_1 ,
    DOADO,
    \douta[10] ,
    \douta[10]_0 ,
    \douta[10]_1 );
  output [8:0]douta;
  input [1:0]addra;
  input clka;
  input [0:0]DOPADOP;
  input [0:0]\douta[11] ;
  input [0:0]\douta[11]_0 ;
  input [0:0]\douta[11]_1 ;
  input [7:0]DOADO;
  input [7:0]\douta[10] ;
  input [7:0]\douta[10]_0 ;
  input [7:0]\douta[10]_1 ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [1:0]addra;
  wire clka;
  wire [8:0]douta;
  wire [7:0]\douta[10] ;
  wire [7:0]\douta[10]_0 ;
  wire [7:0]\douta[10]_1 ;
  wire [0:0]\douta[11] ;
  wire [0:0]\douta[11]_0 ;
  wire [0:0]\douta[11]_1 ;
  wire [1:0]sel_pipe;
  wire [1:0]sel_pipe_d1;

  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[10]_INST_0 
       (.I0(DOADO[7]),
        .I1(\douta[10] [7]),
        .I2(\douta[10]_0 [7]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_1 [7]),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[11]_INST_0 
       (.I0(DOPADOP),
        .I1(\douta[11] ),
        .I2(\douta[11]_0 ),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[11]_1 ),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[3]_INST_0 
       (.I0(DOADO[0]),
        .I1(\douta[10] [0]),
        .I2(\douta[10]_0 [0]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_1 [0]),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[4]_INST_0 
       (.I0(DOADO[1]),
        .I1(\douta[10] [1]),
        .I2(\douta[10]_0 [1]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_1 [1]),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[5]_INST_0 
       (.I0(DOADO[2]),
        .I1(\douta[10] [2]),
        .I2(\douta[10]_0 [2]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_1 [2]),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[6]_INST_0 
       (.I0(DOADO[3]),
        .I1(\douta[10] [3]),
        .I2(\douta[10]_0 [3]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_1 [3]),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[7]_INST_0 
       (.I0(DOADO[4]),
        .I1(\douta[10] [4]),
        .I2(\douta[10]_0 [4]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_1 [4]),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[8]_INST_0 
       (.I0(DOADO[5]),
        .I1(\douta[10] [5]),
        .I2(\douta[10]_0 [5]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_1 [5]),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[9]_INST_0 
       (.I0(DOADO[6]),
        .I1(\douta[10] [6]),
        .I2(\douta[10]_0 [6]),
        .I3(sel_pipe_d1[1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[10]_1 [6]),
        .O(douta[6]));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [0:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (douta,
    clka,
    addra);
  output [1:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [13:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (DOADO,
    DOPADOP,
    clka,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [13:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [13:0]addra;
  wire clka;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [0:0]douta;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000003222105800000000000000000000000E2EE1E00000000000),
    .INIT_01(256'h000000000000000000038006004B8000000000000000000000C270639C000000),
    .INIT_02(256'h00530000000000000000003690280000CC0000000000000000000F865C0000F0),
    .INIT_03(256'hC00000AAA00000000000000001CC80C0000032C000000000000000006A20D000),
    .INIT_04(256'h88000000001098000000000000000424000000004A3000000000000000021000),
    .INIT_05(256'h00180200000000402600000000000000090000000000AC6C000000000000000E),
    .INIT_06(256'h000001EC00000000003808800000000000006602000000006011000000000000),
    .INIT_07(256'h000000001B4210000000421E0360000000000006810000000018180240000000),
    .INIT_08(256'h580000000000300200000000088F80D00000000000398800000000EF08811000),
    .INIT_09(256'hC60004000000000048AC8000000000054038000000000042B040000000018600),
    .INIT_0A(256'h00000200070000000000879F000000000063C02C0000000000C2DE0000000000),
    .INIT_0B(256'h0000000001400CC0000000010FF1000000000002A00180000000018F87000000),
    .INIT_0C(256'h7C0000000000016002C000000004BE0E0000000000016002C0000000021F7F00),
    .INIT_0D(256'h3873A8000000000000D001200000001D7E100000000000010001400000000A3E),
    .INIT_0E(256'h0000402E3F000000000000A0012000000030AFFC000000000000A00020000000),
    .INIT_0F(256'hB000000121703F9000002C0000F0009000000090503F800000000000F000A000),
    .INIT_10(256'hC0002800000249C03FC80003DC9000B00090000002A6403FC00003035000C000),
    .INIT_11(256'hF9007400480000069AA07FE0003701FA004400080000041DA03FE00019F3E000),
    .INIT_12(256'h5A07FC0028002C0000093BA18FF0004A03FE006C002800000C39A07FE0000503),
    .INIT_13(256'h3400B407FF003B003C0000107DB073A4003407FF002C002400000D7BA0EFF400),
    .INIT_14(256'hF80068003C73FF801500160000127DD0005C003DE3FF0017001200001E7AF020),
    .INIT_15(256'h187D7701D801BCF0FFA00300030000127E7C008800BD91FF0003001A0000107C),
    .INIT_16(256'h000020FF9E0E000037000100034257000020FE39E31000BF6009000343F90000),
    .INIT_17(256'hB3F4000069FFE0320000BF20020000BFF0000035FFC1E8000077000300037FD5),
    .INIT_18(256'h00057FF48000D3FFFD860000DDE0060001FFF5800049FFFA0100001FE0030001),
    .INIT_19(256'h9FB240015FF4800027FFFFE020088F7FFD00017FF50000D3FFBFF89000CEFE1E),
    .INIT_1A(256'hE6324C9180017FF0800007FFFFE0C388F8F1C400015FF28000A7FFFE39D01977),
    .INIT_1B(256'hFFFFF5C82D0C00017FF2800087FFFFDF28030A112280017FF2800047FFFFEE93),
    .INIT_1C(256'hFFFFFFFFECFFC3C000017FF10000A2FFFFF0FFFFF9001004017FF0000043FFFF),
    .INIT_1D(256'h0000FFFFFFFFFFFF8DFFFFC17FFF000080FFFFFFF07FFFFFFF00017FFB8000C2),
    .INIT_1E(256'hFD0000013FFFFFBFFFFFFFFCCFFD7FF90000017FFFDFBFFFF9FFFFFFFD7FFB80),
    .INIT_1F(256'hBDFFE3000081BFFFFFFFFF7FFFFFFFBDFFF00000013FFFFFFFE07FFFFFFFFDFF),
    .INIT_20(256'hFFFBFDFFE60000001FFFFFFFFFFFFFFFFBFDFFE60000C07FFFFFFFFFFFF1FFFF),
    .INIT_21(256'hFFFFFFFFFD3FEB0000807FFBF7FFFFFFFFFFFFFD3FEE000001CFDFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFC3FF10000A23FFFDF7FFFFFFFFFFFFC3FED0000004FFFEFFFFF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFF43FF30000871FFFFFFFFFFFFFFFFFFC3FF30000871FFFFF),
    .INIT_24(256'hCE3FFFFFFFFFFFFFFFFFF8FFF100000E3FFFFFFFFFFFFFFFFFFE7FF300000F1F),
    .INIT_25(256'h00008C7FFFFFFFFFFFFFFFFFF9FFC800008E7FFFFFFFFFFFFFFFFFFEFFF70000),
    .INIT_26(256'hFFC20000C4FFFFFFFFFFFFFFFFFFF2FFE200000C7FFFFFFFFFFFFFFFFFF5FFCE),
    .INIT_27(256'hFFF2FF320000E8FFFFFFFFFF9FFFFFFFF2FFE6000080FFFFFFFFFFFFFFFFFFF2),
    .INIT_28(256'hFFFFFFF07DB60000257FFFFFFFFCBFFFFFFFF07E120000607FFFFFFFFF9FFFFF),
    .INIT_29(256'hF8FFFFFFFFF878EC00001B7FFFFFFFF0FFFFFFFFFC7BCE0000277FFFFFFFFE5F),
    .INIT_2A(256'hFFFFFFFFFFFBFFE8F3440000103FFFFFFFFFFFFFFFFFF6F98400001BFFFFFFFF),
    .INIT_2B(256'h2FFFFFFFFFFFFFFFFFA5D188000018FFFFFFFFFFFFFFFFFFF9C898000018FFFF),
    .INIT_2C(256'h00080FFFFFFFFFFFFFFF7FC1E27000001A0FFFFFFFFFFFFFFFFF91E230000022),
    .INIT_2D(256'hC00000040FFFFFFFFFFFFFFF5F61A8C00000049FFFFFFFFFFFFFFFFFC1E56000),
    .INIT_2E(256'h46350000000355FFFFFFFFFFFFFEBFC293800000035FFFFFFFFFFFFFFD3FB301),
    .INIT_2F(256'hF8FE001C0000000190FFFFFFFFFFFFF77F20020000000183FFFFFFFFFFFFF87F),
    .INIT_30(256'hE5BFF3FEC03000000000487FEFFFFFFB3FEDFE801800000000C07E7FFFFFFCFF),
    .INIT_31(256'h2FFF65FFC3FF024000000000361FB19FFFF47FDFFC40E000000000743FD8FFFF),
    .INIT_32(256'h8F8F1FFFE7FFE7D9010000000000090F127FFFB9FFC3EA808000000000181F92),
    .INIT_33(256'h0003B3FFFFFFFBFE87002C000000000004278FFFFFFFFF678A0700000000000C),
    .INIT_34(256'h00000000D0BFFFFFF5001B2820000000000001817FFFFFF7000D403800000000),
    .INIT_35(256'h0000000000000D20FF819C00397B8000000000000034D300F0EB003E05C00000),
    .INIT_36(256'h000000000000000001C020028E00DE0000000000000000039F801EF80063FC00),
    .INIT_37(256'h28C00000000000000000003FBE006301F00000000000000000004581C8016138),
    .INIT_38(256'h00000000000000000000000000000000000000000000000000000000007E739F),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (douta,
    clka,
    addra);
  output [1:0]douta;
  input clka;
  input [13:0]addra;

  wire [13:0]addra;
  wire clka;
  wire [1:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82BFF7A5BBFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB001A500502BFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB014001AAAA43FFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB055551AAAAAA42FFFFFFFFF),
    .INIT_04(256'h22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0556946AAAAAAA0DBFFF),
    .INIT_05(256'hAAA8009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF015AA91AAAAAAAA90),
    .INIT_06(256'hAAAAAAAA1905FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0156AA46AAAAAA),
    .INIT_07(256'h5AAAAAAAAAAA46A0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4156AAA4AAA),
    .INIT_08(256'hAAAAAAAAAAAAAAAA826A07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8156AAAA),
    .INIT_09(256'h556AAAAAAAAAAAAAAAAAA0AA90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8155A),
    .INIT_0A(256'hFFF156AAAAAAAAAAAAAAAAAA641AA4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0),
    .INIT_0B(256'hFFFFFF055AA6AAAAAAAAAAAAAAAA9A0AAA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFC056AA6AAAAAAAAAAAAAAAA9686AA83FFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFE815AAAAAAAAAAAAAAAAAAAAA592AAA0FFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFC155AAAAAAAAAAAAAAAAAAAAA961AAA47FFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFEC0556A9AAAAAAAAAAAAAA956AA960AAA91FFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFC0156AAAAAAAAAAAAAAAAA5506AA686AAA4BFFFFFF),
    .INIT_11(256'hA0FFFFFFFFFFFFFFFFFFFFFFFE146AA6AAAAAAAAAAAAAAAAAAA1AA582AAA87FF),
    .INIT_12(256'h1AAAA2FFFFFFFFFFFFFFFFFFFFFFF452A5AA9AAAAAAAAAAAAAAAAAA86A992AAA),
    .INIT_13(256'h5A961AAAA9BFFFFFFFFFFFFFFFFFFFFFF45A565A6AAAAAAAAAAAAAAAAAAA6A99),
    .INIT_14(256'hAAAA96A60AAAA83FFFFFFFFFFFFFFFFFFFFFD1655956AAAAAAAAAAAAAAAAAAAA),
    .INIT_15(256'hAAAAAAAAAAA64AAAA94FFFFFFFFFFFFFFFFFFFFFE1556955AAAAAAAAAAAAAAAA),
    .INIT_16(256'hAAAAAAAAAAAAAAA646AAAA45FFFFFFFFFFFFFFFFFFFF45556A95AAAAAAAAAAAA),
    .INIT_17(256'hAAAAAAAAAAAAAAAAAAA986AAAAA0BFFFFFFFFFFFFFFFFFFF455555A9AAAAAAAA),
    .INIT_18(256'hAAAAAAAAAAAAAAAAAAAAAAA982AAAAA83FFFFFFFFFFFFFFFFFFC15559555AAAA),
    .INIT_19(256'h955AAAAAAAAAAAAAAAAAAAAAAAA982AAAAA8BFFFFFFFFFFFFFFFFFF81556AA56),
    .INIT_1A(256'h5550006AAAAAAAAAAAAAAAAAAAAAAAA992AAAAA87FFFFFFFFFFFFFFFFFF05556),
    .INIT_1B(256'hFF855506BA06AAAAAAAAAAAAAAAAAAAAAAAA51AAAAA92FFFFFFFFFFFFFFFFFD1),
    .INIT_1C(256'hFFFFFF15609FFFB0AAAAAAAAAAAAAAAAAAAAAAAA61AAAAAA0FFFFFFFFFFFFFFF),
    .INIT_1D(256'hFFFFFFFFF05581FFFFF92AAAAAAAAAAAAAAAAAAAAAAA61AAAAAA2FFFFFFFFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFD0560FFFFFFF8AAAAAAAAAAAAAAAAAAAAAAA60AAAAAA1FFFFFFF),
    .INIT_1F(256'h8FFFFFFFFFFFFFFF81582EFFFFFFE2AAAAAAAAAAA506AAAAAAAA60AAAAAA4BFF),
    .INIT_20(256'hAAAA8BFFFFFFFFFFFFFF05547FFFFFFFF1AAAAAAAAA906A40AAAAAAA65AAAAAA),
    .INIT_21(256'h586AAAAA93FFFFFFFFFFFFFE1561FFFFFFFFF0AAAAAAAAA08BFE20AAAAAA64AA),
    .INIT_22(256'hAAAA9A1AAAAAA1FFFFFFFFFFFFF45550FBFFFFFFFC6AAAAAAA4AFFFFF52AAAAA),
    .INIT_23(256'hFFF1AAAA964AAAAAA3FFFFFFFFFFFFF45553FBFFFFFFFE2AAAAAA93FFFFFFF86),
    .INIT_24(256'hFFFFFFF4AAAA964AAAAAA1FFFFFFFFFFFFD1554BFBFFFFFFFC2AAAAAA83EFFFF),
    .INIT_25(256'h87FBFFFFFFFC6AAAA65AAAAAA47FFFFFFFFFFFF1554BFBFFD3FFFC2AAAAAA3FB),
    .INIT_26(256'hAAAA83EFFFFFFFFF2AAAA64AAAAAA8FFFFFFFFFFFFD1554BFBFFD3FFFC1AAAAA),
    .INIT_27(256'hFE1AAAAA1FEFFFFFFFFE1AAAA555AAAAA87FFFFFFFFFFFD1554BFAFFFFFFFC1A),
    .INIT_28(256'hFFFFFC1AAAAA3FAEFFFFFFFF8AAAA995AAAAA92FFFFFFFFFFF815553FAFFFFFF),
    .INIT_29(256'hFEBFFFFFFC6AAAAA1FAFB7FFFFFFCAAAA995AAAAAA3FFFFFFFFFFF815550FEFF),
    .INIT_2A(256'h55547FAFFFFFF06AAAAA2FAFCFFFFFFF0AAAAAA5AAAAAA1FFFFFFFFFFF455551),
    .INIT_2B(256'hFF8555582FEAFFFFD16AAAA92FAF8BFFFFFF06AAAAA5AAAAAA87FFFFFFFFFF05),
    .INIT_2C(256'hFFFFFF4555560BFEABFF85AAAAAA2FAAFFFFFFFF0AAAAAA59AA5558FFFFFFFFF),
    .INIT_2D(256'hFFFFFFFFFD15555540FFFFF916AAAAAA1FEAFFFFFFFFCAAAAAA59AA69987FFFF),
    .INIT_2E(256'h55A1FFFFFFFFFE155555509FFF705AAAAAAA3FEAFFFFFFFF8AAAAAA595555992),
    .INIT_2F(256'h65A555A0FFFFFFFFF81555555506F9016AAAAAAA1FEAFBFFFFFE1AAAAAA96555),
    .INIT_30(256'hAAA9555555A3BFFFFFFFFC55555555500055AAAAAAAA87FAABFFFFFF2AAAAAA9),
    .INIT_31(256'hAAAAAA99555555A3BFFFFFFFE055555555555556AAAAAAAA87FEABFFFFF86AAA),
    .INIT_32(256'hABE1AAAAAAA9555555A1FFFFFFFFE15555556555556A69AAAAAA63FFAAABFEF4),
    .INIT_33(256'hFEAABF869AAAAAA9595555A1BFFFFFFF81555555555556AAA6AAAA6A683FEAAA),
    .INIT_34(256'h564AFFFFF51AAAAAAAA9595555A1BFFFFFFFC55555555556A56986AAAA59993F),
    .INIT_35(256'h0156A5A08BFE20A96AAAAAA9555555A5BFFFFFFF05555555555556AA4555550A),
    .INIT_36(256'hA6AAAAA5AA6A05A406A66AAAAAA9555555A5BFFFFFFF05555555555556566950),
    .INIT_37(256'h5555555555995A6AA505AA5AAAAAAAA9555555A5BFFFFFFF0555555555555955),
    .INIT_38(256'h555555AA555555555569AAAAA9AAAA9AAAA9555555A5BFFFFFFF055555555555),
    .INIT_39(256'h5555555555555555565A55555AA55AAAAAAAAAA9555555A5BFFFFFFF01555555),
    .INIT_3A(256'h115555555555555555AA9555555555555555AAAAAAA955555561BFFFFFFF0155),
    .INIT_3B(256'hFFFF11555555555555555555555555556A59555555555AA9555555617FFFFFFF),
    .INIT_3C(256'h7FFFFFFF11545555555559556555555555695555555555555559555555617FFF),
    .INIT_3D(256'h55637FFFFFFF11546555555555556555555555555555555A5A55555955555561),
    .INIT_3E(256'h155555A2FFFFFFFF1154655555555555555556AA955555555555555555591555),
    .INIT_3F(256'h65591555568FFFFFFFFF11542555555555555555555595555555555555556559),
    .INIT_40(256'h556555591555562FFFFFFFFF115515555555555555555555555555A955555555),
    .INIT_41(256'h5555556555591555563FFFFFFFFF115519555555555555555555555555555555),
    .INIT_42(256'h55555555555555591555561FFFFFFFFF11550955595555555555555555555555),
    .INIT_43(256'h555555555555555555591555565BFFFFFFFFD155455555655595555555555555),
    .INIT_44(256'h5555555555555555555555591555564BFFFFFFFF115546555555565555555555),
    .INIT_45(256'h555555555555555555555555555915555587FFFFFFFF11555155555559559555),
    .INIT_46(256'h5555555555555555555555555555555915555583FFFFFFFF4555555555555555),
    .INIT_47(256'h55555555555555555555555555555555559915555583FFFFFFFF055555555555),
    .INIT_48(256'h555555555555555555555555555555555555555915555583FFFFFFFFC5555555),
    .INIT_49(256'h4555555555555555555555555555555555555555556815555587FFFFFFFF8555),
    .INIT_4A(256'hFFFF155555555555555555555555555555555555555555605555554BFFFFFFFF),
    .INIT_4B(256'hFFFFFFFF455555555555555555555555555555555555555555605555561FFFFF),
    .INIT_4C(256'h562FFFFFFFFF055555555555555555555555555555555555555555915555561F),
    .INIT_4D(256'h5555563FFFFFFFFFC15555555555555555555555555555555555555555915555),
    .INIT_4E(256'h55915555563FFFFFFFFFC1555555555555555555555555555555555555555591),
    .INIT_4F(256'h555555915555650FFFFFFFFFF055555555555555555555555555555555555555),
    .INIT_50(256'h5555555555915555A51FFFFFFFFFF05555555555555555555555695555555555),
    .INIT_51(256'h55555555555555915555911FFFFFFFFFFD1455555555555555555556A5555555),
    .INIT_52(256'h155555555555555555815556452FFFFFFFFFFE045555555555555555555A4555),
    .INIT_53(256'h555555555555555555555591555A047FFFFFFFFFFF8455555555555555555554),
    .INIT_54(256'h55555555555555555555555555815568183FFFFFFFFFFF041555555555555555),
    .INIT_55(256'h55555555555555555555555555555645555054FFFFFFFFFFFF45155555555555),
    .INIT_56(256'h555555555555555555555555555555555605550523FFFFFFFFFFFF0505555555),
    .INIT_57(256'h5155555555555555555555555555555555555605545453FFFFFFFFFFFF854155),
    .INIT_58(256'hFF01555555555555555555555555555555555555591555518FFFFFFFFFFFFF05),
    .INIT_59(256'hFFFFFFC1555555555555555555555555555555555555591555520FFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFFFF8555555555555555555555555555555555555591555491FFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFFFF855555555555555555555555555555555955559155118FFFF),
    .INIT_5C(256'h1483FFFFFFFFFFFFFFFE14155555555555555555555555555555955568150561),
    .INIT_5D(256'h9141510FFFFFFFFFFFFFFFFE0509555555555555555555555555555655556450),
    .INIT_5E(256'h55558155547FFFFFFFFFFFFFFFFFC541555555555555555555555555555A5555),
    .INIT_5F(256'h55695556455551FFFFFFFFFFFFFFFFFFD1515555555555555555555555555559),
    .INIT_60(256'hA5555564555605554BFFFFFFFFFFFFFFFFFFD155555555555555555555555555),
    .INIT_61(256'h555A555555A1555605552FFFFFFFFFFFFFFFFFFFFC5555551555555555555555),
    .INIT_62(256'h555555A955555581555A05543FFFFFFFFFFFFFFFFFFFFC155555095555555555),
    .INIT_63(256'hA555555556905555564555591550BFFFFFFFFFFFFFFFFFFFFD05555542A95555),
    .INIT_64(256'h54015555555550055555591555641550FFFFFFFFFFFFFFFFFFFFFFC555555056),
    .INIT_65(256'h55555555555555555555555550555590550FFFFFFFFFFFFFFFFFFFFFFFE15555),
    .INIT_66(256'hFFFD15555555555555555555555541555A01503FFFFFFFFFFFFFFFFFFFFFFFF4),
    .INIT_67(256'hFFFFFFFF4155555555555555555555551555681541BFFFFFFFFFFFFFFFFFFFFF),
    .INIT_68(256'hFFFFFFFFFFFFC05555555555555555555555555590550BFFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFA0155555555555555585555555541006FFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFA05555555555555560555555500008FFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFF9155555555555558155555542FC7FFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5555555555555055555542BFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000155555500155555403FFFFF),
    .INIT_6E(256'hEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57250000500240055540FFF),
    .INIT_6F(256'h4A63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E50018BE340000),
    .INIT_70(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF95BFFFFE),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFFFFFFFFFFFFF8000C3FFFFFFFFFFFFFFFFFFFFFFFFEFF80FFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFFFFFFFFFFFF8007FFE7FFFFFFFFFFFFFFFFFFFFFFE001FF8FFFFFFF),
    .INITP_02(256'hFE07FFFFFFFFFFFFFFFFFFF81F9FFFF81FFFFFFFFFFFFFFFFFFFFE07CFFFF1FF),
    .INITP_03(256'hFFFFFF3E7FFFFFFFFFFFFFFFFFC0FFBFFFFF31FFFFFFFFFFFFFFFFFFF03F9FFF),
    .INITP_04(256'h8FFFFFFFFFCFCFFFFFFFFFFFFFFFFE07FFFFFFFF9F3FFFFFFFFFFFFFFFFF01FF),
    .INITP_05(256'hFFF83FFFFFFFFFF3F3FFFFFFFFFFFFFFF81FFFFFFFFFE7E7FFFFFFFFFFFFFFFC),
    .INITP_06(256'hFFFFFFC0FFFFFFFFFFF9FCFFFFFFFFFFFFFFE07FFFFFFFFFF9F9FFFFFFFFFFFF),
    .INITP_07(256'hFFFFFFFFFC03FFFFFFFFC7FCFF7FFFFFFFFFFFFF01FFFFFFFFFFFCFEFFFFFFFF),
    .INITP_08(256'hDFFFFFFFFFFFE07FFFFFFFFFFCFE7FDFFFFFFFFFFFF01FFFFFFFFFF3FEFFBFFF),
    .INITP_09(256'hFF3FEFFFFFFFFFFFC3BFFFFFFFFFFF7F7FEFFFFFFFFFFFE1FFFFFFFFFFFEFE7F),
    .INITP_0A(256'hFFFFFFBFF3FFFFFFFFFF85FFFFFFFFFFFFFF3FEFFFFFFFFFFFC67FFFFFFFFFFF),
    .INITP_0B(256'hFFFFFFFFFF9FFCFFFFFFFFFF0FFFFFFFFFFFFFFFBFF9FFFFFFFFFF8EFFFFFFFF),
    .INITP_0C(256'hFFFFFFFFFFFFFF9FFE7FFFFFFFFE1FFFFFFFFFFFFFFF9FFE7FFFFFFFFE1DFFFF),
    .INITP_0D(256'hF07001FFFFFFFFFFFFDFFF7FFFFFFFF83C0FFFFFFFFFFFFFDFFF7FFFFFFFFC3F),
    .INITP_0E(256'hFFFFE09FFE7FFFFFFFFFFFCFFF3FFFFFFFE0C7F8FFFFFFFFFFFFCFFF3FFFFFFF),
    .INITP_0F(256'h9FFFFFFF827FFF9FFFFFFFFFFFCFFFBFFFFFFFC13FFF3FFFFFFFFFFFCFFFBFFF),
    .INIT_00(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_01(256'h1177BBDDFFFFFFDD55CC8866444466CC99FFFFDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_02(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFBBEF),
    .INIT_03(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_04(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_05(256'hDDDDFFFF77CC422000202244886624226486A6EA0E0EC864228899FFFFDDDDDD),
    .INIT_06(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_07(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_08(256'h726400CCFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_09(256'hDDDDDDDDDDDDDDDDFFFF99AA2222A8EACAA8868642006470F8F8D8D6B6B6D8D8),
    .INIT_0A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0C(256'h9472949494949494B6D60C000279FFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFBBAA2042C8CACACAECECEACA002EFEF8),
    .INIT_0E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_10(256'h942EA82250FCB67294949494949494949494B6726400CC55BBFFFFFFDDDDDDDD),
    .INIT_11(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFBBCC4242C8CACA0E5072),
    .INIT_12(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_13(256'h4488EF99FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_14(256'hA8CACA0C7294947272EC442EFCB6729494949494949494949494949494EA0000),
    .INIT_15(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFDDEE2220),
    .INIT_16(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_17(256'h949494949492502200A842224633FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_18(256'hDDFFFF112220A8EAA8EA5094747272725066ECFCD67294949494949494949494),
    .INIT_19(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1B(256'h9494949494949494949494949494725000C8D694EA444633FFFFDDDDDDDDDDDD),
    .INIT_1C(256'hDDDDDDDDDDDDDDFFFF33440086ECA8C82E729472727272940EA8F8F872949494),
    .INIT_1D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1E(256'h66BBFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1F(256'h2E92FA947494949494949494949494949494949494949472EC000CB4FCFA0C42),
    .INIT_20(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF99660064ECCAA8EC529472727272727294),
    .INIT_21(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_22(256'h7244007272D8FAF8C80055FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_23(256'h7272727272949494B4F894729494949494949494949494949494949494949472),
    .INIT_24(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF990020EAECA8A82E9474),
    .INIT_25(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_26(256'h9494949494949494705000647072B6D8FA5000F1FFDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_27(256'h0CCAA8CA509472727272727294949494B6947294949494949494949494949494),
    .INIT_28(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF2220),
    .INIT_29(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2A(256'h9494949494949494949494949494949450702E00422E72B6B6FAB400CCFFDDDD),
    .INIT_2B(256'hDDDDDDDDFFAA00ECCAA8CA529472727272729494949494949494949494949494),
    .INIT_2C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2D(256'hD6B4F8D820AAFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2E(256'h949494949494949494949494949494949494949494949494722E50B644205072),
    .INIT_2F(256'hDDDDDDDDDDDDDDDDDDDDDDFF1100CAEAA8CA7292727272727294949494949494),
    .INIT_30(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_31(256'h94500C92B600A872B6B6B4D8D620CDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_32(256'h9494949494949494949494949494949494949494949494949494949494949494),
    .INIT_33(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFEF00A8ECA8CA72727272725272),
    .INIT_34(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_35(256'h94949494949494949494500CD8EC005072B6B494D8D600EFFFDDDDDDDDDDDDDD),
    .INIT_36(256'h5072527272727294949494949494949494949494949494949494949494949494),
    .INIT_37(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFBB8800C8ECA8CA),
    .INIT_38(256'h11FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_39(256'h94949494949494949494B6D6D6B494949494722E70D800A872B6B49494D8B600),
    .INIT_3A(256'hCE0042ECEAA8A850927272725072949494949494949494949494949494949494),
    .INIT_3B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFDD),
    .INIT_3C(256'h7294B6949494D8940033FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3D(256'h949494949494949494949494949494949450ECA8A872D894949494500CF8A822),
    .INIT_3E(256'hDDDDDDFFFF99CC2220A8CAA8A8C82E7272727250729494949494949494949494),
    .INIT_3F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_40(256'h949494722C9274200C92B694949494F8720079FFDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_41(256'h9494949494949494949494949494949494949494949494947252502EA8420CD6),
    .INIT_42(256'hDDDDDDDDDDDDDDDDDDDDFFFFEE0020646686A80C307272525272507294949494),
    .INIT_43(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_44(256'h94B4B6D8FCB644CAD6949494502EF8668692B49494949494FA0C44FFDDDDDDDD),
    .INIT_45(256'h5250729494949494949494949494949494949494949494949494949494949494),
    .INIT_46(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFAA00CA8822A872949294725252),
    .INIT_47(256'h94F88611FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_48(256'h94949494949494949494947272F8FA880EB69494720CD8CA207294B694949494),
    .INIT_49(256'hD6720E2E52525252525072949494949494949494949494949494949494949494),
    .INIT_4A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF3300CAA84452),
    .INIT_4B(256'h000C72B69494949494D62EAAFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_4C(256'h94949494949494949494949494949494949494949472D8D8CA729494942E9272),
    .INIT_4D(256'hDDFF2222ECA894940CCA2E725050505250729494949494949494949494949494),
    .INIT_4E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_4F(256'h960E949494502ED642A87294949494949494B68877FFDDDDDDDDDDDDDDDDDDDD),
    .INIT_50(256'h94949494949494949494949494949494949494949494949494949494949472D8),
    .INIT_51(256'hDDDDDDDDDDDDDDDDFF7700CACA502EECEC0E7252505050525272949294949494),
    .INIT_52(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_53(256'h9494949494949472D674729494722ED8A8647292949494949494D8A811FFFDDD),
    .INIT_54(256'h7294949294949494949494949494949494949494949494949494949494949494),
    .INIT_55(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF6622ECEA0EEC0C0C50725050505050),
    .INIT_56(256'h9494B65022F1FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_57(256'h9494949494949494949494949494949292B6947294942EB60E22507294949494),
    .INIT_58(256'h3072505050505050729492929292929292929294949494949494949494949494),
    .INIT_59(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF5500CACA0C0E0CEC),
    .INIT_5A(256'h72222E7294949494949494B60E422477FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_5B(256'h9294949492929294949494949494949494949494949494947294B49294945072),
    .INIT_5C(256'h4442EAEC0E0C0C0E505050505050505072949292929292929292929292929292),
    .INIT_5D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFF),
    .INIT_5E(256'h9472729494947250B644C8929494949494949494D8F8A800BBFFDDDDDDDDDDDD),
    .INIT_5F(256'h9292929292929292929292929292929294949492929292929494949494949494),
    .INIT_60(256'hDDDDDDDDDDDDFFEF00EACA0E0E0CEC3052505050505050507294727292929292),
    .INIT_61(256'hF1FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_62(256'h9292949494949492949494949494942ED6668494949494949494949494B6FA22),
    .INIT_63(256'h9472727272727272727272929292929292929292929292929292929292929292),
    .INIT_64(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDFF7700A8CAEC0E0C0C0E725250525252505052),
    .INIT_65(256'h949494949494F88688FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_66(256'h929292929292929292929292929292929292927272949450B6CA429294949494),
    .INIT_67(256'h3030305050525072947272727272727272727272727272727272929292727292),
    .INIT_68(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFDD2286ECCA0E0E0C0C3050),
    .INIT_69(256'h940E007294949494949494949494D80C44FFDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_6A(256'h7272727272727272729292929292929292929292929292929292927272929450),
    .INIT_6B(256'hA8EC0E0E300EC864424264A80C50727292727272727272727272727272727272),
    .INIT_6C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF6642EC),
    .INIT_6D(256'h92929292929294727272002EB4949494949494949494B6720077FFDDDDDDDDDD),
    .INIT_6E(256'h7272727272727272727272727272727272727272727272727272727272729292),
    .INIT_6F(256'hDDDDFFFF8820ECCACA0E300E6442668AAAACAA884442EA729472727272727272),
    .INIT_70(256'h20EFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_71(256'h7272727272727272727272727272947250B644EAB694949494949494949494D6),
    .INIT_72(256'h94B4727272727272727272727272727272727272727272727272727272727272),
    .INIT_73(256'hDDDDDDDDDDDDDDDDDDDDFFCC00EACAC80C50A8008877FFFFFFFFFFFF99CC0064),
    .INIT_74(256'h94949494949494F88666FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_75(256'h7272727272727272727272727272727272727272727294724EF88686B6949494),
    .INIT_76(256'hFFFFFFFFFFFF9B46209494727272727272727272727272727272727272727272),
    .INIT_77(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF1100CACAA8EC50642235FFFFFFFF),
    .INIT_78(256'h2EFAA864B694949494949494949494D80C22FFFDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_79(256'h7272727272727272727272949494947272727272727272727272727272729472),
    .INIT_7A(256'h8400DDFFFFFFFFFFFFFFFFFFFFFFFFFF8820B694727272727272727272727272),
    .INIT_7B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF5500C8EAA8EA50),
    .INIT_7C(256'h72727272727294722EF8CA64B494949494949494949494B4942277FFDDDDDDDD),
    .INIT_7D(256'h72727272727272727272727272727274B6B6722E0C0C2E72B6B6947272727272),
    .INIT_7E(256'h7700A8ECA8CA30CA00DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF44A6D872727272),
    .INIT_7F(256'hD842CCFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [13:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ;
  wire [13:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hE7FFDFFFFFFE4CFFFFCFFFFC7F8FFFEFFF9FFFFFFF06FFFFDFFFFF003FFFCFFF),
    .INITP_01(256'hF9FFFBFFCFFFFFFC19FFFFE7FFF3FFF3FFF7FFDFFFFFFE0DFFFFEFFFF9FFE7FF),
    .INITP_02(256'h9FFFFE7FFBFFEFFFFFF839FF9FF7FFCFFFFCFFFBFFEFFFFFFC39FFFFE7FFEFFF),
    .INITP_03(256'hE7FFBFFFFF7FFBFFE7FFFFF879FFFFE7FFBFFFFE7FFBFFE7FFFFF839FF9FF7FF),
    .INITP_04(256'hFFFFCFFF7FBFFF3FFDFFF3FFFFF87DFFFFE7FF3FFFFF3FFDFFF7FFFFF879FFFF),
    .INITP_05(256'hF07E7FFF8FFF7FFFFFBFFFFFFBFFFFF07EFFFFCFFF7F9FFFBFFFFFF3FFFFF87C),
    .INITP_06(256'hFFFFF0FF9FFE1FFF7FFFFF3FFFFFFDFFFFF0FF3FFF1FFF7FFFFFBFFFFFF9FFFF),
    .INITP_07(256'hFFFCFFFFE1FFE0007FFFBFFFFF7FFFFFFDFFFFE0FFC7F83FFF3FFFFF3FFEFFFD),
    .INITP_08(256'hFFFF7FFCFFFFC3FFFC03FFFF9FFFFE7FFFFFFCFFFFC1FFF801FFFFBFFFFE7FFF),
    .INITP_09(256'hFFF3FFFF7FFCFFFF83FEFFFFFFFFEFFFF9FFFF7FFCFFFF83FEFFFFFFFFCFFFFC),
    .INITP_0A(256'h03FC7F8FFFFF7FFEFFFF87FEFFFF8003F9FFE7FFFF7FFCFFFF07FEFFFF9FF3F3),
    .INITP_0B(256'hFFFFFFFFF3FFFFFF7FFEFFFF83FEFFFFFFFFFF003FFFFF7FFEFFFF87FEFFFFF8),
    .INITP_0C(256'h7FFFFFFFFFFFFFFFFFFF7FFEFFFF827FFFFFFFFFFFFFFFFFFF7FFEFFFF827EFF),
    .INITP_0D(256'hFF807FFFFFFFFFFFFFFFFFFF7FFCFFFF807FFFFFFFFFFFFFFFFFFF7FFEFFFF82),
    .INITP_0E(256'hFCFFFF805FFFFFFFFFFFFFFFFFFF7FFCFFFF007FFFFFFFFFFFFFFFFFFF7FFCFF),
    .INITP_0F(256'hFF7FF9FFFF805FFFFFFFFFFFFFFFFFFF7FFDFFFF005FFFFFFFFFFFFFFFFFFF7F),
    .INIT_00(256'h64C872B69472727272727272727294722ED8EC86949494949494949494949494),
    .INIT_01(256'hFFDD002EB47272727272727272727272727272727274B672C8866688AAAA8664),
    .INIT_02(256'hDDDDDDDDDDDDFFDD0064ECA8CA0E2E0055FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'h9494949494949494F8C846FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_04(256'h883399FFFFFFFF99116622C89494727272727272727292722EB4306472949494),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFCF20B67272727272727272727272727272729494C844),
    .INIT_06(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF88200CCACA0C306466FFFFFFFFFFFFFFFF),
    .INIT_07(256'h502ED844869494949494949494949494D62E00BBFFDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_08(256'h727272B672206699FFFFFFFFFFFFFFFFFFFF5522207094727272727272727274),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF202E9472727272727272727272),
    .INIT_0A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF3500EACAA8EC0E2E2035),
    .INIT_0B(256'h7272727272727294720CB494220C9294727474747474747294B62035FFDDDDDD),
    .INIT_0C(256'h72727272727272727272B67200CEFFFFFFFFFFFFFFFFFFFFFFFFFFFF88005094),
    .INIT_0D(256'hECC8EA0E0EEC64DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8886947272),
    .INIT_0E(256'h72F8648AFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF6642),
    .INIT_0F(256'hFFFFFFFFFFAA00509472727272727272722E0CFC2E6492947272727272727272),
    .INIT_10(256'hFFFFFFEF2292727272727272727272727294720011FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hDDDDDDDDFF7700CACACA0C0E2EA6A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'h727272727272727272D60C24FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_13(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFF4442929472727272727294500CB674667274),
    .INIT_14(256'hFF4400FFFFFFFFFFFFFFFF1320729472727272727272727272D642ACFFFFFFFF),
    .INIT_15(256'hDDDDDDDDDDDDDDDDDDDDDDDDFFCC00ECC8EA0E0C2E86CCFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'h72720C947286507272727272727272727294940057FFDDDDDDDDDDDDDDDDDDDD),
    .INIT_17(256'hB6EA44FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD00EA72747272727272),
    .INIT_18(256'hFFFFFFFFFFFFFFFFFF6622FFFFFFFFFFFFFFFF33005094727272727272727272),
    .INIT_19(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF6622ECC8EC0E0C2E86CAFF),
    .INIT_1A(256'h207294727272727272942E925086505072727272727272727272F842AAFFDDDD),
    .INIT_1B(256'h7272727272727272942255FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE),
    .INIT_1C(256'hCA0C0E0C2EA888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF00509472),
    .INIT_1D(256'h7272F8EA24FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFDD4464EA),
    .INIT_1E(256'hFFFFFFFFFFFFFFBB200C7272727272727272507094A82E507272727272727272),
    .INIT_1F(256'hFFFFFFAA4250947272727272727272940C66FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hDDDDDDFFBB2286CACA0C0E0C0EEC44DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_21(256'h72727272727272727272B4942079FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88A672947272727272727250D80CEA30),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFDD22A850727272727272727272B6A6CCFFFFFFFFFFFF),
    .INIT_24(256'hDDDDDDDDDDDDDDDDDDDDDDFF9920A8CACA0C0E0C0C302033FFFFFFFFFFFFFFFF),
    .INIT_25(256'h72727250F872EA2E7272727272727272727272F844ACFFDDDDDDDDDDDDDDDDDD),
    .INIT_26(256'h8655FFFFFFFFFFFFBBEE99FFFFFFFFFFFFFFFFFFFFFFFFFFCE62729472727272),
    .INIT_27(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE000C7272727272727272727294),
    .INIT_28(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF3500CACACA0E0C0C0C306466),
    .INIT_29(256'h114250747272727272727272D8D80C2E7272727272727272727252D8EA22FFDD),
    .INIT_2A(256'h72727272727272948679FFFFFFFFFFFF1000EEFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2B(256'hEA0E0C0C0C0E2E0055FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00862E947272),
    .INIT_2C(256'h72525094940055FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFEF20ECC8),
    .INIT_2D(256'hFFFFFFFFFFFFFFFF334250747272727272727252B6F82E2E7272525252527272),
    .INIT_2E(256'hFF6620EC5072727272727272727272728699FFFFFFFFFFFFDD55DDFFFFFFFFFF),
    .INIT_2F(256'hDDDDDDFFAA42ECC8EC0E0C0C0C0C2EA800BDFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_30(256'h725252525252525252525052F86488FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_31(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF11425074727272727272725294FA2E0C),
    .INIT_32(256'hFFFFFFFFFFFFFFFF8800CA0E9472727272727272727272928679FFFFFFFFFFFF),
    .INIT_33(256'hDDDDDDDDDDDDDDDDDDDDFFDD4486CACA0C0E0C0C0C0C0C304200BBFFFFFFFFFF),
    .INIT_34(256'h7272725272FA720C525250505050505050505050D60C44FFDDDDDDDDDDDDDDDD),
    .INIT_35(256'h8655FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC62709472727272),
    .INIT_36(256'h2E420033FFFFFFFFFFFFFFFFFFFFBB4400C8EC72727272727272727272727294),
    .INIT_37(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF5500CACACA0E0C0C0C0C0C0C0E),
    .INIT_38(256'h88A67294727272727272727252D894EC50505050505050505050505094722299),
    .INIT_39(256'h72727272727272B686CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'h0E0C0C0C0C0C0C0C0E2E64008A55DDFFFFFFFFFF77CC2242CAEA727272727272),
    .INIT_3B(256'h5050505094D64433DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF8A22ECC8EC),
    .INIT_3C(256'hFFFFFFFFFFFFFFBB220C7272727272727272727250B6B60C3050505050505050),
    .INIT_3D(256'hEC7272727272727272727272727272940C66FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hDDFFBB22C8CACA0C0C0C0C0C0C0C0C0C0C0E0ECA42006488CCCCAA662220A8CA),
    .INIT_3F(256'h2E525050505050505050505072D864EFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE2070747272727272727272725072D60C),
    .INIT_41(256'h42424286C8CACA2E72725272727252727272727272727272942235FFFFFFFFFF),
    .INIT_42(256'hDDDDDDDDDDDDDDDDDDFFCC20ECA8EA0E0C0C0C0C0C0C0C0C0C0C0E0E0CCA8644),
    .INIT_43(256'h727272727272B62E0C505050505050505050505072F864CCBBDDDDDDDDDDDDDD),
    .INIT_44(256'hB4EA44FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD00EA72747272727272),
    .INIT_45(256'h0E2E0C0C0E0CECECECECEACACAEC507272525252525252527272727272727252),
    .INIT_46(256'hBBDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFBB00A8CACA0C0E0C0C0C0C0C0C0C0C),
    .INIT_47(256'h7274727272727272727272727250B650EA505050505050505050503072F886AA),
    .INIT_48(256'h525252527272525272B642CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4442),
    .INIT_49(256'h0C0C0C0C0C0C0CEC0E50302E0E0C0C0C0C0C0C0E507272725072725052525252),
    .INIT_4A(256'h5050503072F8A844DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFAA00ECC8CA0E0C),
    .INIT_4B(256'hFFFFFFFFFFAA004E72725272727272727272727272509450EA30505050505050),
    .INIT_4C(256'h727230725252525252525272505050525094940011FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'h9900A8EAC8EC0E0C0C0C0C0C0C0C0CEC0E50505050302E2E2E30505272525250),
    .INIT_4E(256'hCA2E5050505050505050303072D8C824BBDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFFFFFFFF88002E7272527272727272727272727252529450),
    .INIT_50(256'h5050505052505050FAA864B694947272729494D6ECA8B64E5050B67200EEFFFF),
    .INIT_51(256'hDDDDDDDDDDDDDDDDCE00ECCACA0C0C0C0C0C0C0C0C0C0CEC0E50505050505050),
    .INIT_52(256'h5272727272527250EA0E5030303050505050303072D8EA2499DDDDDDDDDDDDDD),
    .INIT_53(256'h503050B672226879FFFFFFFFFFFFFFFFFFFF5544204E94745252527272727252),
    .INIT_54(256'h0E5050505050505050505050505050949688ECA8A8CAEAECEACACAC84422D8B6),
    .INIT_55(256'h99DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD1100ECCACA0C0C0C0C0C0C0C0C0C0CEC),
    .INIT_56(256'h5252525252525252525272727252722ECA0E50303030303030302E2E72D80E24),
    .INIT_57(256'hA8A8A8A8ECEC0EFCFCB65050B6B6A8228833BBFFFFFFFF99116600A672947252),
    .INIT_58(256'h0C0C0C0C0C0C0CEC0E5050305050505050505050505050722E72D8740ECAA888),
    .INIT_59(256'h30302E2E72D62E24BBDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD1142CACACA0C0C0C),
    .INIT_5A(256'h42A65094747250525252525252525252525252525252722ECA0E503030303030),
    .INIT_5B(256'h50505094D8D8D8B6B6B6969494723072B8B650505272B672A866668888886644),
    .INIT_5C(256'h3322CACACAEC0C0C0C0C0C0C0C0C0CEC0E505030305050505050505050505050),
    .INIT_5D(256'hCA0E302E2E2E2E2E2E302E2E72D63024BBDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_5E(256'hB6B6720EECEA0C50949494725050505052505252525252525252525252527230),
    .INIT_5F(256'h5050505050505050505050502E30505050505050505052502E30505050527294),
    .INIT_60(256'hDDDDDDDDDDDDDDDD1142A8CAC8EC0EECEC0C0C0C0C0C0CEC0E30303030505050),
    .INIT_61(256'h5052525252527250CA0E302E2E2E2E2E2E2E2E2E72B62E4499DDDDDDDDDDDDDD),
    .INIT_62(256'h5050505050505052727274949494949472725050505050505050505050505050),
    .INIT_63(256'h0E30303030303050505050505050505050505050505050505050505050505050),
    .INIT_64(256'h77DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD3322A8CACAEA0ECAEC0E0C0C0C0C0C0C),
    .INIT_65(256'h50505050505050505050505050507250CA0C302E2E2E2E2E2E2E2E2E72D62E44),
    .INIT_66(256'h5050505050505050505050505050505050505052525252505050505050505050),
    .INIT_67(256'hEC0E0C0C0C0C0C0C0E2E30303030303050505050505050505050505050505050),
    .INIT_68(256'h2E2E2E0E50D60C44BBDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD134486EACACA0CA8),
    .INIT_69(256'h505050505050505050505050505050505050505050507250CA0E302E2E2E2E2E),
    .INIT_6A(256'h5050505050505050505050505050505050505050505050505050505050505050),
    .INIT_6B(256'h114464EACACACAA8EC0E0C0C0C0C0C0C0C2E3030303030303030303050505050),
    .INIT_6C(256'hC80E2E2E2E2E2E2E2E2E2E0E50D6EC4455DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_6D(256'h5050505050505050505050505050505050505050505050505050505050507230),
    .INIT_6E(256'h5050505050505050505050505050505050505050505050505050505050505050),
    .INIT_6F(256'hDDDDDDDDDDDDDDDD114442ECCACACA86EC2E0C0C0C0C0C0C0C2E302E2E302E30),
    .INIT_70(256'h5050505050509450A80C2E2E2E2E2E2E2E2E2E0E50D6EA4477DDDDDDDDDDDDDD),
    .INIT_71(256'h5050505050505050505050505050505050505050505050505050505050505050),
    .INIT_72(256'h0C0E2E2E2E2E3050505050505050505050505050505050505050505050505050),
    .INIT_73(256'h33DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEF4422ECCACAEA86EA300C0C0C0C0C0C),
    .INIT_74(256'h50505050505050505050505050509430A80C2E0E0E0E0E0E0E0E0E0C50D6CA44),
    .INIT_75(256'h5050505050505050505050505050505050505050505050505050505050505050),
    .INIT_76(256'hCA50EC0C0C0C0C0C0C0E2E2E2E50505050505050505050505050505050505050),
    .INIT_77(256'h0E0E0E0C50F8C8CC55DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD114420ECCACAEA64),
    .INIT_78(256'h50505050505050505050505050505050505050505050942E860C2E0E0E0E0E0E),
    .INIT_79(256'h5050505050505050505050505050505050505050505050505050505050505050),
    .INIT_7A(256'hF14420ECCACAEA64A872EC0C0C0C0C0C0C0E2E2E505050505050505050505050),
    .INIT_7B(256'h640C0E0E0E0E0E0E0E0E0E0EB4B44277DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_7C(256'h505050505050505050505050505050505050505050505050505050505050942E),
    .INIT_7D(256'h5050505050505050505050505050505050505050505050505050505050505050),
    .INIT_7E(256'hDDDDDDDDDDDDDDDD334420ECCACAEA866652EC0C0C0C0C0C0C0E2E3050505050),
    .INIT_7F(256'h505050505050B40E640C0E0E0E0E0E0E0E0E0C72B442CCFFDDDDDDDDDDDDDDDD),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (DOADO,
    DOPADOP,
    clka,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [13:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [13:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFFFFFF3FB3FFFF802F7FFFFFFFFFFFFFFFFF3FF3FFFF806FFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFF3FFBFFFF003FFFFFFFFFFFFFFFFFFF3FFBFFFF802F7FFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFF1FDBFFFF821FF9F1FFFFFFFFFFFFFF1FDBFFFF0017CFF9FFFF),
    .INITP_03(256'hFFFF9FFFFFFFFFFFFE101BFFFF870FFF9F7FFFFFFFFFFFFE1DDBFFFF830BFE76),
    .INITP_04(256'h0C3FFFFFFDFFFFFFFFFFFE601BFFFF0E1FFFFFEC7FFFFFFFFFFE601BFFFF061F),
    .INITP_05(256'hFFFF0C7FFFFFFFFD80FFFFFFFCC01BFFFF0C3FFFFFC3FFFFFFFFFFFC401BFFFF),
    .INITP_06(256'h0013FFFF807FFFFF9FFFFEFFFFFFF88013FFFF847FFFFF7FFDFEFFFFFFFC0013),
    .INITP_07(256'hFFE84073FFFFC040600007F8083FFFFFF80033FFFF804000004FFE077FFFFFF8),
    .INITP_08(256'h87FFFFF841D7FFFFE07FB9FFF989FD8FFFFFE840D7FFFFE040300003E0F41FFF),
    .INITP_09(256'hF0FBFBFFFFD84327FFFFF25FDF07FDF03DF7FFFFF84397FFFFF07FBCF9FC071D),
    .INITP_0A(256'hF00001F001E3FFD8B06FFFFFF8200FFC000FF80BFFFFD84627FFFFFA7FDFFEFF),
    .INITP_0B(256'h0800000000000000FFB140DFFFFFF01003C00001C00001FFB0C04FFFFFF83007),
    .INITP_0C(256'hFFF808000000000000003FA1213FFFFFF80000000000000000FFB1409FFFFFF0),
    .INITP_0D(256'hFFFFFFFE0C00000800000000C061827FFFFFFC08000000000000007861C37FFF),
    .INITP_0E(256'hC013FFFFFFFF03000007E0000003A0C009FFFFFFFE0600000FF0000001806204),
    .INITP_0F(256'h0601000FFFFFFFFF8080800180000007418007FFFFFFFF01000003C000000301),
    .INIT_00(256'h5050505050505050505050505050505050505050505050505050505050505050),
    .INIT_01(256'h0C0C2E5050505050505050505050505050505050505050505050505050505050),
    .INIT_02(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD334442ECCACACAA842300EEC0C0C0C0C),
    .INIT_03(256'h5050505050505050505050505030B40E42EC0E0E0E0E0E0E0E0C2ED8A868FFFD),
    .INIT_04(256'h5050505050505050505050505050505050505050505050505050505050505050),
    .INIT_05(256'h20CA50EC0C0C0C0CEC0C50503050505050505050505050505050505050505050),
    .INIT_06(256'h0EEC2ED6C8CCFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD114442EACACACAEC),
    .INIT_07(256'h50505050505050505050505050505050505050505030B60E22EC0E0E0E0E0E0E),
    .INIT_08(256'h5050505050505050505050505050505050505050505050505050505050505050),
    .INIT_09(256'h114464EACACACAEC446672EC0C0C0C0CEC0E5050503030505050503050505030),
    .INIT_0A(256'h22EC0C0E0E0E0E0E0E0C0E942E66DFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0B(256'h505050505050505050505050505050505050505050505050505050505030B60E),
    .INIT_0C(256'h30303030502E0E30503030305050505050505050505050505050505050505050),
    .INIT_0D(256'hDDDDDDDDDDDDDDDDCE4464CACACACACACA422E2E0C0C0C0C0C0E2E2E30505030),
    .INIT_0E(256'h505050505030B60E20EA0C0E0C0C0C0C0C0C0C727066BBFFDDDDDDDDDDDDDDDD),
    .INIT_0F(256'h5050505050505050505050505050505050505050505050505050505050505050),
    .INIT_10(256'h0C0CECEC0C0E2E50503030502EECEC3050303030303030303030305050505050),
    .INIT_11(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDEF4486CACACAEACAEC44CA72EC0C0C0C),
    .INIT_12(256'h5050505050505050505050505030B60C20EAEC0C0C0C0C0C0C0CEC72926477FF),
    .INIT_13(256'h3030303030303030305050505050505050505050505050505050505050505050),
    .INIT_14(256'hCAA8862E0C0C0C0C0C0C0C0C0CECEC0E2E30502EECECEC0E5050303030303030),
    .INIT_15(256'h0C0CEC50B44433FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD3366C8CACACA0EEA),
    .INIT_16(256'h50505050505050505050505050505050505050505030B60C20EAEC0C0C0C0C0C),
    .INIT_17(256'h0E50503030303030305030303030303030303030303030305050505050505050),
    .INIT_18(256'h7742CACACAEC0E0CCACAA8EC2EEC0C0C0C0C0C0C0C0C0CECEC0E2E0CEC0C0CEC),
    .INIT_19(256'h00CAEC0C0C0CEC0C0C0CEC30B64211FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1A(256'h30303030303030303050505050503030505050505050505050505050502EB6EC),
    .INIT_1B(256'h0CECEC0C0C0C0C0CEC0C2E30303050502E2E3030303030303030303030303030),
    .INIT_1C(256'hDDDDDDDDDDDDDDDD1122ECCAEA0E0C0EEAC8CAEC0E0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_1D(256'h50505050500EB4EC00EAEC0CECECECECECECEC2EB44211FFDDDDDDDDDDDDDDDD),
    .INIT_1E(256'h3030303030303030303030303030303030303030303030305050505050505050),
    .INIT_1F(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CECEC0E2E2E2E0E0C0C2E3030303030),
    .INIT_20(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCC42ECCAEC0C0CECCAA8CA0C0C0C0C0C),
    .INIT_21(256'h303030303030303030303050300ED8A8000C0CECECECECECECECEC2E942211FF),
    .INIT_22(256'hEC0E303030303030303030303030303030303030303030303030303030303030),
    .INIT_23(256'hC8CAEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CEC0C0CECEC),
    .INIT_24(256'hECECEC2E722055FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD8864CACA0C0C0EEA),
    .INIT_25(256'h30303030303030303030303030303030303030500E72B600660C0CECECECECEC),
    .INIT_26(256'h0C0C0C0C0C0CEC0C2E50302E2E30303030303030303030303030303030303030),
    .INIT_27(256'h66A8CAEA0C0CECCAA8CA0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_28(256'hEC0CECECECECECECECECEC504E2299FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_29(256'h2E3030303030303030303030303030303030303030303030303030302ED68600),
    .INIT_2A(256'h0C0C0C0C0C0C0C0C0C0CECECECEC0E2E302E2E2E2E2E2E2E2E2E2E0E0E0E0E0C),
    .INIT_2B(256'hDDDDDDDDDDDDDDDD44CACACA0C0EECC8CAEC0E0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_2C(256'h3030302E507200860C0CECECECECECECECECEC500C44DDFDDDDDDDDDDDDDDDDD),
    .INIT_2D(256'h0CECECECECECECEC0E302E2E2E2E2E2E2E30302E303030303030303030303030),
    .INIT_2E(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0E0E0C0C0E30302E2E2E302E0CEC0C),
    .INIT_2F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD4464ECCA0C0ECAA8CA0C0C0C0C0C0C0C),
    .INIT_30(256'h302E2E2E2E3030302E30300E720C22ECECECECECECECECECECECEC52CA44FFDD),
    .INIT_31(256'h2E2E2E2E300EEC0C0C0C0C0C0C0C0CEC2E302E2E2E2E2E2E2E2E2E2E30303030),
    .INIT_32(256'hEA0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CEC0C2E302E302E2E),
    .INIT_33(256'hECECEC72A868FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD1100ECCAEC0CCAC8),
    .INIT_34(256'h2E2E2E2E2E2E2E2E2E2E2E2E2E3030302E2E300C72EC44EA0CECECECECECECEC),
    .INIT_35(256'h0CECEC0E2E2E2E2E2E2E2E2E2E2E0C0C0C0C0C0C0C0C0CEC0E302E2E2E2E2E2E),
    .INIT_36(256'hDD2264ECEAECC8CAEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_37(256'hECECECECECECECECECECCA7286AAFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_38(256'hEC0E302E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E300C72CA44CA),
    .INIT_39(256'hECECECECECECECECEC0CECEC0E2E2E2E2E2E2E2E2E2E0CECECECECECEC0C0C0C),
    .INIT_3A(256'hDDDDDDDDDDDDDDDDFFEF00EACACACACAEC0CECECECECECECECECECECECECECEC),
    .INIT_3B(256'h2E2E300C72C844CAECECECECECECECECECEC2E7284CCFFDDDDDDDDDDDDDDDDDD),
    .INIT_3C(256'hECEAEAEC0CECECECECEC0E302E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E),
    .INIT_3D(256'hEC0C0CECECECECECECECECECECECECECECECECECEC0C2E2E2E2E2E2E0EECECEC),
    .INIT_3E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF0042ECCACAA8EC0CECECECECECEC),
    .INIT_3F(256'h2E2E2E2E2E2E2E2E2E2E30EC72A842CAEC0CECECECECECECEC722E5064EFFFDD),
    .INIT_40(256'h0E0E0CECECECECEA2E92920CEC0CECECECECEC0E2E2E2E2E2E2E2E2E2E2E2E2E),
    .INIT_41(256'hCA0EECECECECECECECEC0E0EECECECECECECECECECECECECECECECECECEC0C2E),
    .INIT_42(256'h7292A8504433FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF3300CACACAA8),
    .INIT_43(256'h2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2EEC94A822CAEC0CECECECECECEA),
    .INIT_44(256'h0C0C0C0C0CECEC0C0CECECEC0CECEC94FA94500C0C0EEC0C0CECECEC0E2E2E2E),
    .INIT_45(256'hDDDDFF4400ECCA86CA0E0C0C0C0C0C0C0CEC0E2E0CECEC0C0C0C0C0C0C0C0C0C),
    .INIT_46(256'hCA0CECECECECCA30F80C86504457FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_47(256'h0CECECECEC0E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E0E0CB68822CA),
    .INIT_48(256'h0C0C0C0C0CECEC0C0C0C0C0C0C0CECECECECECECEC50D6B4CA64CA0C300EEC0C),
    .INIT_49(256'hDDDDDDDDDDDDDDDDDDDDFF7700A8EC64A80E0C0C0C0C0C0C0CEC0C2E2E0CECEC),
    .INIT_4A(256'h2E2E0C0ED68822CACA0CECECECCA0CF85064CA0E42BBFFDDDDDDDDDDDDDDDDDD),
    .INIT_4B(256'h42EC0E0E2E0CEC0C0C0C0C0CEC0C2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E),
    .INIT_4C(256'h0C0CEC2E2E2E0E0CECECECECEC0C0C0C0C0C0C0C0C0CEC0C0C0C0C0CEAECA822),
    .INIT_4D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFAA220C64882EEC0C0C0C0C0C),
    .INIT_4E(256'h2E2E2E2E2E2E2E2E2E2EEC30F88822CACA0CECECECEAD6B664862EA644FFDDDD),
    .INIT_4F(256'h0C0C0C0CECA886CA2E0C0E300EEC0C0C0C0C0C0C0CEC0E2E2E2E2E2E2E2E2E2E),
    .INIT_50(256'h642E0C0C0C0C0C0C0C0CEC0E2E2E2E2E0E0E0C0E0E2E0CEC0C0C0C0C0C0C0C0C),
    .INIT_51(256'h66A85020CFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF13200C66),
    .INIT_52(256'h2E2E2E0E0E0C0E2E2E2E2E2E2E2E2E2E2E0EEC72D66442CAEC0CECECEC94B442),
    .INIT_53(256'hECECECECECECECECECECECEC0C0E0E0C0C0E302E0CECECECECECECEC0CEC0C2E),
    .INIT_54(256'hDDDDDDFF3342EACA22CA2EECECECECECECECECEC2E2E2E2E2E2E30302E0CECEC),
    .INIT_55(256'h0CEC0C2ECAAA4264A80C0C00DDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_56(256'hECECECECECECEC0C0E0C0CECECEC0C2E2E2E2E2E2E2E2E2E2E0CECB63000A8EA),
    .INIT_57(256'h2E2E0E0EECECECECECECECECECECECECECECECECECECEC0E2E302E0CECECECEC),
    .INIT_58(256'hDDDDDDDDDDDDDDDDDDDDDDFF1122EAEC86420E0CECECECECECECECECEC0E2E2E),
    .INIT_59(256'h2EEC0ED68622CAEC0C0CEAA8422086CAA87222CCFFDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_5A(256'h0E0CECECECECECECECECECECECECECECECECECECECECEC0E2E2E2E2E2E2E2E2E),
    .INIT_5B(256'hECECECECECEC0C0C0C0CECECECECECECECECECECECECECECECECECECECECEC0C),
    .INIT_5C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFAA64EACAEC86860EECECECEC),
    .INIT_5D(256'h2E2E2E2E2E2E2E2E2EEA50724286CA0CEC0CA864A8CAC886500C00DDFFDDDDDD),
    .INIT_5E(256'hECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECEC),
    .INIT_5F(256'hCAEA86A80CECECECECECECECECECECECECECECECECECECECECECECECECECECEC),
    .INIT_60(256'h9400CEFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFDD0064ECCA),
    .INIT_61(256'hECECECECECECECEC0C2E2E2E2E2E2E300EEA920C22C8CA0CEC0CECC8A8A886CA),
    .INIT_62(256'hECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECEC),
    .INIT_63(256'hDDDDDDFF3300A8EACACACACAECECECECECECECECECECECECECECECECECECECEC),
    .INIT_64(256'hECEC0ECAA8A8A894A600FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_65(256'hECECECECECECECECECECECECECECECECECEC2E2E2E2E0E0E0CEC94CA00CACA0C),
    .INIT_66(256'hECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECEC),
    .INIT_67(256'hDDDDDDDDDDDDDDDDDDDDDDDDFFF100ECCACACAEA0CECECECECECECECECECECEC),
    .INIT_68(256'hEC0CB6CA00C8CA0C0C2EEAA8A88650500055FFDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_69(256'hECECECECECECECECECECECECECECECECECECECECECECECECEC500C0C0CECECEC),
    .INIT_6A(256'hECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECEC),
    .INIT_6B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF6642ECCAC8EC0EECECEC),
    .INIT_6C(256'h9472CAECECECECECCA0ED6CA00C8CA2E2E8664A886EC9200CCFFDDDDDDDDDDDD),
    .INIT_6D(256'hECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECEA),
    .INIT_6E(256'hCACACAA80C0EECECECECECECECECECECECECECECECECECECECECECEC0CECECEC),
    .INIT_6F(256'hFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF7700),
    .INIT_70(256'hECECECECECECCA50D6ECECECECECECECEC72B64422CA0EEC4222A8A8C8942044),
    .INIT_71(256'hECECECEC0C2E0E0C0C0C0E0CECECECECECECECECECECECECECECECECECECECEC),
    .INIT_72(256'hDDDDDDDDDDDDFFAA64ECCA86660E0CECECECECECECECECECECECECECECECECEC),
    .INIT_73(256'h42CAA886726400FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_74(256'hECECECECECECECECECECECECECEC0CD650CA0CECECECECEC50D6CA20C8886400),
    .INIT_75(256'hECECECECECECECECECECECECEC0E302E2E302EECECECECECECECECECECECECEC),
    .INIT_76(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF9B22C8CAEC2266300CECECECECECECECEC),
    .INIT_77(256'hB60E20A8CA8664A8CAA8862EA600DDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_78(256'hECECECECECECECECECECECECECECECECECECECECECEA72B4CAEAECECECECEC0E),
    .INIT_79(256'hECECECECECECECECECECECECECECECECECECECECECEC0E2E2E0EECECECECECEC),
    .INIT_7A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFCC00ECCACA00660E),
    .INIT_7B(256'hA80EECECECECEA50722064CAA8C8CAA8A8A8EC8624DDFFDDDDDDDDDDDDDDDDDD),
    .INIT_7C(256'h0CECECECECECECECECECECECECECECECECECECECECECECECECECECECEA0ED62E),
    .INIT_7D(256'hFF4464ECEAA822860CECECECECECECEC0CECECECECECECECECECECECECECEC0C),
    .INIT_7E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF),
    .INIT_7F(256'hECECECECEC72B4A8CAECECECECECEC94CA00CAA8A8A8A8A8A8CA6266DDFFDDDD),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[13]),
        .I1(addra[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h07800C83003FFFFFFFFFC80220000003C00C83001FFFFFFFFFC0424000000040),
    .INITP_01(256'hE0003C70120600FFFFFFFFFFF0011F80001E001903007FFFFFFFFFE001300000),
    .INITP_02(256'h0400000046E0841801FFFFFFFFFFF8000060000160220E00FFFFFFFFFFF00007),
    .INITP_03(256'hFFFF12000000038000601FFFFFFFFFFFFE0400000019C0003003FFFFFFFFFFFC),
    .INITP_04(256'hFFFFFFFFE0800000060003007FFFFFFFFFFFFF81000000030000C03FFFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFE2060001800101FFFFFFFFFFFFFFFF84000000C000C01FFFFFF),
    .INITP_06(256'hFFFFFFFFFFFFFFFFFF80000002008FFFFFFFFFFFFFFFFFFF1F0000400063FFFF),
    .INITP_07(256'h83FFFFFFFFFFFFFFFFFFFFFFF000F0007FFFFFFFFFFFFFFFFFFFE0000000001F),
    .INITP_08(256'h000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hECECECECECECECECECECECECECECECECECECECECECECEACAEC0CECECECECECEC),
    .INIT_01(256'hDDDDDDDDDDDDDDDDFF7700CACAEAEAA8EA0CECECECEC0CCACA0EECECECECECEC),
    .INIT_02(256'hCA4288FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_03(256'hB672ECECECECECECECECECCA2ED6EC860EECECECECEC0CB48622CAA8A8A8A8A8),
    .INIT_04(256'h64EC0CEAECECECECECECECECECECECECECECECECECECECECECECECECECCA0C50),
    .INIT_05(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFAA000CCACACACAECECECECEC0CEA),
    .INIT_06(256'h4442CAA8A8A8A8CA4268FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_07(256'hECECECCAEC50B6F850ECECECECECECECECECECEC727264EC0CECECECECEA2E94),
    .INIT_08(256'hCACAECECECECEC0E6442722EECEACACAEAECECECECECECECECECECECECECECEC),
    .INIT_09(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF2244ECCACA),
    .INIT_0A(256'hECECECECECEC72722264CAA8A8A8CA6422DDFFDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0B(256'hECECECECECECECECECECEC2E92F8B6A886ECECECECECECECECECEA2EB686860E),
    .INIT_0C(256'hDDDDFF7700A8ECCACACAECECECECEC0CEC0086B4B69472500EECEAECECECECEC),
    .INIT_0D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0E(256'hECECEC94CA000CECECECECECEA30B6EC00A8A8A8A8CAA80077FFDDDDDDDDDDDD),
    .INIT_0F(256'h94B450EAECECECECECECECECECECECECEAEA2E94B40C2264EC0C0E0CECECECEC),
    .INIT_10(256'hDDDDDDDDDDDDDDDDDDDDDDFFEE00CAEACACACAECECECECECECCA2244C80C5092),
    .INIT_11(256'hFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_12(256'hEC0E0EECECECECECECEC50CA00A80EECECECECEA2EB60C0044CAA8A8CAC800EF),
    .INIT_13(256'hEACAEA86222264A8EC502EECECECECECECECECECECECECECEAA886666400860E),
    .INIT_14(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFF6600ECCACACACAECECECEC),
    .INIT_15(256'hCAA8CAC88600AAFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_16(256'hEC0CECCACA0C0EEC0E2E0CECECECECEC0EEC6600A80CECECECECEA50B4CA0064),
    .INIT_17(256'hECEACAA8EC0CECECECCAC8EAECECECECCACAEAECECECECECECECECECECECECEC),
    .INIT_18(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF2200),
    .INIT_19(256'hECCA5094860086CAA8CA220000EEFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1A(256'hECECECECECECECECECECEC0C0CECEC0E2E0EECECECECECECCA6664CAECECECEC),
    .INIT_1B(256'hDDDDDDDDDDFFDD2200CAECA8A80CECECECECCAECECECECECECECECECECECECEC),
    .INIT_1C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1D(256'h86A8ECCAEAECECECEC72504200A8CAA8CA200055BBFFFDDDDDDDDDDDDDDDDDDD),
    .INIT_1E(256'hECECECECECECECECECECECECECECECECECECECECECEA0C2E2EECECECECECECCA),
    .INIT_1F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF6600860CA8A80EECECECECECECECECEC),
    .INIT_20(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_21(256'hEAEAEACACACACACACACACACAECECECEC720C0020CACACACA0000BBFFFFDDDDDD),
    .INIT_22(256'hECECECECECECECECECECECECECECECECECECECECECECECECECECECECEAEC502E),
    .INIT_23(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFF10000CA86CA0E),
    .INIT_24(256'h2299FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_25(256'hECECECECEA303086A8CACACACACACACACACACAECECEC0E2EA80066EAA8642000),
    .INIT_26(256'hFFFF99AA000022CA0EECECECECECECECECECECECECECECECECECECECECECECEC),
    .INIT_27(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_28(256'h0000220000448811FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_29(256'hECECECECECECECECECECECCA2E724464ECCACACACACACACACACAECEC0C2EA800),
    .INIT_2A(256'hDDDDDDDDDDDDDDDDDDDDFFFF77880000EA2EECECECECECECECECECECECECECEC),
    .INIT_2B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2C(256'hCAEAEC0EEC220088CCCCEE3377DDFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2D(256'hEC0C0CECECECECECECECECECECECECECECECEC2E946400EACACACACACACACACA),
    .INIT_2E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF996600CA2EECECECECEC),
    .INIT_2F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_30(256'hCACACACACACACACACA0E0E86006699FFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDD),
    .INIT_31(256'hCC00A82E0E0E0E0CECCAA8C8CAEAEAEAECECECECECECECEAEC0CECEC6400CAEA),
    .INIT_32(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF),
    .INIT_33(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_34(256'hA620000044EA0CCACACACACACACACAEC0EA8002233FFFFDDDDDDDDDDDDDDDDDD),
    .INIT_35(256'hDDDDDDDDDDDDDDFFFFEE004486422000002086CAECECEACACACACACACAEAECEC),
    .INIT_36(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_37(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_38(256'hA8C8CACAA886220000884400224264A8CAECECECEAECECA80000EEFFFFDDDDDD),
    .INIT_39(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF554444CCEFAA4444200000206486),
    .INIT_3A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3B(256'hCCBBFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3C(256'hFFDD7711CCAA664220202020204488EF99FFFF77F1AA66222000204264420022),
    .INIT_3D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFF),
    .INIT_3E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3F(256'h55EFAA88666611DDFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_40(256'hDDDDDDDDDDDDDDDDDDFFFFFFFFFFFFDD9977777799DDFFFFFFDDDDFFFFFFFF99),
    .INIT_41(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    addra,
    clka);
  output [11:0]douta;
  input [13:0]addra;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "5" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.7617 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "wall_nut_big.mem" *) 
(* C_INIT_FILE_NAME = "wall_nut_big.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "14400" *) (* C_READ_DEPTH_B = "14400" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "12" *) (* C_READ_WIDTH_B = "12" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "14400" *) 
(* C_WRITE_DEPTH_B = "14400" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "12" *) (* C_WRITE_WIDTH_B = "12" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [11:0]dina;
  output [11:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [11:0]dinb;
  output [11:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [11:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [11:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4_synth
   (douta,
    addra,
    clka);
  output [11:0]douta;
  input [13:0]addra;
  input clka;

  wire [13:0]addra;
  wire clka;
  wire [11:0]douta;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
