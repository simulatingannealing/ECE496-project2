vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_4
vlib riviera/zynq_ultra_ps_e_vip_v1_0_4
vlib riviera/smartconnect_v1_0
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_3
vlib riviera/lib_fifo_v1_0_12
vlib riviera/axi_fifo_mm_s_v4_2_0
vlib riviera/axi_jtag_v1_0_0
vlib riviera/bsip_v1_1_0
vlib riviera/gigantic_mux
vlib riviera/xlconstant_v1_1_5

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 riviera/axi_vip_v1_1_4
vmap zynq_ultra_ps_e_vip_v1_0_4 riviera/zynq_ultra_ps_e_vip_v1_0_4
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_3 riviera/fifo_generator_v13_2_3
vmap lib_fifo_v1_0_12 riviera/lib_fifo_v1_0_12
vmap axi_fifo_mm_s_v4_2_0 riviera/axi_fifo_mm_s_v4_2_0
vmap axi_jtag_v1_0_0 riviera/axi_jtag_v1_0_0
vmap bsip_v1_1_0 riviera/bsip_v1_1_0
vmap gigantic_mux riviera/gigantic_mux
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5

vlog -work xilinx_vip  -sv2k12 "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"/opt/mnt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/mnt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/mnt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/mnt/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/alu.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/axistream_forwarder.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/axistream_packetfilt.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/axistream_snooper.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/bhand.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/bpfcpu.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/circular_buffer.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/controller.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/cpu_adapter.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/cpuqueue.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/datapath.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/dp_bram.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/fwd_adapter.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/fwd_arb.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/fwd_width_adapter.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/fwdqueue.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/inst_mem.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/mux_tree.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/mux_tree_node.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/muxes.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/muxselinvert.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/p3.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/p3ctrl.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/p_ng.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/packet_status.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/packetfilter_core.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/parallel_cores.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/regfile.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/regstrb2mem.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/sn_adapter.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/sn_width_adapter.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/snoop_arb.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/snqueue.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/stage0.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/stage0_point_5.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/stage1.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/stage2.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/tag_gen.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/tag_tree.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/tree_node.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/packet_filter_regs_pkg.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src/packet_filter_regs.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_axistream_packetfilt_0_0/sim/capstone_axistream_packetfilt_0_0.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_4  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim/capstone_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_cf25_arinsw_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_cf25_rinsw_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_cf25_awinsw_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_cf25_winsw_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_cf25_binsw_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_cf25_aroutsw_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_cf25_routsw_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_cf25_awoutsw_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_cf25_woutsw_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_cf25_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_cf25_arni_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_cf25_rni_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_cf25_awni_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_13/sim/bd_cf25_wni_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_14/sim/bd_cf25_bni_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_15/sim/bd_cf25_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_16/sim/bd_cf25_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_17/sim/bd_cf25_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_18/sim/bd_cf25_s00a2s_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_19/sim/bd_cf25_sarn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_20/sim/bd_cf25_srn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_21/sim/bd_cf25_sawn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_22/sim/bd_cf25_swn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_23/sim/bd_cf25_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_24/sim/bd_cf25_m00s2a_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_25/sim/bd_cf25_m00arn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_26/sim/bd_cf25_m00rn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_27/sim/bd_cf25_m00awn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_28/sim/bd_cf25_m00wn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_29/sim/bd_cf25_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_30/sim/bd_cf25_m00e_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_31/sim/bd_cf25_m01s2a_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_32/sim/bd_cf25_m01arn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_33/sim/bd_cf25_m01rn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_34/sim/bd_cf25_m01awn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_35/sim/bd_cf25_m01wn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_36/sim/bd_cf25_m01bn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_37/sim/bd_cf25_m01e_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_38/sim/bd_cf25_m02s2a_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_39/sim/bd_cf25_m02arn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_40/sim/bd_cf25_m02rn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_41/sim/bd_cf25_m02awn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_42/sim/bd_cf25_m02wn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_43/sim/bd_cf25_m02bn_0.sv" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/ip/ip_44/sim/bd_cf25_m02e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/bd_0/sim/bd_cf25.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_smartconnect_0_0/sim/capstone_smartconnect_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_12 -93 \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_fifo_mm_s_v4_2_0 -93 \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a86d/hdl/axi_fifo_mm_s_v4_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_axi_fifo_mm_s_0_0/sim/capstone_axi_fifo_mm_s_0_0.vhd" \

vlog -work axi_jtag_v1_0_0  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/679d/hdl/axi_jtag_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_debug_bridge_0_0/bd_0/ip/ip_0/sim/bd_43ca_axi_jtag_0.v" \

vlog -work bsip_v1_1_0  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ee0e/hdl/bsip_v1_1_rfs.v" \

vcom -work bsip_v1_1_0 -93 \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ee0e/hdl/bsip_v1_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_debug_bridge_0_0/bd_0/ip/ip_1/sim/bd_43ca_bsip_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_debug_bridge_0_0/bd_0/sim/bd_43ca.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_debug_bridge_0_0/sim/capstone_debug_bridge_0_0.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_system_ila_0_0/bd_0/sim/bd_03ec.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_system_ila_0_0/bd_0/ip/ip_0/sim/bd_03ec_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_system_ila_0_0/bd_0/ip/ip_1/bd_03ec_g_inst_0_gigantic_mux.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_system_ila_0_0/bd_0/ip/ip_1/sim/bd_03ec_g_inst_0.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_system_ila_0_0/sim/capstone_system_ila_0_0.v" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/a5cf/src" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/ec67/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/00a3/hdl" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/979d/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/b2d0/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_zynq_ultra_ps_e_0_0" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/1b7e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/122e/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/7d3c/hdl/verilog" "+incdir+../../../../capstone.srcs/sources_1/bd/capstone/ipshared/c45e/hdl/verilog" "+incdir+/opt/mnt/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_xlconstant_0_0/sim/capstone_xlconstant_0_0.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/sim/capstone.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/d354/hdl/input_v1_0_M00_AXIS.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ipshared/d354/hdl/input_v1_0.v" \
"../../../../capstone.srcs/sources_1/bd/capstone/ip/capstone_input_0_0/sim/capstone_input_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

