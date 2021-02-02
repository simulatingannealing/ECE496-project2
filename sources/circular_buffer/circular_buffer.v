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
    output wire buffer_TVALID_out,
    input wire buffer_TREADY_out,

    //from memory table
    input wire [1:0] packet_status,

    //to memory table
    output reg [TAG_WIDTH-1:0] reorder_tag_out
);

    localparam ADDR_WIDTH = $clog2(MAX_TDATA_PER_PACKET);

    //reg [DATA_WIDTH-1:0] circular_buffer_data [CIRCULAR_BUFFER_SIZE-1:0];
    reg [MAX_TDATA_PER_PACKET-1:0] circular_buffer_valid [CIRCULAR_BUFFER_SIZE-1:0];
    reg [TAG_WIDTH-1:0] buffer_counter;
    reg refresh_buffer;
    reg [ADDR_WIDTH-1:0] TDATA_counter [CIRCULAR_BUFFER_SIZE-1:0];
    reg [ADDR_WIDTH-1:0] TVALID_count;

    //ram param for packets
    reg [CIRCULAR_BUFFER_SIZE-1:0] wr_en;
    reg [CIRCULAR_BUFFER_SIZE-1:0] rd_en;
    reg [CIRCULAR_BUFFER_SIZE-1:0] clock_en;
    reg [ADDR_WIDTH-1:0] wr_addr [CIRCULAR_BUFFER_SIZE-1:0];
    reg [DATA_WIDTH-1:0] wr_data [CIRCULAR_BUFFER_SIZE-1:0];
    reg [ADDR_WIDTH-1:0] rd_addr [CIRCULAR_BUFFER_SIZE-1:0];
    reg [DATA_WIDTH-1:0] rd_data [CIRCULAR_BUFFER_SIZE-1:0];

    wire [7:0] TDATA_current;
    assign TDATA_current = TDATA_counter[reorder_tag_in];

    // Just for viewing arrays in GTKWave
    reg [MAX_TDATA_PER_PACKET*CIRCULAR_BUFFER_SIZE-1:0] circular_buffer_valid_dump;
    reg [ADDR_WIDTH*CIRCULAR_BUFFER_SIZE-1:0] TDATA_counter_dump;
    reg [ADDR_WIDTH*CIRCULAR_BUFFER_SIZE-1:0] wr_addr_dump;
    reg [DATA_WIDTH*CIRCULAR_BUFFER_SIZE-1:0] wr_data_dump;
    reg [ADDR_WIDTH*CIRCULAR_BUFFER_SIZE-1:0] rd_addr_dump;
    reg [DATA_WIDTH*CIRCULAR_BUFFER_SIZE-1:0] rd_data_dump;
    generate
        genvar i_gen;
        for (i_gen = 0; i_gen < CIRCULAR_BUFFER_SIZE; i_gen = i_gen + 1) begin
            assign circular_buffer_valid_dump[
                i_gen*MAX_TDATA_PER_PACKET +: MAX_TDATA_PER_PACKET]
                = circular_buffer_valid[i_gen];
            assign TDATA_counter_dump[i_gen*ADDR_WIDTH +: ADDR_WIDTH] = TDATA_counter[i_gen];
            assign wr_addr_dump[i_gen*ADDR_WIDTH +: ADDR_WIDTH] = wr_addr[i_gen];
            assign wr_data_dump[i_gen*DATA_WIDTH +: DATA_WIDTH] = wr_data[i_gen];
            assign rd_addr_dump[i_gen*ADDR_WIDTH +: ADDR_WIDTH] = rd_addr[i_gen];
            assign rd_data_dump[i_gen*DATA_WIDTH +: DATA_WIDTH] = rd_data[i_gen];
        end
    endgenerate

    //initialization or testing
    integer i;
    initial begin
        for (i=0; i<CIRCULAR_BUFFER_SIZE; i=i+1) begin
            //circular_buffer_data[i] <= 64'b0;
            wr_en[i] <= 0;
            rd_en[i] <= 0;
            wr_addr[i] <= 0;
            wr_data[i] <= 0;
            rd_addr[i] <= 0;
            circular_buffer_valid[i] <= 0;
            TDATA_counter[i] <= 0;
            TVALID_count <= 0;
        end
        reorder_tag_out <= 6'b0;
        buffer_TLAST_out <= 0;
        buffer_counter <= 0;
        refresh_buffer <= 0;
    end

    //a counter to store the packet datas and tags
    always @(posedge clk) begin
        if (rst) begin
            //initialization of the buffer
            buffer_counter <= 0;
            refresh_buffer <= 0;
            for (i=0; i<CIRCULAR_BUFFER_SIZE; i=i+1) begin
                //circular_buffer_data[i] <= 64'b0;
                wr_en[i] <= 0;
                rd_en[i] <= 0;
                wr_addr[i] <= 0;
                wr_data[i] <= 0;
                rd_addr[i] <= 0;
                circular_buffer_valid[i] <= 0;
                TDATA_counter[i] <= 0;
            end
        end else begin
            
            // By default, disable all write enables
            // TODO - check if this is right
            wr_en <= 0;

            if(buffer_counter != CIRCULAR_BUFFER_SIZE-1) begin
                //load the packets into memory
                if(buffer_TLAST) begin
                    //end of packet
                    buffer_counter <= buffer_counter+1;
                end
                TDATA_counter[reorder_tag_in] <= TDATA_counter[reorder_tag_in] + 1;
                wr_en[reorder_tag_in] <= 1;
                wr_addr[reorder_tag_in] <= wr_addr[reorder_tag_in] + 1;
                wr_data[reorder_tag_in] <= buffer_TDATA;
                circular_buffer_valid[reorder_tag_in][TDATA_current] <= buffer_TVALID;
            end else if (refresh_buffer) begin
                buffer_counter <= 0;
                refresh_buffer <= 0;
            end
        end 
    end

    //a counter for the pointer when status table gets back to us
    //output when packet is accepted & AXI ready 
    always @(posedge clk) begin
        if(rst) begin
            reorder_tag_out <= 0;
            buffer_TLAST_out <= 0;
            TVALID_count <= 0;
        end else if(CIRCULAR_BUFFER_SIZE-1==reorder_tag_out) begin
            reorder_tag_out <= 0;
            // TODO - is it legal to assign from two always blocks
            refresh_buffer <= 1;
        end else begin
            if(packet_status == 2'b11) begin
                if (buffer_TREADY_out) begin
                    if(TDATA_counter[reorder_tag_out]!=0) begin
                        buffer_TLAST_out <= 0;
                        rd_addr[reorder_tag_out]<=rd_addr[reorder_tag_out]+1;
                        TDATA_counter[reorder_tag_out]<=TDATA_counter[reorder_tag_out]-1;
                        TVALID_count <= TVALID_count + 1;
                    end else begin
                        buffer_TLAST_out <= 1;
                        reorder_tag_out<=reorder_tag_out+1;
                        TVALID_count <= 0;
                    end
                end
            end else if (packet_status == 2'b01) begin //packet rejected, skip
                circular_buffer_valid[reorder_tag_out] <= 0;
                reorder_tag_out <= reorder_tag_out + 1;
            end
        end
    end

    assign buffer_TDATA_out = rd_data[reorder_tag_out];
    assign buffer_TVALID_out = circular_buffer_valid[reorder_tag_out][TVALID_count];
    assign buffer_TREADY = (buffer_counter != CIRCULAR_BUFFER_SIZE-1)?1:0;

    //ram
    genvar j;
    generate
        for (j=0; j<CIRCULAR_BUFFER_SIZE; j=j+1) begin
            sdpram # (.ADDR_WIDTH(ADDR_WIDTH),.DATA_WIDTH(DATA_WIDTH)) myram (
                      .clk(clk),
                      .en(1'b1),
                      .wr_addr(wr_addr[j]),
                      .wr_data(wr_data[j]),
                      .wr_en(wr_en[j]),
                      .rd_addr(rd_addr[j]),
                      .rd_data(rd_data[j])
                     );
        end
    endgenerate
endmodule
