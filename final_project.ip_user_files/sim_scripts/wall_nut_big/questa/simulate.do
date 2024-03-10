onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib wall_nut_big_opt

do {wave.do}

view wave
view structure
view signals

do {wall_nut_big.udo}

run -all

quit -force
