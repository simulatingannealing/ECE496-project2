`timescale 1ns / 1ps

// `include "../parallel_cores/packetfilter_core/inst_mem/inst_mem.v"

module circular_buffer #(
    parameter TAG_WIDTH = 6,
    parameter CIRCULAR_BUFFER_SIZE = 50,
    parameter DATA_WIDTH = 64,
    parameter ADDR_WIDTH = 10,
    parameter MAX_TDATA_PER_PACKET=256
)(
    input wire clk,
    input wire rst,

    //from forwarder
    input wire [DATA_WIDTH-1:0] buffer_TDATA,
    input wire [TAG_WIDTH-1:0] reorder_tag_in,
    input wire buffer_TLAST,
    input wire buffer_TVALID,
    output wire buffer_TREADY,

    //from memory table
    input wire [1:0] packet_status,

    //to AXI output of packet filter IP
    output wire [DATA_WIDTH-1:0] buffer_TDATA_out,
    output wire buffer_TLAST_out,
    output wire buffer_TVALID_out,
    input wire buffer_TREADY_out,

    //to memory table
    output wire [TAG_WIDTH-1:0] reorder_tag_out,

    //to forwarder
    output wire fwd_rdy
);

    reg [TAG_WIDTH-1:0] out_pointer;
    //reg [DATA_WIDTH-1:0] circular_buffer_data [CIRCULAR_BUFFER_SIZE-1:0];
    reg [MAX_TDATA_PER_PACKET-1:0] circular_buffer_valid [CIRCULAR_BUFFER_SIZE-1:0];
    reg [TAG_WIDTH-1:0] buffer_counter;
    reg refresh_buffer;
    reg [7:0] TDATA_counter [CIRCULAR_BUFFER_SIZE-1:0]; //max 256 tdatas in one packet
    reg TLAST_reg;
    reg [7:0] TVALID_count;

    //ram param for packets
    reg [CIRCULAR_BUFFER_SIZE-1:0] wr_en;
    reg [CIRCULAR_BUFFER_SIZE-1:0] rd_en;
    reg [CIRCULAR_BUFFER_SIZE-1:0] clock_en;
    reg [ADDR_WIDTH-1:0] wr_addr [CIRCULAR_BUFFER_SIZE-1:0];
    reg [DATA_WIDTH-1:0] wr_data [CIRCULAR_BUFFER_SIZE-1:0];
    reg [ADDR_WIDTH-1:0] rd_addr [CIRCULAR_BUFFER_SIZE-1:0];
    reg [DATA_WIDTH-1:0] rd_data [CIRCULAR_BUFFER_SIZE-1:0];

    wire [7:0] TDATA_CURRENT;
    assign TDATA_CURRENT = TDATA_counter[reorder_tag_in];

    //initialization or testing
    integer i;
    initial begin
        for (i=0; i<CIRCULAR_BUFFER_SIZE; i=i+1) begin
            //circular_buffer_data[i] <= 64'b0;
            wr_en[i] <= 1;
            rd_en[i] <= 0;
            wr_addr[i] <= 0;
            wr_data[i] <= 0;
            rd_addr[i] <= 0;
            circular_buffer_valid[i] <= 0;
            TDATA_counter[i] <= 0;
            TVALID_count <= 0;
        end
        out_pointer <= 6'b0;
        buffer_counter <= 0;
    end

    //a counter to store the packet datas and tags
    always @(posedge clk) begin
        if (rst) begin
            //initialization of the buffer
            buffer_counter <= 0;
            for (i=0; i<CIRCULAR_BUFFER_SIZE; i=i+1) begin
                //circular_buffer_data[i] <= 64'b0;
                wr_en[i] <= 1;
                rd_en[i] <= 0;
                wr_addr[i] <= 0;
                wr_data[i] <= 0;
                rd_addr[i] <= 0;
                circular_buffer_valid[i] <= 0;
                TDATA_counter[i] <= 0;
            end
        end else begin
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
                circular_buffer_valid[reorder_tag_in][TDATA_CURRENT] <= buffer_TVALID;
            end else if (refresh_buffer) begin
                buffer_counter <= 0;
                refresh_buffer <= 0;
            end
        end 
    end

    assign reorder_tag_out = out_pointer;

    //a counter for the pointer when status table gets back to us
    //output when packet is accepted & AXI ready 
    always @(posedge clk) begin
        if(rst) begin
            out_pointer <= 0;
            TLAST_reg <= 0;
            TVALID_count <= 0;
        end else if(CIRCULAR_BUFFER_SIZE-1==out_pointer) begin
            out_pointer <= 0;
            refresh_buffer <= 1;
        end else begin
            if(packet_status == 2'b11) begin
                if (buffer_TREADY_out) begin
                    if(TDATA_counter[out_pointer]!=0) begin
                        TLAST_reg <= 0;
                        rd_addr[out_pointer]<=rd_addr[out_pointer]+1;
                        TDATA_counter[out_pointer]<=TDATA_counter[out_pointer]-1;
                        TVALID_count <= TVALID_count + 1;
                    end else begin
                        TLAST_reg <= 1;
                        out_pointer<=out_pointer+1;
                        TVALID_count <= 0;
                    end
                end
            end else if (packet_status == 2'b01) begin //packet rejected, skip
                circular_buffer_valid[out_pointer] <= 0;
                out_pointer <= out_pointer + 1;
            end
        end
    end

    assign buffer_TDATA_out = rd_data[out_pointer];
    assign buffer_TVALID_out = circular_buffer_valid[out_pointer][TVALID_count];
    assign buffer_TLAST_out = TLAST_reg;
    assign fwd_rdy = (buffer_counter != CIRCULAR_BUFFER_SIZE-1)?1:0;

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
