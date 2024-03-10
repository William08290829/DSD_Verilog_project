onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib sun_opt

do {wave.do}

view wave
view structure
view signals

do {sun.udo}

run -all

quit -force
