onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dcm_25M_opt

do {wave.do}

view wave
view structure
view signals

do {dcm_25M.udo}

run -all

quit -force
