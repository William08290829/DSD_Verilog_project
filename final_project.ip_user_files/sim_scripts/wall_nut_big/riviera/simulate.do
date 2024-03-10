onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+wall_nut_big -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.wall_nut_big xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {wall_nut_big.udo}

run -all

endsim

quit -force
