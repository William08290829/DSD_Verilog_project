onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib peashooter_opt

do {wave.do}

view wave
view structure
view signals

do {peashooter.udo}

run -all

quit -force
