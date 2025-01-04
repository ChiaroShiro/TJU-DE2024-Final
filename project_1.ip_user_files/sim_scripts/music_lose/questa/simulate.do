onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib music_lose_opt

do {wave.do}

view wave
view structure
view signals

do {music_lose.udo}

run -all

quit -force
