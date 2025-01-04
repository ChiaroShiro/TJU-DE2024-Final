onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+music_rom_1 -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -O5 xil_defaultlib.music_rom_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {music_rom_1.udo}

run -all

endsim

quit -force
