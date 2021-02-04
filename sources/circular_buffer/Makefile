MODULE := circular_buffer
MODULE_CAPS := CIRCULAR_BUFFER
# VERILOG_INCLUDE = -Isn_width_adapter/

default:	$(MODULE).vcd

$(MODULE).vcd:	$(MODULE).vvp
	vvp $(MODULE).vvp

$(MODULE).vvp:	$(MODULE).v $(MODULE)_tb.v packet_1.mem packet_2.mem packet_3.mem
	iverilog -Wall -Wno-timescale -g2012 $(VERILOG_INCLUDE) -o $(MODULE).vvp $(MODULE)_tb.v $(MODULE).v ../parallel_cores/packetfilter_core/inst_mem/inst_mem.v

open:	$(MODULE).vcd
	gtkwave $(MODULE).vcd --autosavename &

clean:
	rm -rf $(MODULE).vvp
	rm -rf $(MODULE).vcd

force:
	touch $(MODULE)_tb.v
	make
