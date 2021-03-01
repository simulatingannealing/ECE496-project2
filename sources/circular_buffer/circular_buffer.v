`timescale 1ns / 1ps

// `include "../parallel_cores/packetfilter_core/inst_mem/inst_mem.v"

module circular_buffer #(
    parameter TAG_WIDTH = 6,
    parameter CIRCULAR_BUFFER_SIZE = 50,
    parameter DATA_WIDTH = 64,
    // Max number of clock cycles of data for one packet
    // Default assumes max 1500 bytes per packet, 32-bit AXI data width
    parameter MAX_TDATA_PER_PACKET=375
)(
    input wire clk,
    input wire rst,

    //from forwarder
    input wire [DATA_WIDTH-1:0] in_TDATA,
    input wire [TAG_WIDTH-1:0] in_reorder_tag,
    input wire [DATA_WIDTH/8-1:0] in_TKEEP,  // unused
    input wire in_TLAST,
    input wire in_TVALID,
    output wire in_TREADY,

    //to AXI output of packet filter IP
    output wire [DATA_WIDTH-1:0] out_TDATA,
    output reg [TAG_WIDTH-1:0] out_reorder_tag, // also goes to memory table
    output wire [DATA_WIDTH/8-1:0] out_TKEEP,
    output reg out_TLAST,
    output reg out_TVALID,
    input wire out_TREADY,

    //from memory table
    input wire [1:0] packet_status
);

    localparam ADDR_WIDTH = $clog2(MAX_TDATA_PER_PACKET);

    reg [CIRCULAR_BUFFER_SIZE-1:0] packet_valid;
    reg [ADDR_WIDTH-1:0] packet_word_count [CIRCULAR_BUFFER_SIZE-1:0];
    reg [ADDR_WIDTH-1:0] packet_output_word_idx;

    //ram param for packets
    reg wr_en_global;
    reg [CIRCULAR_BUFFER_SIZE-1:0] wr_en;
    reg [ADDR_WIDTH-1:0] wr_addr;
    reg [DATA_WIDTH-1:0] wr_data;
    reg [ADDR_WIDTH-1:0] rd_addr;
    reg [DATA_WIDTH-1:0] rd_data [CIRCULAR_BUFFER_SIZE-1:0];

    // If this is set to 1, delay for one cycle before outputting a new packet
    reg new_output_packet_delay;

    // These 1-D signals are just for viewing 2-D signals in GTKWave
    reg [ADDR_WIDTH*CIRCULAR_BUFFER_SIZE-1:0] packet_word_count_dump;
    reg [DATA_WIDTH*CIRCULAR_BUFFER_SIZE-1:0] rd_data_dump;
    generate
        genvar i_gen;
        for (i_gen = 0; i_gen < CIRCULAR_BUFFER_SIZE; i_gen = i_gen + 1) begin
            assign packet_word_count_dump[i_gen*ADDR_WIDTH +: ADDR_WIDTH] = packet_word_count[i_gen];
            assign rd_data_dump[i_gen*DATA_WIDTH +: DATA_WIDTH] = rd_data[i_gen];
        end
    endgenerate

    //initialization or testing
    integer i;
    initial begin
        packet_valid <= 0;
        packet_output_word_idx <= 0;
        for (i=0; i<CIRCULAR_BUFFER_SIZE; i=i+1) begin
            packet_word_count[i] <= 0;
        end
        out_reorder_tag <= 6'b0;
        new_output_packet_delay <= 0;
    end

    // input
    //a counter to store the packet datas and tags
    always @(posedge clk) begin
        if (rst) begin
            //initialization of the buffer
            packet_valid <= 0;
            
            for (i=0; i<CIRCULAR_BUFFER_SIZE; i=i+1) begin
                packet_word_count[i] <= 0;
            end
        end else begin
            // If the buffer is done outputting a packet, invalidate that packet data in the buffer
            // TODO - does the buffer need to notify the packet status table to set the status back to pending?
            if (out_TLAST) begin
                packet_valid[out_reorder_tag] <= 1'b0;
                packet_word_count[out_reorder_tag] <= 0;
            end

            if(in_TVALID && in_TREADY) begin
                //load the packets into memory
                if(in_TLAST) begin
                    //end of packet
                    packet_valid[in_reorder_tag] <= 1'b1;
                end
                packet_word_count[in_reorder_tag] <= packet_word_count[in_reorder_tag] + 1;
            end
        end
    end

    always @(*) begin
        wr_en_global = 0;
        wr_data = 0;
        
        if (!rst) begin
            if(in_TVALID && in_TREADY) begin
                wr_en_global = 1;
                wr_data = in_TDATA;
            end
        end

    end

    assign wr_addr = packet_word_count[in_reorder_tag];

    //a counter for the pointer when status table gets back to us
    //output when packet is accepted & AXI ready 
    always @(posedge clk) begin
        if(rst) begin
            out_reorder_tag <= 0;
            packet_output_word_idx <= 0;
            new_output_packet_delay <= 0;
        end else begin
            if(packet_status == 2'b11 && packet_valid[out_reorder_tag] && !new_output_packet_delay) begin
                if (out_TREADY) begin
                    if(packet_output_word_idx + 1 < packet_word_count[out_reorder_tag]) begin
                        packet_output_word_idx <= packet_output_word_idx + 1;
                    end else begin
                        out_reorder_tag <= (out_reorder_tag == CIRCULAR_BUFFER_SIZE-1) ? 0 : out_reorder_tag+1;
                        packet_output_word_idx <= 0;
                        new_output_packet_delay <= 1;
                    end
                end
            end else if (packet_status == 2'b01) begin //packet rejected, skip
                out_reorder_tag <= (out_reorder_tag == CIRCULAR_BUFFER_SIZE-1) ? 0 : out_reorder_tag+1;
            end

            // This signal should only be 1 for one cycle
            if (new_output_packet_delay) begin
                new_output_packet_delay <= 0;
            end
        end
    end

    assign out_TVALID =
        packet_status == 2'b11 &&
        packet_valid[out_reorder_tag] &&
        !new_output_packet_delay &&
        ((packet_output_word_idx < packet_word_count[out_reorder_tag]) || out_TLAST);
    // Assign TKEEP so that all bits are the same as the TVALID bit
    assign out_TKEEP = { (DATA_WIDTH/8) {out_TVALID} };

    assign out_TLAST =
        (packet_status == 2'b11 && packet_valid[out_reorder_tag]) &&
        out_TREADY &&
        (packet_output_word_idx + 1 == packet_word_count[out_reorder_tag]);

    // If the data word presented on the AXI output during the current cycle will be accepted,
    // need to fetch the next data word (add 1 to the read address) so it will be ready next cycle
    assign rd_addr = packet_output_word_idx + (out_TVALID && out_TREADY);

    assign out_TDATA = rd_data[out_reorder_tag];
    assign in_TREADY = !packet_valid[in_reorder_tag];

    //ram
    genvar j;
    generate
        for (j=0; j<CIRCULAR_BUFFER_SIZE; j=j+1) begin
            assign wr_en[j] = wr_en_global && (in_reorder_tag == j);

            sdpram # (.ADDR_WIDTH(ADDR_WIDTH),.DATA_WIDTH(DATA_WIDTH)) myram (
                      .clk(clk),
                      .en(1'b1),
                      .wr_addr(wr_addr),
                      .wr_data(wr_data),
                      .wr_en(wr_en[j]),
                      .rd_addr(rd_addr),
                      .rd_data(rd_data[j])
                     );
        end
    endgenerate
endmodule
