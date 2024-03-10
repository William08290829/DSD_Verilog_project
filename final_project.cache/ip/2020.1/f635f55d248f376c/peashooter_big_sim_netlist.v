// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Jun  2 14:59:00 2023
// Host        : LAPTOP-ST2QD1SE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ peashooter_big_sim_netlist.v
// Design      : peashooter_big
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "peashooter_big,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *) 
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
  (* C_INIT_FILE = "peashooter_big.mem" *) 
  (* C_INIT_FILE_NAME = "peashooter_big.mif" *) 
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
    .INIT_00(256'h000001C010000000007F80000000000000006BE0000000000000000000000000),
    .INIT_01(256'h0000000002055C000000FABE75C000000000000300180000001F3F7C00000000),
    .INIT_02(256'h8B00000000000C3F8200001E0C3E103C0000000000061F0E000007F000073000),
    .INIT_03(256'hFFFFD4600000000019FFE98001A0FFFFFEB2C000000000097FCB000068DFFFFD),
    .INIT_04(256'h1FFFFFFFF71C0000000022CFF4700E37FFFFFFF63800000000129FF940038FFF),
    .INIT_05(256'hA0E6FFFFFFFFF1150000000040F8FD45E1FFFFFFFFFF860000000024F3F83E18),
    .INIT_06(256'hFD7DFC17FFFFFFFFEA79C000000069FEFEEC1C3FFFFFFFF0108000000069FDFC),
    .INIT_07(256'h801FFF7FEFF60FFFFFFFFDEB60E83F000BFEFEBFE62FFFFFFFE454E03FF80045),
    .INIT_08(256'hC7FA501BFFBEDFEDDFCBFFFFE1EB1F0838E003FF7FDFEE5FFFFFFFDDD7330008),
    .INIT_09(256'h8CA6F17FDC4BFF7F1FECBEA4FFFFE690E01E7F180BFFFFDFEC9F70FFFFCEE51C),
    .INIT_0A(256'hFFFDB7D087FFD213FF7F6FFF7D3F7FFFFBCBF0F5FF8613FF7F2FFDBFCFFFFFF2),
    .INIT_0B(256'h01FFFFFFFFF31FFFE953FFFF4FFFFE00FFFFFF33E20FFFEB13FF7F2FFAFB6D7F),
    .INIT_0C(256'hFFFB06FFFFFFFFF87FFFF153FF7F2FFFFE0FFFFFFFFFE93FFFF553FFBF6FFFFE),
    .INIT_0D(256'h7F0FFFFDDBFFFFFFFFFD7FF81013FF7F2FFFFD07FFFFFFFFF2FFFFF413FF7F0F),
    .INIT_0E(256'h59FFFBCFFFFF9FFFFFFFFFF83FE4D609FFFF6FFFFE6FFFFFFFFFF93FD82443FF),
    .INIT_0F(256'h308C1DFF7BBFFFFFFFFFFFFFFFFD007D045DFFBBBFFFFFFFFFFFFFFFFAAC9795),
    .INIT_10(256'hF20000976DFEFABFFFFFFFFFFFFFFFFBFF809929FFFB7FFFFFFFFFFFFFFFFD92),
    .INIT_11(256'hFFFFE90000F443FEF07FFFFFFFFFFFFFFFFB00008241FD72BFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFE100006035FFE07FFFFFFFFFFFFFFFF900007856FAF47FFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFFFFFF6000000303FC1FFFFFFFFFFFFFFFFD60000002571EBFFFFFFFF),
    .INIT_14(256'h1BFFFFFFFFFFFFFFEC000000197F911FFFFFFFFFFFFFFFA4000000135FDBFFFF),
    .INIT_15(256'h5984D17FFFFFFFFFFFFE0800000006FC6003FFFFFFFFFFFFFF1800000008BF24),
    .INIT_16(256'h00010458071FFFFFFFFFFFFF300000000211973A3FFFFFFFFFFFFF9000000006),
    .INIT_17(256'h000000003AC0019FFFFFFFFFFFF9C000000000C7A003BFFFFFFFFFFFFC600000),
    .INIT_18(256'h86000000000000000070FFFFFFFFFFF500000000000E0000EDFFFFFFFFFFF080),
    .INIT_19(256'hFFF6380000000000000000183FFFFFFFFD1C000000000000000039FFFFFFFFFF),
    .INIT_1A(256'hFFFFFFB2C00000000000000000020FFFFFFFF46000000000000000000E3FFFFF),
    .INIT_1B(256'h001D147F963C0000000000000000000070DFFFFD0B0000000000000000000182),
    .INIT_1C(256'h00000001F180E5C0000000000000000000000640F3C570000000000000000000),
    .INIT_1D(256'h0000000000000D6071000000000000000000000000393F0B8000000000000000),
    .INIT_1E(256'h00000000000000000778CC0000000000000000000000000CA046000000000000),
    .INIT_1F(256'h000000000000000000000300500000000000000000000000000220C800000000),
    .INIT_20(256'h0000000000000000000000000306E00000000000000000000000000201100000),
    .INIT_21(256'hDD4000000000000000000000000002DF4000000000000000000000000002DFA0),
    .INIT_22(256'h00031E40000000000000000000000000031E4000000000000000000000000002),
    .INIT_23(256'h0073D3821B8FF80000000000000000001FF80318800000000000000000000000),
    .INIT_24(256'h0000199FF71293FFF4C00000000000000000CFF6E21BBA0F0000000000000000),
    .INIT_25(256'h0000003EBC5100AEB328083800000000000007C31607ED1787FF700000000000),
    .INIT_26(256'h0000000001E3FFEB00182280018C000000000000513D37001036E007C8000000),
    .INIT_27(256'hEC0000000000021FFFFF4033670009BC00000000000317FFD680292700049C00),
    .INIT_28(256'h801F3800000000000D7FFE3E700667400F4C0000000000043FFE3DE1385E800C),
    .INIT_29(256'h91AA1FF82000000000001BFFFFF69498E7003D3000000000000CFFFFEF281CBF),
    .INIT_2A(256'hFF88A129FFFCB0000000000021FFFFFF5691F5CF3BC0000000000015FFFFFD14),
    .INIT_2B(256'hFFFFFFE0E7AB7FFCFB00000000003BFFFFFFC3B38FBFF6CE000000000037FFFF),
    .INIT_2C(256'h004FFFFFFFFE9C83FFFFF0E00000000057FFFFFFF72757FFFFD3C00000000053),
    .INIT_2D(256'h0000007FFFFFFFFE56FF87FFFE90000000006FFFFFFFF91D7C0FFFFC20000000),
    .INIT_2E(256'h4C000000006F297FFFFE3FFFFFFFFF48000000006FADFFFFFDFFFFFFFFFF2800),
    .INIT_2F(256'hFFFF58000000004CFE5FFFFEFFFFFFFFFFD40000000076EEBFFFFDFFFFFFFFFF),
    .INIT_30(256'hFFFFFFFFC4000000003280A7FFFEFFFFFFFFFF980000000028C34FFFFCFFFFFF),
    .INIT_31(256'hFCFFFFFFFFFFE400000000138835FFFEFFFFFFFFFFD400000000218063FFFFFF),
    .INIT_32(256'h0EBFF4FFFFFFFFFFEE000000000CFC1D7FFAFFFFFFFFFFE200000000199C12FF),
    .INIT_33(256'h03D8030F77FFFFFFE42FE000000000041C075F77FFFFFFFFFFEE000000000EEC),
    .INIT_34(256'h0000000000F35ED1FFFE7A85DC0000000000E001D92E7FFFFFADCBEC00000000),
    .INIT_35(256'h000000000000000DA09AFF826008B00000000000000039398FFFF7FFF0F40000),
    .INIT_36(256'h3CD00000000000000003002672DE0004300000000000000007C0477F19800D18),
    .INIT_37(256'h000020C000000000000000000003E7800038600000000000000000001D193000),
    .INIT_38(256'h00000000000000000000000000000000000000000000000000000000000001F0),
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
    .INIT_00(256'hFFFFFFFFFDABBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFC4003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFC1A906FFFFFFFFFFFFFFFFFFFAAAFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFF0BEE80BFFFFFFFFFFFFFFE4A50015B6FFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFF02EAAF47FFFFFFFFFFFFF7400000000067FFFFFFF),
    .INIT_05(256'h005FFFFFFFFFFFFFFFFFFFFFFFE0BAAABD3FFFFFFFFFFFED001AAAAAA94019FF),
    .INIT_06(256'hAAABA405FFFFFFFFFFFFFFFFFFFFFFE1EAAAAF07FFFFFFFFFE801AAAAAAAAAA9),
    .INIT_07(256'hAAAAAAAAAE80AFFFFFFFFFFFFFFFFFFFFF42AAAAABC2FFFFFFFFE806AAAAAAAA),
    .INIT_08(256'hAAAAAAAAAAAAAAE403FFFFFFFFFFFFFFFFFFFF87A5AAAAF0BFFFFFFFC06AAAAA),
    .INIT_09(256'h6EAAAAAAAAAAAAAAAAAA42FFFFFFFFFFFFFFFFFFFE0B402AAA8C0FFFFFF506EA),
    .INIT_0A(256'hFE81AAAAAAAAAAAAAAAAAAAAA06FFFFFFFFFFFFFFFFFFF1E001AAAB50AFFFFC0),
    .INIT_0B(256'hA406A40BAAAAAAAAAAAAAAAAAB03F80BFFFFFFFFFFFFFFFFFD2D000BAA9400DF),
    .INIT_0C(256'hAAA69A4000696AAAAAAAAAAAAAAAAC554E42FFFFFFFFFFFFFFFFF4380006AAAE),
    .INIT_0D(256'h0001EAABC6AAAAD00AAAAAAAAAAAAAAAAD6A9390BFFFFFFFFFFFFFFFFC740002),
    .INIT_0E(256'hF4A00001AAAAF6AAAB8107AAAAAAAAAAAAAAADAFE8E47FFFFFFFFFFFFFFFF8A4),
    .INIT_0F(256'hFFFFE0900000AAA97AAAAA402EAAAAAAAAAAAAAAAC6FFA382FFFF9FFFCBFFFFF),
    .INIT_10(256'hA5013FFFD1D00000AAA931AAAA00B1AAAAAAAAAAAAAAAC6FFE7A03FFB4000023),
    .INIT_11(256'h1AAAAAA42FFFC19000007AAAF5AAAA046AAA956AAAAAAAAAA86FFF4A82FF016A),
    .INIT_12(256'hA081AAAAAAAA46FFF29000006AAAB9AAAA050AAA400BAAAAAAAAAB1BFF8ED2F8),
    .INIT_13(256'h6A4EB442A955AAAA90BFE29000006AAAB9AAAA051AA910E2AAAAAAAAAAC6BE9E),
    .INIT_14(256'hAAAB050AA80B905AAAAAB87FE29000006AAAAAAAAA042AA401FCAAAAAAAAAAB1),
    .INIT_15(256'hAAAAAAAABFEAAD1E06AAAAAAAD3FE29000006AAA9AAAAA40AAA447FDAAAAAAAA),
    .INIT_16(256'hAAAAAAAAAAAAAAAAAA146AAAAAAAAB07E29000006AAA9AAAAAA6AAA043F8AAAA),
    .INIT_17(256'h5401AAAAAAAAAAAAAAAAAA41AAAAAAAAAB8BD29000002AAA8AAAAAAAAA915254),
    .INIT_18(256'hAA915501AAAAAAAAAAAAAAAAAB46AAAAAAAAAAC2D29000002AAA86AAAAAAAA91),
    .INIT_19(256'hAAAAAAA05542AAAAAAAAAAAAAAAAAA46AAAAAAAAAAE0D29000006AAA86AAAAAA),
    .INIT_1A(256'h82AAAAAAAAA45546AAAAAAAAAAAAAAAAAA82AAAAAAAAAAE3E29000006AAA86AA),
    .INIT_1B(256'h6AAA82AAAAAAAAA8041AAAAAAAAAAAAAAAAAAA81EAAAAAA555F2E29000006AAA),
    .INIT_1C(256'h00006AAABEAAAAAAAAAA416AAAAAAAAAAAAAAAAAAA90BAAAAE401065E2900000),
    .INIT_1D(256'hF19400006AAABEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA902AAAA4150902F294),
    .INIT_1E(256'hD280C19400007AAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9306AA403F0642),
    .INIT_1F(256'h7FFFF282E0940000AAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8290001EFF),
    .INIT_20(256'hFFFFFFFFD14BF0A40000AAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA81F2AB),
    .INIT_21(256'hAA87FFFFFFFFD00BF4A40001AAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA82),
    .INIT_22(256'hAAAAAA4BFFFFFFFFD06FFCB40001EAAB6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_23(256'hAAAAAAAAAB43FFFFFFFFF3FFF4740002AAAE6AAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_24(256'hAAAAAAAAAAAAAA07FFFFFFFFDBFFFC290007AAAD6AAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_25(256'hAAAAAAAAAAAAAAAAAA1FFFFFFFFFFFFFFE1D000AAAB8AAAAAAAAAAAAAAAAAAAA),
    .INIT_26(256'hAAAAAAAAAAAAAAAAAAAAAD3FFFFFFFFFFFFFFD0E402EAAB0AAAAAAAAAAAAAAAA),
    .INIT_27(256'hAAAAAAAAAAAAAAAAAAAAAAAAA81FFFFFFFFFFFFFFF4B906AAAE1AAAAAAAAAAAA),
    .INIT_28(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAB4BFFFFFFFFFFFFFFF02EAAAAA82AAAAAAAA),
    .INIT_29(256'h006AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA07FFFFFFFFFFFFFFFD1EAAAAA4AAAAA),
    .INIT_2A(256'hA401A406AAAAAAAAAAAAAAAAAAAAAAAAAAAAD2FFFFFFFFFFFFFFFFD0BAAAA904),
    .INIT_2B(256'h0AAA907BFDC0AAAAAAAAAAAAAAAAAAAAAAAAAAAB82FFFFFFFFFFFFFFFFF82AAA),
    .INIT_2C(256'hFFFF41A903FFFFE42AAAAAAAAAAAAAAAAAAAAAAAAAAA03FFFFFFFFFFFFFFFFFD),
    .INIT_2D(256'hFFFFFFFFE00007FFFFFE0AAAAAAAAAAAAAAAAAAAAAAAAAA82FFFFFFFFFFFFFFF),
    .INIT_2E(256'hFFFFFFFFFFFFF641FFFFFFFF82AAAAAAAAAAAAAAAAAAAAAAAAA47FFFFFFFFFFF),
    .INIT_2F(256'hFFFFFFFFFFFFFFFFFFABFFFFFFFFE0AAAAAAAAAAAAAAAAAAAAAAAA90BFFFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42EAAAAAAAAAAAAAAAAAAAAAA42FFFF),
    .INIT_31(256'hA06FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0BAAAAAAAAAAAAAAAAAAAAA80B),
    .INIT_32(256'hAAAE42FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81AAAAAAAAAAAAAAAAAAAA),
    .INIT_33(256'hAAAAAAE403FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC06AAAAAAAAAAAAAAA),
    .INIT_34(256'hAAAAAAAAAA80AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF506AAAAAAAAAA),
    .INIT_35(256'hAAAAAAAAAAAAA405FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC06AAAAA),
    .INIT_36(256'hFD801AAAAAAAAAA9405FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE806),
    .INIT_37(256'hFFFFFFEC005AAAAAA94009FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_38(256'hFFFFFFFFFFFF7400005000006FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFFFFFFFFFFFFFFFFFD0400000190FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3A(256'hFFFFFFFFFFFFFFFFFFFFFF06A555AB87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFF0AAAAA91FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF016AA94BFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE001502FFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF255556FFFFFFFFFFFFFFFFFF),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2AAACFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2AAA9BFFFFFFFFFF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2AAB2FFFFFFF),
    .INIT_42(256'hBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1AAA1FFF),
    .INIT_43(256'h1AACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1AA9),
    .INIT_44(256'hFFFC2AA97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_45(256'hFFFFFFFC2AA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_46(256'hFFFFFFFFFFFF2AB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFFFFFE4FF0BFFFFF2AB0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFFFFFFFFD9000058BFFF2AA6FF4FFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hFFFFFFFFFFFF406AAA907FFE2ADBFA00005DFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4A(256'hFFFFFFFFFFFFFFFFC95AAAAA41FD6AC360AAAA908FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4B(256'hFFFFFFFFFFFFFFE3A55B490AAAAAB4346AAB02AAAABE0BFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'hFFFFFFFFFFFFFFFFFF9055545072AAAAAD70AAA866AAAAA852FFFFFFFFFFFFFF),
    .INIT_4D(256'hFFFFFFFFFFFFFFFFFFFFC06AAAAAA5F2AAAAAA55AB82AAAAAAB8283FFFFFFFFF),
    .INIT_4E(256'hFFFFFFFFFFFFFFFFFFFFFFFFC6EAAAAAAE42AAAAAA01AB4AAAAAAAA488BFFFFF),
    .INIT_4F(256'hA03FFFFFFFFFFFFFFFFFFFFFFFFF2EAAAAAAAAA4AAAAA961AA6AAAAAAAB784BF),
    .INIT_50(256'hAAACB2FFFFFFFFFFFFFFFFFFFFFFFFF0BAAAAAAAAAAD1AAAA9A6AD6A6AAAAAA9),
    .INIT_51(256'hAAAAAAA556FFFFFFFFFFFFFFFFFFFFFFFFD1EAAAAAAAA56B86AAAAD6A9A5AAAA),
    .INIT_52(256'hA65AAAAAAA927FFFFFFFFFFFFFFFFFFFFFFFFFD3AAAAAAAAAA56E2AAAA9AB596),
    .INIT_53(256'hAA6AA57AAAAAAAA87FFFFFFFFFFFFFFFFFFFFFFFFF0AAAAAAAAAAAE578AAAA5A),
    .INIT_54(256'hD65AA96A91EAAA55AAB9FFFFFFFFFFFFFFFFFFFFFFFFFF8EAAAAAAAAAAAE5D6A),
    .INIT_55(256'hAAAAB95AA5AA87A955555552BFFFFFFFFFFFFFFFFFFFFFFFFE2EAAAAAAAAAAAA),
    .INIT_56(256'hAAAAAAAAAE56A1AA1E556AAAAA951DFFFFFFFFFFFFFFFFFFFFFFFF2AAAAAAAAA),
    .INIT_57(256'hAAAAAAAAAAAAAB9692A9256AEAAAAAAF904FFFFFFFFFFFFFFFFFFFFFFE3AAAAA),
    .INIT_58(256'hF8AAAAAAAAAAAAAAAAD1D6A85AEAAAAAAAAAAE45FFFFFFFFFFFFFFFFFFFFFD7A),
    .INIT_59(256'hFFFFF4AAAAAAAAAAAAAAAAA15AA46AAAAAAAAAAAAAF4FFFFFFFFFFFFFFFFFFFF),
    .INIT_5A(256'hFFFFFFFFF0AAAAAAAAAAAAAAAAB86955955AAAAAAAAAAAAE3FFFFFFFFFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFFFF0AAAAAAAAAAAAAAAAA955ABAAAAAAAAAAAAAAAB83FFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFF0AABAAEAAAAAAAAAAAD1AAAAAAAAAAAAAAAAAAAE2FFFFFF),
    .INIT_5D(256'h40BFFFFFFFFFFFFFFFFFF0AAD106EAAAAAAAAAA9BAAAAAAAAAAAAAAAAAAAA3FF),
    .INIT_5E(256'hAAAA837FFFFFFFFFFFFFFFFFF4AB12747AAAAAAAAAA9AAAAAAAAAAAAAAAAAAAA),
    .INIT_5F(256'hAAAAAAAADBFFFFFFFFFFFFFFFFFFFD6D7FFC0EAAAAAAAAA6AAAAAAAAAAAAAAAA),
    .INIT_60(256'hAAAAAAAAAAAAB3FFFFFFFFFFFFFFFFFFFE39BFFF83AAAAAAAAA6AAAAAAAAAAAA),
    .INIT_61(256'hAAAAAAAAAAAAAAAAA9BFFFFFFFFFFFFFFFFFFF30FFFFF0EAAAAAAAA6AAAAAAAA),
    .INIT_62(256'hAAAAAAAAAAAAAAAAAAAAAC3FFFFFFFFFFFFFFFFFFE25FFFFF87AAAAAAAA6AAAA),
    .INIT_63(256'hAAA6AAAAAAAAAAAAAAAAAAAAA9FFFFFFFFFFFFFFFFFFFF85FFFFFD1EAAAAAAA6),
    .INIT_64(256'hEAAAAAA2AAAAAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFF41FFAFFF0BAAAA),
    .INIT_65(256'hFFF4BAAAAAD2AAAAAAAAAAAAAAAAAAAAAA6FFFFFFFFFFFFFFFFFFFF3FEAFFFE2),
    .INIT_66(256'h02FFFFFD2EAAAA98AAAAAAAAAAAAAAAAAAAAAA6FFFFFFFFFFFFFFFFFFFF4E4BF),
    .INIT_67(256'hFFFF4BFFFFFF8BA9AA0C6AAAAAAAAAAAABEAABAAAABFFFFFFFFFFFFFFFFFFFFE),
    .INIT_68(256'hFFFFFFFFFFFFFFFFF0B8B8BF2AAAAAAAAAAAB90541BAA9BFFFFFFFFFFFFFFFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFF510D2FF0EAEAAAAAAAB81DBA21EACFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF1413FF474AAAAAAAE427FFFF47A87FFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFD047AAAABE43BFFFFFD2B5FFFFFF),
    .INIT_6C(256'hCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFFF912EAAA904FFFFFFFF8F0FF),
    .INIT_6D(256'hFDBC1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2495501DFFFFFFFF70),
    .INIT_6E(256'hFFFFFC30FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4556CBFFFFFFF),
    .INIT_6F(256'hFFFFFFFFFE4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEABFFFFFF),
    .INIT_70(256'h00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
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
    .INITP_00(256'hFFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_01(256'hFFFFFFFFFE3F8FFFFFFFFC000FFFFFFFFFFFFFFF0C1FFFFFFFFFFFFFFFFFFFFF),
    .INITP_02(256'h07FFFFFFFFFFFC7FE3FFFFFC03FFE01FFFFFFFFFFFFE7FC7FFFFFF800000FFFF),
    .INITP_03(256'hFFFFF07FFFFFFFFFF9FFF9FFFFC1FFFFFFC1FFFFFFFFFFF8FFF3FFFFF03FFFFE),
    .INITP_04(256'h7FFFFFFFFF0FFFFFFFFFF307FC7FFE1FFFFFFFFC3FFFFFFFFFF18FFCFFFF07FF),
    .INITP_05(256'h4003FFFFFFFFFFE3FFFFFFFFE601FF07F0FFFFFFFFFFC7FFFFFFFFE203FE1FFC),
    .INITP_06(256'h00FFFFF83FFFFFFFFFF8FFFFFFFFC400FFF0067FFFFFFFFFF1FFFFFFFFE401FF),
    .INITP_07(256'hFFC800FFFFF0FFFFFFFFFFFE3FF01FFFC800FFFFF81FFFFFFFFFFC7FFFFFFFCC),
    .INITP_08(256'h00003FC8007FFFF01F87FFFFFFFF9E0000FFC8007FFFF0FFFFFFFFFFFF3F8003),
    .INITP_09(256'hFFC000000F98007FFFF03E01FFFFFFFFCC00001F98007FFFE01F03FFFFFFFF8C),
    .INITP_0A(256'hFFFFFFE200002390007FFFF07C1EFFFFFFFFE100004798007FFFF03C1CFFFFFF),
    .INITP_0B(256'h00FFFFFFFFF000001990007FFFFFF80CFFFFFFFFF000001390007FFFF8FC1EFF),
    .INITP_0C(256'hFFFC00FFFFFFFFF000000D90007FFFFFF800FFFFFFFFF000000990007FFFFFF8),
    .INITP_0D(256'h7FFFFFFE03FFFFFFFFF800000C90007FFFFFFC01FFFFFFFFF800000C90007FFF),
    .INITP_0E(256'h88007FFFFFFF9FFFFFFFFFF800030098007FFFFFFE07FFFFFFFFF80000049800),
    .INITP_0F(256'hFF81C8007BFFFFFFFFFFFFFFFFF9801F81C8007BFFFFFFFFFFFFFFFFF8000F80),
    .INIT_00(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_01(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_02(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_03(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF55CC88AA10BBFFFFDDDDDDDDDD),
    .INIT_04(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_05(256'hDDDDDDDDDDDDDDDDFDFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_06(256'h00CCDDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_07(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF55440000000000),
    .INIT_08(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_09(256'hDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFDDDDBBBBBBBBBBDBDDFFFFFFFFFFDDDD),
    .INIT_0A(256'hCE00008A1416F28A000044BBFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF),
    .INIT_0C(256'h4668AAEE55BBDDFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFBB7711AC886644242222222244),
    .INIT_0E(256'hDDDDDDDDDDDDFFCE0002147C7C7A7C7C36460024DDFFDDDDDDDDDDDDDDDDDDDD),
    .INIT_0F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_10(256'h000224242424240200000000000266CC55DDFFFFDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_11(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFF77EE682200000000),
    .INIT_12(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDFF330002369C58385838389C9C880066FFFFDD),
    .INIT_13(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_14(256'h0000000268CE12343656585858585858363612D08A2400000044AC77FFFFDDDD),
    .INIT_15(256'h389CBC6800CEFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFBBEE46),
    .INIT_16(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFBB0000F47C583858585838),
    .INIT_17(256'h680000006855FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_18(256'hDDFFFF99AA00000046CE34587A9C9C9C9C7A7A7A7A7A7A7A9C9C9C9C9C5836F0),
    .INIT_19(256'h7C5858585858585838589C9C440077FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF8A00AC),
    .INIT_1B(256'h787878787A7A9C9C9A56CE2400006877FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1C(256'hDDDDDDDDDDDDDDFFFFBBAA000002AC347A9C9C7A7A7878787878787878787878),
    .INIT_1D(256'hDDDDDDFF770022587A7A7A7C5A385858385878BC780002BBFFDDDDDDDDDDDDDD),
    .INIT_1E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1F(256'h787878787878787878787878787878787A9C9C7AF24600008ABBFFDDDDDDDDDD),
    .INIT_20(256'h99FFDDDDDDDDDDDDDDDDDDDDDDDDFFFFEE000002CE589C9C7A78787878787878),
    .INIT_21(256'hDDDDDDDDDDDDDDDDDDDDDDFF8800D09E7AF26AAC587A385858385878BE120022),
    .INIT_22(256'h000033FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_23(256'h7878787878787878787878787878787878787878787878787878787A9E7AF022),
    .INIT_24(256'h5838587A7ADFAC000235FFFFDDDDDDDDDDDDDDDDFFFF77440000AE589C9C7878),
    .INIT_25(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF990002589EAE02020046387A38),
    .INIT_26(256'h78787858587A9E78AC0000AAFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_27(256'h68369E9C78787878787878787878787878787878787878787878787878787878),
    .INIT_28(256'h02244646006A5A5858385878789C9B240000AABBFFFFFFDDDDDDDDFFFF110000),
    .INIT_29(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFCE00AE9EF2),
    .INIT_2A(256'h7878787878787878787878787A7A789C9C14220046BBFFDDDDDDDDDDDDDDDDDD),
    .INIT_2B(256'hFFFFFF998A0000F09C9C78587878787878787878787878787878787878787878),
    .INIT_2C(256'hDDFDFD4600367C46244624242400F27C385838587A58FF1146680000CC77DDFF),
    .INIT_2D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2E(256'h7878787878787878787878787878787878787A9A9B9B9B9A9ABE584600229BFF),
    .INIT_2F(256'hF07ACE0000004688ACAA6800002458BE9C7A5878787878787878787878787878),
    .INIT_30(256'hDDDDDDDDDDDDDDDDDDFF7900467CF204262424244602685A585838587A789CBB),
    .INIT_31(256'hBD9BBC9C8A00029BFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_32(256'h78787878787878787878787878787878787878787878787858789A9BBDBDBDBD),
    .INIT_33(256'h7C583838787A58FF9936BE58CE46000000000024D09A14686A569C7878787878),
    .INIT_34(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFF000CE9E6A2446242424242402F2),
    .INIT_35(256'h58789ABDDDDFDFDFDDBDBBBC9C8A0022DDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_36(256'h02487A7A78787878787878787878787878787878787878787878787878787878),
    .INIT_37(256'h24242424244602AE7C385838587A589AFF9B589C9C7A36141414347ABED00224),
    .INIT_38(256'hDDDDFFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDFF8800145A4624),
    .INIT_39(256'h787878787878787858789ABDDDDFFFFFFFDFDDBB9C9C680066FFFFDDDDDDDDDD),
    .INIT_3A(256'h9C9C9CBE120246482400F29C7878787878787878787878787878787878787878),
    .INIT_3B(256'hDDDD440058F22446242424242424026A5A585838587A7858FFFF5878787A9C9C),
    .INIT_3C(256'h00ACFFDDDDDDDDDDFFFFBB55F0CECECECECEF055BBFFFFFFDDDDDDDDDDDDDDDD),
    .INIT_3D(256'h7878787878787878787878787878787858789ABDDDDFFFFFFFFFDFDD9B9C7A46),
    .INIT_3E(256'hDDFF78587878787878787A7A68244624137914587A78787878787A7A78787878),
    .INIT_3F(256'hFFDDDDDDDDDDDDDDDD9900467AAE24462424242424242424165A5838587A7A58),
    .INIT_40(256'hFFFFFFDFBD9A9C58220033FFDDDDFFFF99CE4602000002020200000024AA13DD),
    .INIT_41(256'h7A9C9C7A9C9A78787878787878787878787878787878787878587ABBBDDFFFFF),
    .INIT_42(256'hF27C583838787A589DFF9B587878787878789C36264646049BFF37367A787858),
    .INIT_43(256'hB0B08E8C4800004635FFFFDDDDDDDDDDDD55008A7C8A26242424242424242402),
    .INIT_44(256'h7858789BBDDFFFFFFFFFFFFFDD9B789E120002BBFFFFFFF00200244A6C8EB2B0),
    .INIT_45(256'h688AD07A7A78589A9AF2AC8CAC369C7878787878787878787878787878787878),
    .INIT_46(256'h2424242424242402D07C585838587A589AFFBD587878787878789C1224464826),
    .INIT_47(256'h246C6E6E6EB4F6D6D6D6D6D6D4B08C0200ACDDFFDDDDDDDDDD1100D07C6A2624),
    .INIT_48(256'h78787878787878787878587ABBBDDFFFFFFFFFFFDDBD7A7ABE8A00AAFFFFAA00),
    .INIT_49(256'h78789CF2244646482402F29C78589A7A8C0424040002149C5878787878787878),
    .INIT_4A(256'hDDCE0014584826242424242424242402AE7C585838587A787AFFDD5878787878),
    .INIT_4B(256'h9C782400991300486E7092D4D6F4F4D4D2B2D4D4D4D6F6D4480046BBFFDDDDDD),
    .INIT_4C(256'h9C787878787878787878787878787878787878587ABBBDDFDFFFFFDFDDBD7A58),
    .INIT_4D(256'h58FFDF587878787878789C14244646482448387A787A9C8C02462626CE8A0456),
    .INIT_4E(256'hF8AC0026DDFFDDDDDDAC00363646462424242424242424028C7A585838587A78),
    .INIT_4F(256'hDDDDDDDDBDBD7A5858BECE004646266EB4F8F4B08C6A6A6CB0D2D4D4D4D4D4F8),
    .INIT_50(256'h46460455FFFFCE8C9C78787878787878787878787878787878787858587A9BBD),
    .INIT_51(256'h6A5A585838587A7A58DDDF587878787878787A582624482624F47A78789CF002),
    .INIT_52(256'hD4D4D4D4D4D4D4D4D63AF00068FFFFDDDD8A0036142646242424242424242402),
    .INIT_53(256'h7878787858587A9A9BBDBDBDBD9B7A58787A784400028E1AF6AC4424264A90B2),
    .INIT_54(256'hD05A7A787A7A682448246AFFFFFFFF8C587A7878787878787878787878787878),
    .INIT_55(256'h242424242424242268585A5838587A7A58BDDF58787878787878789CF2040226),
    .INIT_56(256'h24024A6E90B2D4D4D4D4D4D4D4D4D4D4D4D67CCE00CEFFDDDD880258F2264624),
    .INIT_57(256'h787878787878787878787878787858787A7A9A9A7A7A58787878BEAC00683AD0),
    .INIT_58(256'h7878787A9AF2AEF45A7A78789C342646462626DDFFFF9926367A787878787878),
    .INIT_59(256'hDD680258F2264624242424242424242448385A5838587A7A58BDDF5858787878),
    .INIT_5A(256'h78789C3400488C00488E7090D4D4D4D4D4D4D4D4D4D4D4D4D6B4F89C460099FF),
    .INIT_5B(256'h387A787878787878787878787878787878787878787878585858787858587878),
    .INIT_5C(256'h58BDDD5878787878787878587A9C7C7A787878789CF024464648248A77574826),
    .INIT_5D(256'hD6D6B45A5600ACFFDD662258D2264624242424242424242446365A5838587A7A),
    .INIT_5E(256'h787858587878787878787A9C6800226A906E90D4D4D4D4D4D4D4D4D4D4D4D4D6),
    .INIT_5F(256'h464648040404028C5A7A78787878787878787878787878787878787878787878),
    .INIT_60(256'h46365A5838587A7A589DBD58787878787878787878787A7A787878789CD00446),
    .INIT_61(256'hD4D4D4D4D4D4D4D6D4D4D4F6BC6802BBDD662458D22846242424242424242424),
    .INIT_62(256'h787878787878787878787878787878787878789CAE0048926E90D4D4D4D4D4D4),
    .INIT_63(256'h787878789CF0244646464646464624AE7C7A7878787878787878787878787878),
    .INIT_64(256'h242424242424242446385A583858787A589BBD58787878787878787878787878),
    .INIT_65(256'h6ED4D4D4D4D4D4D4D4D4D4D4D2D4D6D6F6F6D6B47C320033DD680258D2284624),
    .INIT_66(256'h7878787878787878787878787878787878787878787878787878789CF2004890),
    .INIT_67(256'h7878787878787878787878789C36264646464646484626F47A78787878787878),
    .INIT_68(256'hDD680258F2284624242424242424242268385A5838587A7A589BBD5878787878),
    .INIT_69(256'h7878789C3622246EB2D4D4D4D4D4D4D4D4D4D4D2D4F8F8D6D4D4D6D63A7600CE),
    .INIT_6A(256'h7A78787878787878787878787878787878787878787878787878787878787878),
    .INIT_6B(256'h589B9D58787878787878787878787878787878787A7A6A044846464846028E5A),
    .INIT_6C(256'h4846486C38BC248ADD8A0036F448462424242424242424026858585838587A7A),
    .INIT_6D(256'h78787878787878787878787A7846006CF6D4D4D4D4D4D4D4D4D2D4F6F8B06A48),
    .INIT_6E(256'h24464626026A387A787878787878787878787878787878787878787878787878),
    .INIT_6F(256'h8A5A58585838587A789B9B5878787878787878787878787878787878789C3624),
    .INIT_70(256'hD4D6F8D46C000002244624006A566848DDAA0036164846242424242424242402),
    .INIT_71(256'h787878787878787878787878787878787878785A7A680024B0F6D4D4D4D4D4D2),
    .INIT_72(256'h7878787878789CF4482424468E387A7878787878787878787878787878787878),
    .INIT_73(256'h2424242424242402AC7A58585816367A789A9A58787878787878787878787878),
    .INIT_74(256'h02B0F6D6D4D4D4F6F6D48E040068575524248E6A0246468ADDCC001438484624),
    .INIT_75(256'h787878787878787878787878787878787878787878787878787858587A8A0002),
    .INIT_76(256'h7878787878787878787878787878789C58D2D2165A7A78787878787878787878),
    .INIT_77(256'hDDF000F05A6A46242424242424242402D07C58585A14367A789A7A5878787878),
    .INIT_78(256'h785858387C8A00EE46006CB2D2D2B2B06C02002413FFFFFF33006AD46A2402CE),
    .INIT_79(256'h7878787878787878787878787878787878787878787878787878787878787878),
    .INIT_7A(256'h7A7A7A7878787878787878787878787878787878787878787A7C7C7A78787878),
    .INIT_7B(256'hFD4624B0B0460013DD3500AC7C6C26242424242424242402D07C585858F4367A),
    .INIT_7C(256'h7878787878787878585858387A6800BBBB460002040402000068F0BBFFFFDDFF),
    .INIT_7D(256'h78787A7A78787878787878787878787878787878787878787878787878787878),
    .INIT_7E(256'hF47A585858F2367A7A7A58787878787878787878787878787878787878787878),
    .INIT_7F(256'h55DDFFFFDDDDDDDDFFEE028ED2260299DD9900687A8E26262424242424242422),
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
    .INITP_00(256'hF9FFFFC3CC00FBFFFFFFFFFFFFFFFFF9FFFFC1C800FBFFFFFFFFFFFFFFFFF9E0),
    .INITP_01(256'hFFFFD3FFFFCFE401F37FFFFFFFFFFFFFFFF9FFFFC7C400F33FFFFFFFFFFFFFFF),
    .INITP_02(256'hFFFFFFFFB3FFFFFFE203E67FFFFFFFFFFFFFFFB3FFFFFFE601F67FFFFFFFFFFF),
    .INITP_03(256'hFFFFFFFFFFFC67FFFFFFF187CC9FFFFFFFFFFFFFFF23FFFFFFF303ECBFFFFFFF),
    .INITP_04(256'h03FFFFFFFFFFFFE0CFFFFFFFF8FF900FFFFFFFFFFFFFF847FFFFFFF9FFD807FF),
    .INITP_05(256'h1803F04FFFFFFFFFFE019FFFFFFFFC7E0000BFFFFFFFFFFF808FFFFFFFFCFF20),
    .INITP_06(256'hFFFF803FFE007FFFFFFFC0063FFFFFFFFF000FFC23FFFFFFFFF8033FFFFFFFFE),
    .INITP_07(256'hFFFFFFFFFFFFFF8000FFFFE00008FFFFFFFFFFE07FFF000FFFFFFE000C7FFFFF),
    .INITP_08(256'h07FFFFFFFFFFFFFFFFE0000000000063FFFFFFFFFFFFFFFFC0000000000011FF),
    .INITP_09(256'h00003FFFFFFFFFFFFFFFFFFC00000000000FFFFFFFFFFFFFFFFFF00000000000),
    .INITP_0A(256'h00000001FFFFFFFFFFFFFFFFFFFF00000000007FFFFFFFFFFFFFFFFFFE000000),
    .INITP_0B(256'hFFFC0000001FFFFFFFFFFFFFFFFFFFFFF000000007FFFFFFFFFFFFFFFFFFFFC0),
    .INITP_0C(256'hFFFFFFFFF00001FFFFFFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFF),
    .INITP_0D(256'hFFFFFFFFFFFFF80003FFFFFFFFFFFFFFFFFFFFFFFFF80001FFFFFFFFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFFFFFFE000FFFFFFFFFFFFFFFFFFFFFFFFFFE0007FFFFFFFFFFFF),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFE001FFFFFFFFFFFFFFFFFFFFFFFFFFE001FFFFFFFFF),
    .INIT_00(256'h78787878787878787878787878787858583838387A680079FFDD11AC8A8AACEE),
    .INIT_01(256'h7878787878787878787878787878787878787878787878787878787878787878),
    .INIT_02(256'h2424242424242446385A585838D2587A7A585858787878787878787878787878),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDFF55028C8E00ACFFDDDD24025AD02646),
    .INIT_04(256'h78787878787878787878787878787878787878787858585838383638782402BB),
    .INIT_05(256'h7878787878787878787878787878787878787878787878787878787878787878),
    .INIT_06(256'hDDFF660036364846242424242424028C7A58585A16D2789C5614585858587878),
    .INIT_07(256'h3836165A560066DDFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF5724460024BBFF),
    .INIT_08(256'h7878787878787878787878787878787878787878787878787878787858585838),
    .INIT_09(256'hF0F2583858585878787878787878787878787878787878787878787878787878),
    .INIT_0A(256'hFF550000469BFFDDDDFFCC00F07C6A2624242424244602D07C38585AF4D27A9C),
    .INIT_0B(256'h78787858585838363636167A1200ACFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0C(256'h7878787878787878787878787878787878787878787878787878787878787878),
    .INIT_0D(256'h5A58585AD2F2BE346A3836383858585878787878787878787878787878787878),
    .INIT_0E(256'hDDDDDDDDDDDDDDDDFF1024F0DDFFDDDDDDFF5500689CAE264624242424242436),
    .INIT_0F(256'h787878787878787878585858383836361616F69CCE0011FFDDDDDDDDDDDDDDDD),
    .INIT_10(256'h7878787878787878787878787878787878787878787878787878787878787878),
    .INIT_11(256'h262424244600AC7C58585838B036DE8A6A5A1636363858585858787878787878),
    .INIT_12(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD99BBFFFFDDDDDDDDFFDD2400583846),
    .INIT_13(256'h78787878787878787878787878787858585858383836361616F4169C680057FF),
    .INIT_14(256'h5858585878787878787878787878787878787878787878787878787878787878),
    .INIT_15(256'hDDDDFFAA00F09EAE244624462224367A38385AF4B09C5602D218161636363838),
    .INIT_16(256'h16F45A360044DDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFDDDDDDDDDD),
    .INIT_17(256'h7878787878787878787878787878787878787878785858585838383636361616),
    .INIT_18(256'h18F6161616363638385858585858787878787878787878787878787878787878),
    .INIT_19(256'hDDDDDDDDDDDDDDDDDDDDFF5700467C5A4804240200F27C38385858B014BE6624),
    .INIT_1A(256'h3838363616161616F4F49ECE00EEFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1B(256'h7878787878787878787878787878787878787878787878787878785858585858),
    .INIT_1C(256'h585AF48E9C12008E18F4F6161616163636383858585858587878787878787878),
    .INIT_1D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFF4600F29E366A2424D07C5838),
    .INIT_1E(256'h5858585858583838363636161616F6F4D4387A240077FFDDDDDDDDDDDDDDDDDD),
    .INIT_1F(256'h5858787878787878787878787878787878787878787878787878787878787878),
    .INIT_20(256'h7C5A14387C5838385A36B016582224F8F6F6F6F6F61616163636363838585858),
    .INIT_21(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF3300465A),
    .INIT_22(256'h787878787858585858585838383836363616161616F6F4D4D4BED000AAFFDDDD),
    .INIT_23(256'h1616363636383858585858585858787878787878787878787878787878787878),
    .INIT_24(256'hDDDDDDFFFF4400D07C585A5A5838585A38D0B0586800B0F6B2B2D2F618181616),
    .INIT_25(256'h5A7A240077FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_26(256'h787878787878787858585858585858583838383836363616161616F6F4F4F4B2),
    .INIT_27(256'h000000468CD21816161616163636363838383858585858585858587878787878),
    .INIT_28(256'hDDDDDDDDDDDDDDDDDDDDDDDDFF550002167C5858585A5A36D0B016AC00244802),
    .INIT_29(256'h16F6F4F4F4D4B4F6BE8A00AAFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2A(256'h5858585858585858585858585858585858585858583838383836363636161616),
    .INIT_2B(256'hD2F4AC00000000448888460000008CF618F61616161636363636383838585858),
    .INIT_2C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFAC0046385A58583814D0),
    .INIT_2D(256'h36361616161616F6F4F4F4F4D4D4D49C34000099FFDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2E(256'h1636363636383838383838585858585858585858585858585838383838383636),
    .INIT_2F(256'h0046F43814D2D2F4F46A000044EE99DDFFFFDD99CC000024D418F4F616161616),
    .INIT_30(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF46),
    .INIT_31(256'h38363636363636161616161616F6F4F4F4F4D4D4D4B45A7A240013FFDDDDDDDD),
    .INIT_32(256'h02D218F4F4F61616161616163636363636363838383838383838383838383838),
    .INIT_33(256'hDDDDDDDDDDDDFFDD4600028CD0D2D2AE460000EEDDFFFFFFDDDDFFFFFF996800),
    .INIT_34(256'h00AAFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_35(256'h363636363636363636361616161616161616F6F6F4F4F4F4D4D4D4D4B4389C66),
    .INIT_36(256'hDDDDDDDDDDFFFFCC0002D2F8F4F4F4F6F6161616161616163636363636363636),
    .INIT_37(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFDDAA000002242200002457FFFFDDDDDD),
    .INIT_38(256'hD4D4D4D4167A8A0046FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_39(256'h1616161616161616161616161616161616161616161616F6F6F4F4F4F4D4D4D4),
    .INIT_3A(256'hEEDDFFDDDDDDDDDDDDDDDDDDDDDDFFFFAC0024D4F6D4F4F4F4F4F6F616161616),
    .INIT_3B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF558A44222266),
    .INIT_3C(256'hF4F4D4D4D4D4D4D4D4D4D4F65A8A0022BBFFDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3D(256'hF4F4F4F4F4F4F6F616161616161616161616161616161616161616F6F6F4F4F4),
    .INIT_3E(256'hDDDDFFFFDB99BBFDFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF880024D4F8D4D4),
    .INIT_3F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_40(256'hF4F4F4F4F4F4F4D4D4D4D4D4D4D4D4D4D4D4F8388A000299FFDDDDDDDDDDDDDD),
    .INIT_41(256'hFFFF660024D4F8D4D4D4D4D4F4F4F4F4F4F4F4F4F4F6F6F6F6F6F6F6F6F6F4F4),
    .INIT_42(256'hDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_43(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_44(256'hF4F4F4F4F4F4F4F4F4F4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4181666002299FF),
    .INIT_45(256'hDDDDDDDDDDDDDDDDDDFFFF680022B2F8F6D4D4D4D4D4D4D4F4F4F4F4F4F4F4F4),
    .INIT_46(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_47(256'hF8D0220046BBFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_48(256'hD4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4F6),
    .INIT_49(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFAA00008CF6F6D4D4D4D4D4D4),
    .INIT_4A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_4B(256'hD4D4D4D4D4F6F8D48A0000AAFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_4C(256'h46D2F8F6D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4),
    .INIT_4D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF110000),
    .INIT_4E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_4F(256'hD4D4D4D4D4D4D4D4D4D4D4F6F8F68E22000033FFFFDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_50(256'hDDDDDDDDFFFF774400008CD4F8F6D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4),
    .INIT_51(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_52(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_53(256'hD4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4F6F8D4AE2600008ABBFFDDDDDDDDDD),
    .INIT_54(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFDCE0000028CD4F8F6F4D4D4D4D4D4D4D4),
    .INIT_55(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_56(256'hFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_57(256'hF6F8F6F6D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4F6F6F8F6D28C2400006857),
    .INIT_58(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF99AA0000026AB2),
    .INIT_59(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_5A(256'h460000006855FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_5B(256'hDDFFFF77AA000000468CB2D4F6F8F6F6F6F6F4D4D4D4F4F6F6F6F6F8F6D4B28E),
    .INIT_5C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_5D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_5E(256'hD4D2B08C682422000022AC79FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_5F(256'hDDDDDDDDDDDDDDDDDDDDDDFFFFBBEE2400000024488CB0D2D4D4D4F6F6F6F4D4),
    .INIT_60(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_61(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_62(256'h2444464646464646242200000022024455BBFFFFDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_63(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFDD77EE460000000022),
    .INIT_64(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_65(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_66(256'hFFFFFF7724044826220202000000020222242648908E0035FFFFDDDDDDDDDDDD),
    .INIT_67(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF),
    .INIT_68(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_69(256'hFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_6A(256'hDDDDDDDDDDDDDDDDDDDDFFFF33004A92906E6E6E6C6C6E6E6E6E90D6D40268FF),
    .INIT_6B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_6C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_6D(256'h90B4D6900046DDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_6E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFF000289092929090909090),
    .INIT_6F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_70(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_71(256'h244A6E90909090B2B28E68008AFFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_72(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF1324),
    .INIT_73(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_74(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_75(256'hDDDDDDDDDDFDFFCC02242446464848484424028AFFFFDDDDDDDDDDDDDDDDDDDD),
    .INIT_76(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_77(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_78(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_79(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFEE06906C48484848484A904899FFDDDDDD),
    .INIT_7A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_7B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_7C(256'hD86ECCFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_7D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFEE0690909090906E70),
    .INIT_7E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_7F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
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
    .INITP_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFFFFFFFFFFFFFFFFFFFFFFFF003FFFFF),
    .INITP_01(256'h027FFFFFFFFFFFFFFFFFFFFFFFFFFF007FFFFFFFFFFFFFFFFFFFFFFFFFFF017F),
    .INITP_02(256'hFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF02FFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hFFFC3FFE05FFFFFFFFFFFFFFFFFFFFFFFFFFFF04FFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_04(256'hFFFFFF80003E01E001FFFFFFFFFFFFFFFFFFC001FE01FC1FFFFFFFFFFFFFFFFF),
    .INITP_05(256'hFFFFFFFE0000000E0300021FFFFFFFFFFFFFFFFF00001E0B80007FFFFFFFFFFF),
    .INITP_06(256'hFFFFFFFFFFC0000000001000000FFFFFFFFFFFFFF0000800060000000FFFFFFF),
    .INITP_07(256'h8FFFFFFFFFFFFE000000000000000187FFFFFFFFFFFF000000000010000107FF),
    .INITP_08(256'h0000DFFFFFFFFFFFFC00000000002000020FFFFFFFFFFFFE0000000000200000),
    .INITP_09(256'h000000007FFFFFFFFFFFF80000000000000000FFFFFFFFFFFFF8000000000000),
    .INITP_0A(256'h000000000000FFFFFFFFFFFFF00000000000000000FFFFFFFFFFFFF000000000),
    .INITP_0B(256'h000000000000000007FFFFFFFFFFE000000000000000001FFFFFFFFFFFE00000),
    .INITP_0C(256'hFFE00000000000000000007FFFFFFFFFE0000000000000000001FFFFFFFFFFE0),
    .INITP_0D(256'hFFFFFFE00000000000000000003FFFFFFFFFE00000000000000000003FFFFFFF),
    .INITP_0E(256'h0FFFFFFFFFE08180000000000000000FFFFFFFFFE06600000000000100009FFF),
    .INITP_0F(256'h00009FFFFFFFFFE27F30000000000000013FFFFFFFFFE1384000000000000000),
    .INIT_00(256'h04908E6E6E8E90B4D66A99FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_01(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF11),
    .INIT_02(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_03(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_04(256'hDDDDDDDDDDDDFF33246E909090B292F88EACFFDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_05(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_06(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_07(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_08(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF55266E90B4B4B4B4186A53FFDDDDDDDDDD),
    .INIT_09(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0B(256'h8AFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF55266E90B4B492D6D2),
    .INIT_0D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0F(256'h266E90B2B492186CCCFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_10(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF55),
    .INIT_11(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_12(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_13(256'hDDDDDDDDDDDDFF55246E90B292B4186A55FFDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_14(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_15(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_16(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_17(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF33046E90B492D6D48ADDFDDDDDDDDDDDDD),
    .INIT_18(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_19(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1A(256'hFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1B(256'hDDDDDDFFFFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDFF10046E90B4B2188ECC),
    .INIT_1C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1E(256'h06909094B41A4A11FFDDDDDDFFFFFFFFFFFFFFFFFFDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1F(256'hDDDDDDDDDDDDDDDDDDFFFFBB5511EEEEEEEE115399DDFFFFFFDDDDDDDDDDFFEE),
    .INIT_20(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_21(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_22(256'hBBFFFFDDDDDDFFCC06909094D6F66ABBFFDDFFFF9711EECCCCCCCC1177FDFFFF),
    .INIT_23(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF77AA682828282828282828488AAC11),
    .INIT_24(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_25(256'h4A4C4C4A4888CC55FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_26(256'hB2B29292904E2A2868CCDBFFDDDDFFAA289092B4F88EACFFFFFFBBAA244A4A4A),
    .INIT_27(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFFFDDDDDFF770202266EB4B492),
    .INIT_28(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_29(256'h77AA2204B4D6B4B4B4B4B4D8D6704A4A8A55FFFFDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2A(256'hCC028E6C486C9292929292929292B4B4922A4655FFFFDD684A9092B41A4A33FF),
    .INIT_2B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFDDDDBDBDDFFFF),
    .INIT_2C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2D(256'h6C9092D6F6AEBB1002082690B690909090909090D6D81CD40202ACFDFFDDDDDD),
    .INIT_2E(256'hAC8A8868688AAAEE66268E6C26029092929292929292929092D8920433FF9924),
    .INIT_2F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFB933CC),
    .INIT_30(256'h4A6E048AFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_31(256'h9090D69268DD13046E9094F8D4ACAA026EB46E90909292929292929092F8F424),
    .INIT_32(256'hDDFFDD108846262A4C6E7070706E4E2A4A6A262475EE28929292929292929292),
    .INIT_33(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_34(256'h9292929092F8D244266E6E0433FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_35(256'h9292929292929292929090B46A66464A9090B41AD2002692B490909290929292),
    .INIT_36(256'hDDDDDDDDDDDDDDFFFF5544064C92B6D6B6B6B6B6B6B6B6B6D6B48E4AEEEC2692),
    .INIT_37(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_38(256'h90929292929292929292929092F88E11AA268E28ACFFDDDDDDDDDDDDDDDDDDDD),
    .INIT_39(256'hB4B4D6D66E262490B490929292929290909292902424246C9092D41A8A269292),
    .INIT_3A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFEE004CB6D6B6B4B4B4B4B4B4B4B4B4B4),
    .INIT_3B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3C(256'h9092F6F448929292929090929292929292929290B2F89010BB046C28CCFFDDDD),
    .INIT_3D(256'hB4B4B4B4B4B4B4B4B4B4B4B4D6B66C468EB49292929292929090B26C6A90266E),
    .INIT_3E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFCC0292D8B4B4B4B4B4),
    .INIT_3F(256'hBBAC280635FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_40(256'h9290926CD6904690909418AE4AB492908E9292929292929292929090B4F8F66A),
    .INIT_41(256'hB4D6B4B4B4B4B4B4B4B4B4B4B4B4B4B29292B4B6B6B6D88E246EB49292929092),
    .INIT_42(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF1100),
    .INIT_43(256'h92929092D6D63C6E8AEE008AFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_44(256'h90246EB490929290B2909092D86C4A9092B4186A70B46C6CB292909292929292),
    .INIT_45(256'hDDDDDDDDFF770290D8B4B4B4B4B4B4B4B4B4B4B4B4B4B4B292908E6C6EB4D6D8),
    .INIT_46(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_47(256'h9290929292929292929090D4D6D88E8A557768BBFFDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_48(256'hB4B6B4B08E6A6CB4DA90248EB4909290B2909092B46A6E9092F8D06AB44A6CB4),
    .INIT_49(256'hDDDDDDDDDDDDDDDDDDDDDDDDFF6628F8B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4),
    .INIT_4A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_4B(256'hB4F88C6E4A6CD69290929292929292929090B4D6D88C00AA57DDFFFFDDDDDDDD),
    .INIT_4C(256'hB4B4B4B4B4B4B4B4B4B4B4D6D8D48E6A6CDA902692929090B4906EB66C4A9092),
    .INIT_4D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF3302D6D6B4B4B4B4B4B4B4B4),
    .INIT_4E(256'h46DDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_4F(256'hB4906EB26A6E9092D6D26A486CD89290929292929292929292D6D8D6D6B0B206),
    .INIT_50(256'hB4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B6F8D46A4AD66C48B49290),
    .INIT_51(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF884AFAB4),
    .INIT_52(256'h90B4D4D6D6FCD86AFDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_53(256'hF88E4AB4486CB490B490906C4A909094F88C248CF8B290929292908E6E6C6C6C),
    .INIT_54(256'hDDDDFF9924B2F8B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4D6),
    .INIT_55(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_56(256'h6A6C6C6C6C6C6C6C8C8C8E8E8E902488B9DDFFFFDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_57(256'hB4B4B4B4B4B4B4B4B4FAB06A8E489292B4B26C4A6E6E92B6B2226CFAB692906C),
    .INIT_58(256'hDDDDDDDDDDDDDDDDDDDDFFEE06D8D6D6B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4),
    .INIT_59(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_5A(256'h4648FA924A6C6C6C8EB2B4D6D8D8F8D8D8D6D6B4B2908E6C486AEE55FDFFFDDD),
    .INIT_5B(256'hB4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4F8B26A4A6C92B4B2246C9090B4D6),
    .INIT_5C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFAA4AF8D6D6B4B4B4B4B4B4B4B4),
    .INIT_5D(256'hD6924A288811FDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_5E(256'hB68E46908E92D68E46B28E4A6C90B4D8D8D8D6D6D6D6D6D6D6D6D6D6D6D8F8F8),
    .INIT_5F(256'hD4B4B4D4D4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4F8B0484890),
    .INIT_60(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDDD666EF8D6D6),
    .INIT_61(256'hD6D6D6D6D6D6D6D6D6D8F8D870066875FFFFDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_62(256'hB4B4B4B4D88E246EB66A6C7092B6D4464A8E90B6D8D8D6D6D6D6D6D6D6D6D6D6),
    .INIT_63(256'hDDFF9926B2D8D6D6D6D6D6D6D6D6D6D6D6D6D6B4B4B4B4B4B4B4B4B4B4B4B4B4),
    .INIT_64(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_65(256'hD6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6F8F86E04EEFFFFDDDDDDDDDD),
    .INIT_66(256'hB4B4B4B4B4B4B4B4B4B4B4B4B6D646488E4A9092B6B468026A909090B2B4D4D6),
    .INIT_67(256'hDDDDDDDDDDDDDDDDDDFF5526D4D6D6D6D6D6D6D6D6D6D6D6D6D6D6B4B4B4B4B4),
    .INIT_68(256'h04CCFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_69(256'h908E8E8E8E8E90B2B2B2B2B4D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6F8B6),
    .INIT_6A(256'hD6D6D6D6B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4D8B02248906E6C6C6C6A8E),
    .INIT_6B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF3326D6D6D6D6D6D6D6D6D6D6D6D6),
    .INIT_6C(256'hF6F6F6D6D6D6D6D8D80411FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_6D(256'h484A6A6C8EB4D6F8D8F8F8D8D6D6D6D4B4B4B2B2D4F4F6F6F6F6F6F6F6F6F6F6),
    .INIT_6E(256'hD6D6D6F6D6D6D6D6D6D6D6D6B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4D648),
    .INIT_6F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF3326D6D6D6D6),
    .INIT_70(256'hF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F61AD62699FFDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_71(256'hB4B4B4B4B4B4D88E468EB4B6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6F616),
    .INIT_72(256'hDDFF3326D6D6D6D6F61818F6F6181AF6D6D6D6D6D6B4B4B4B4B4B4B4B4B4B4B4),
    .INIT_73(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_74(256'hD6D6D6D6D6D6D6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6D0F62ACEFFDDDDDD),
    .INIT_75(256'hB4B4B4B4B4B4B4B4B4B4B4B4B4B4B46A90D8B4B4D6D6D6D6D6D6D6D6D6D6D6D6),
    .INIT_76(256'hDDDDDDDDDDDDDDDDDDFF5526D6D6D6F81A90484848488E181AD6D6D6D6D6B4B4),
    .INIT_77(256'h48242604BBFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_78(256'hD6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6F6F6F6F6F6F6F6F6F6F6F6F6F6F8F8),
    .INIT_79(256'hB03AF8D6D6D6D6D6D6D6D6D4B4B4B4B4B4B4B4B4B4B6906CB6B4B4D6D6D6D6D6),
    .INIT_7A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF7726B4D6F61A6C66339977EE6604),
    .INIT_7B(256'hF6F6F6F6F6F6F618F624111057FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_7C(256'hB6B4B4D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6F6F6F6F6F6F6),
    .INIT_7D(256'h66FDFFFFFFFFFF11024A1A18D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D4B66C8E),
    .INIT_7E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFDB4670F81A6E),
    .INIT_7F(256'hD6D6D6F6F6F6F6F6F6F6F6F6F6F6F6F61A908AFFFFDDDDDDDDDDDDDDDDDDDDDD),
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
    .INITP_00(256'h000000004FFFFFFFFFE4FFC8000000000000004FFFFFFFFFE4FF980000000000),
    .INITP_01(256'h00000000000027FFFFFFFFF1FFF2000000000000002FFFFFFFFFF1FFE4000000),
    .INITP_02(256'hFCC000000000000007FFFFFFFFF8F7F88000000000000007FFFFFFFFF9FFF900),
    .INITP_03(256'hFFFFFF1A06000000003807FFFFFFFFFE0FFE2200000000018007FFFFFFFFFC67),
    .INITP_04(256'hFFFFFFFFFFE00F00000007E227FFFFFFFFFFFFFF8406000000000427FFFFFFFF),
    .INITP_05(256'hFFFFFFFFFFFFFFFE7FC00000FFFCCFFFFFFFFFFFFFFFF83F8000003FF92FFFFF),
    .INITP_06(256'hE43FFFFFFFFFFFFFFFFFFFFC001FFFFE9FFFFFFFFFFFFFFFFFFFE00007FFFCDF),
    .INITP_07(256'hFFFFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFE07FFFFFFFFFFFFFFFFFFFFE01FFFF),
    .INITP_08(256'h000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFF),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hD6D6D6D6D6B46A90B6B4D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6),
    .INIT_01(256'hDDDDFF8A4C1AD446BBFFDDDDDDDDFFFF9922281A18D6D6D6D6D6D6D6D6D6D6D6),
    .INIT_02(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_03(256'hD6D6D6D6D6D6D6D6D6D6D6D6F6F6F6F6F6F6F6F6F6F6F6F6F63A4AEEFFDDDDDD),
    .INIT_04(256'hD6D6D6D6D6D6D6D6D6D6D6D6D6B46AB2B4B4D6D6D6D6D6D6D6D6D6D6D6D6D6D6),
    .INIT_05(256'hDDDDDDDDDDDDDDDDDDDDFFEE061C6CEFFFDDDDDDDDDDDDDDFFDD22483AF8D6D6),
    .INIT_06(256'hF618D64899FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_07(256'hD6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6F6F6F6F6F6F6F6F6F6F6F6),
    .INIT_08(256'hDDFFBB026C3AF6D6D6D6D6D6D6D6D6D6D6D6D6D6D6B26CB2B4B4D6D6D6D6D6D6),
    .INIT_09(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF9924D46C55FFDDDDDDDDDDDDDD),
    .INIT_0A(256'hF6F6F6F6F6F6F6F6F6F61A4A0FFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_0B(256'hB4B4D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6F6F6F6),
    .INIT_0C(256'hFFDDDDDDFFDDDDDDDDDDFF7700B23AF6D6D6D6D6D6D6D6D6D6D6D6D6D6B46CB2),
    .INIT_0D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF8A2A8E77),
    .INIT_0E(256'hD6D6D6D6D6D6F6F6F6F6F6F6F6F6F6F6F6F61890CCFFDDDDDDDDDDDDDDDDDDDD),
    .INIT_0F(256'hD6D6D6D6D6B44A92B4B4D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6),
    .INIT_10(256'hDDDDDDFF77042477FFDDDDFFBBBBDDDDDDDDDDFF1102F61AF6D6D6D6D6D6D6D6),
    .INIT_11(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_12(256'hD6D6D6D6D6D6D6D6D6D6D6D6D6D6F6F6F6F6F6F6F6F6F6F6F6F6F8D48CDBFDDD),
    .INIT_13(256'h18F6F6D6D6D6D6D6D6D6D6D6D8B22692B6B4D6D6D6D6D6D6D6D6D6D6D6D6D6D6),
    .INIT_14(256'hDDDDDDDDDDDDDDDDDDDDDDDDFFEE00CEFFFFFFBBACBBFDDDDDDDDDFDFFAA02F8),
    .INIT_15(256'hF6F6F6D68CB9FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_16(256'hD6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6F6F6F6F6F6F6F6F6F6F6),
    .INIT_17(256'hDDDDDDDDFFFF68041818F6F6D6D6D6D6D6D6D6D6FA8E0090D6B4D6D6D6D6D6D6),
    .INIT_18(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF6800F0BB7702ACFFDDDD),
    .INIT_19(256'h18F8F6F6F6F6F6F6F6F6F6D68CB9FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_1A(256'hB6B4B4D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6F818),
    .INIT_1B(256'h020202ACFFFFDDDDDDDDDDDDDDFFFF6604F61AF6F6F618F6B2D6D6D8B48AAA48),
    .INIT_1C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFDD8A),
    .INIT_1D(256'hD6D6D6F8F8D6D4D4D4F6181A18F6F6F6F6F6F8D4ACDBFDDDDDDDDDDDDDDDDDDD),
    .INIT_1E(256'h90D8D8D80633FF2470D6B4D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6),
    .INIT_1F(256'hDDDDDDDDDDDDFFFF773599FFFFDDDDDDDDDDDDDDDDDDFFFF8802B21A18F6188C),
    .INIT_20(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_21(256'hD6D6D6D6D6D6D6D6D8F8D6704A48686A6848286CF61AF6F6F6F61890CCFFDDDD),
    .INIT_22(256'hFFEE024AF83CB224B4FAD808AAFFFFCC06D6B4B4D6D6D6D6D6D6D6D6D6D6D6D6),
    .INIT_23(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFDDDDDDDDDDDDDDDDDDDDDDDDFF),
    .INIT_24(256'hF6F61A6CEEFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_25(256'hD6D6D6D6D6D6D6D6D6D6D6D6D6D6F8F8B44C2688EE7599BBBB771188048E1AF6),
    .INIT_26(256'hDDDDDDDDDDDDDDDDFFFF7766048E4646F89206CCFFFFFFDD444AD8B690B2F8D6),
    .INIT_27(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_28(256'hFFFFFFFF55008E1AF6F61A4833FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_29(256'h77024CDA6C46D8D6D6D6D6D6D6D6D6D6D6D6D6D6F8D8922A26AA77FFFFFFFFFF),
    .INIT_2A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFF33466626284633FFFFDDDDFF),
    .INIT_2B(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2C(256'hB9FFFFDDDDDDDDDDDDDDDDDDFF5502D41818B268DDFDDDDDDDDDDDDDDDDDDDDD),
    .INIT_2D(256'hEEDDFFDDDDDDDDDDFF55002A6C008EF8D6D6D6D6D6D6D6D6D6D8D8B44E0646CC),
    .INIT_2E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDFFFF1324),
    .INIT_2F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_30(256'h924E28246811DBFFFFDDDDDDDDDDDDDDDDDDDDFDFFFF886A1A1A2633FFDDDDDD),
    .INIT_31(256'hDDDDDDDDDDFFBBBBFFFFDDDDDDDDDDDDDDFF9946028826B4D8B6D6D6D6D6D6B4),
    .INIT_32(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_33(256'h3C4A8AFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_34(256'h9270706E4C4C28264668CC77FFFFFFDDDDDDDDDDDDDDDDDDDDDDDDDD77FF1126),
    .INIT_35(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFDDDDDDDDDDDDDDDDDDDDFFFD13BB8806),
    .INIT_36(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_37(256'hDDDDFF8AACFFCE284A68DDFFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_38(256'hDDDDDDFFFFFF552446686868888ACC3399DDFFFFDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_39(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3A(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3B(256'hDDDDDDDDDDDDDDDDDDDDFF4646CE0204CCFFFFDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3C(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDFDDBBBBBBBDDDDFFFFFFFFDDDDDDDDDDDDDD),
    .INIT_3D(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3E(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD),
    .INIT_3F(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF994824CE99FFFFDDDDDDDDDDDD),
    .INIT_40(256'hDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFFFFFFFDDDDDDD),
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
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "peashooter_big.mem" *) 
(* C_INIT_FILE_NAME = "peashooter_big.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
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
