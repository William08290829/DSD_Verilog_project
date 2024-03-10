onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib pea_opt

do {wave.do}

view wave
view structure
view signals

do {pea.udo}

run -all

quit -force
