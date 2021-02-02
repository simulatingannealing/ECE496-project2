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
    input wire [DATA_WIDTH-1:0] buffer_TDATA,
    input wire [TAG_WIDTH-1:0] reorder_tag_in,
    input wire buffer_TLAST,
    input wire buffer_TVALID,
    output wire buffer_TREADY,

    //to AXI output of packet filter IP
    output wire [DATA_WIDTH-1:0] buffer_TDATA_out,
    output reg buffer_TLAST_out,
    output reg buffer_TVALID_out,
    input wire buffer_TREADY_out,

    //from memory table
    input wire [1:0] packet_status,

    //to memory table
    output reg [TAG_WIDTH-1:0] reorder_tag_out
);

    localparam ADDR_WIDTH = $clog2(MAX_TDATA_PER_PACKET);

    //reg [DATA_WIDTH-1:0] circular_buffer_data [CIRCULAR_BUFFER_SIZE-1:0];
    reg [CIRCULAR_BUFFER_SIZE-1:0] buffer_packet_valid;
    reg refresh_buffer;
    reg [ADDR_WIDTH-1:0] buffer_packet_word_count [CIRCULAR_BUFFER_SIZE-1:0];
    reg [ADDR_WIDTH-1:0] packet_output_word_idx;

    //ram param for packets
    reg wr_en_global;
    reg [CIRCULAR_BUFFER_SIZE-1:0] wr_en;
    reg [ADDR_WIDTH-1:0] wr_addr;
    reg [DATA_WIDTH-1:0] wr_data;
    reg [ADDR_WIDTH-1:0] rd_addr;
    reg [DATA_WIDTH-1:0] rd_data [CIRCULAR_BUFFER_SIZE-1:0];

    wire [7:0] TDATA_current;
    assign TDATA_current = buffer_packet_word_count[reorder_tag_in];

    // Just for viewing arrays in GTKWave
    reg [ADDR_WIDTH*CIRCULAR_BUFFER_SIZE-1:0] buffer_packet_word_count_dump;
    reg [DATA_WIDTH*CIRCULAR_BUFFER_SIZE-1:0] rd_data_dump;
    generate
        genvar i_gen;
        for (i_gen = 0; i_gen < CIRCULAR_BUFFER_SIZE; i_gen = i_gen + 1) begin
            assign buffer_packet_word_count_dump[i_gen*ADDR_WIDTH +: ADDR_WIDTH] = buffer_packet_word_count[i_gen];
            assign rd_data_dump[i_gen*DATA_WIDTH +: DATA_WIDTH] = rd_data[i_gen];
        end
    endgenerate

    //initialization or testing
    integer i;
    initial begin
        buffer_packet_valid <= 0;
        packet_output_word_idx <= 0;
        for (i=0; i<CIRCULAR_BUFFER_SIZE; i=i+1) begin
            //circular_buffer_data[i] <= 64'b0;
            buffer_packet_word_count[i] <= 0;
        end
        reorder_tag_out <= 6'b0;
    end

    // input
    //a counter to store the packet datas and tags
    always @(posedge clk) begin
        if (rst) begin
            //initialization of the buffer
            buffer_packet_valid <= 0;
            
            for (i=0; i<CIRCULAR_BUFFER_SIZE; i=i+1) begin
                //circular_buffer_data[i] <= 64'b0;
                buffer_packet_word_count[i] <= 0;
            end
        end else begin
            if(buffer_TVALID && buffer_TREADY) begin
                //load the packets into memory
                if(buffer_TLAST) begin
                    //end of packet
                    // TODO - set something for which word to write to next?
                    buffer_packet_valid[reorder_tag_in] <= 1'b1;
                end
                buffer_packet_word_count[reorder_tag_in] <= buffer_packet_word_count[reorder_tag_in] + 1;
            end
        end 

        // If the buffer is done outputting a packet, invalidate that packet data in the buffer
        if (buffer_TLAST_out) begin
            buffer_packet_valid[reorder_tag_out] <= 0;
        end
    end

    always @(*) begin
        wr_en_global = 0;
        wr_data = 0;
        
        if (!rst) begin
            if(buffer_TVALID && buffer_TREADY) begin
                wr_en_global = 1;
                wr_data = buffer_TDATA;
            end
        end

    end

    assign wr_addr = buffer_packet_word_count[reorder_tag_in];

    //a counter for the pointer when status table gets back to us
    //output when packet is accepted & AXI ready 
    always @(posedge clk) begin
        if(rst) begin
            reorder_tag_out <= 0;
            packet_output_word_idx <= 0;
        end else if(CIRCULAR_BUFFER_SIZE==reorder_tag_out) begin
            reorder_tag_out <= 0;
        end else begin
            buffer_TVALID_out <= 0;
            if(packet_status == 2'b11 && buffer_packet_valid[reorder_tag_out]) begin
                buffer_TVALID_out <= 1;
                if (buffer_TREADY_out) begin
                    if(packet_output_word_idx < buffer_packet_word_count[reorder_tag_out]) begin
                        packet_output_word_idx <= packet_output_word_idx + 1;
                    end else begin
                        reorder_tag_out<=reorder_tag_out+1;
                        packet_output_word_idx <= 0;
                    end
                end
            end else if (packet_status == 2'b01) begin //packet rejected, skip
                reorder_tag_out <= reorder_tag_out + 1;
            end
        end
    end

    // TODO - simplify?
    // TODO - is the ready condition necessary? can TLAST be valid for multiple cycles?
    assign buffer_TLAST_out =
        (packet_status == 2'b11 && buffer_packet_valid[reorder_tag_out]) &&
        buffer_TREADY_out &&
        (packet_output_word_idx == buffer_packet_word_count[reorder_tag_out]);

    assign rd_addr = packet_output_word_idx;

    assign buffer_TDATA_out = rd_data[reorder_tag_out];
    assign refresh_buffer = (CIRCULAR_BUFFER_SIZE==reorder_tag_out);
    assign buffer_TREADY = !refresh_buffer && !buffer_packet_valid[reorder_tag_in];

    //ram
    genvar j;
    generate
        for (j=0; j<CIRCULAR_BUFFER_SIZE; j=j+1) begin
            assign wr_en[j] = wr_en_global && (reorder_tag_in == j);

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
