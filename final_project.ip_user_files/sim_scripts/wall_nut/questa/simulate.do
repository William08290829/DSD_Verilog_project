onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib wall_nut_opt

do {wave.do}

view wave
view structure
view signals

do {wall_nut.udo}

run -all

quit -force
