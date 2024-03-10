onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib zombie_opt

do {wave.do}

view wave
view structure
view signals

do {zombie.udo}

run -all

quit -force
