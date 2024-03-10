onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib peashooter_big_opt

do {wave.do}

view wave
view structure
view signals

do {peashooter_big.udo}

run -all

quit -force
