onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib buckethead_zombie_opt

do {wave.do}

view wave
view structure
view signals

do {buckethead_zombie.udo}

run -all

quit -force
