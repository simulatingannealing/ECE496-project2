onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib capstone_opt

do {wave.do}

view wave
view structure
view signals

do {capstone.udo}

run -all

quit -force
