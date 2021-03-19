onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+capstone -L xilinx_vip -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_4 -L zynq_ultra_ps_e_vip_v1_0_4 -L smartconnect_v1_0 -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_3 -L lib_fifo_v1_0_12 -L axi_fifo_mm_s_v4_2_0 -L axi_jtag_v1_0_0 -L bsip_v1_1_0 -L gigantic_mux -L xlconstant_v1_1_5 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.capstone xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {capstone.udo}

run -all

endsim

quit -force
