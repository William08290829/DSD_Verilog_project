-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../final_project.srcs/sources_1/ip/dcm_25M/dcm_25M_clk_wiz.v" \
  "../../../../final_project.srcs/sources_1/ip/dcm_25M/dcm_25M.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

