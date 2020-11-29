`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2020 06:16:34
// Design Name: 
// Module Name: packet_status_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define CLOG2(x) (\
   (((x) <= 2) ? 1 : \
   (((x) <= 4) ? 2 : \
   (((x) <= 8) ? 3 : \
   (((x) <= 16) ? 4 : \
   (((x) <= 32) ? 5 : \
   (((x) <= 64) ? 6 : \
   (((x) <= 128) ? 7 : \
   (((x) <= 256) ? 8 : \
   (((x) <= 512) ? 9 : \
   (((x) <= 1024) ? 10 : \
   (((x) <= 2048) ? 11 : \
   (((x) <= 4096) ? 12 : \
   (((x) <= 8192) ? 13 : \
   (((x) <= 16384) ? 14 : \
   (((x) <= 32768) ? 15 : \
   (((x) <= 65536) ? 16 : \
   -1)))))))))))))))))

module packet_status_tb;
    
    localparam TAG_WIDTH = 6;
    localparam CIRCULAR_BUFFER_SIZE = 50;
    
    /** inputs and outputs of the packet status module **/
    reg clk;
    reg rst;
    // from BPF cores
    wire [TAG_WIDTH-1:0] BPF_reorder_tag;
    wire BPF_wr_valid;
    wire BPF_wr_packet_status;
    // from the circular buffer
    reg [TAG_WIDTH-1:0] cb_reorder_tag;
    // to the circular buffer
    wire [1:0] cb_rd_packet_status;
    
    /** testbench logics **/
    localparam BPF_WR_VALID_COUNTER_WIDTH = 1; // BPF_wr_valid every 2^BPF_WR_VALID_COUNTER_WIDTH cycles
    localparam PACKET_NUM = 1387;
    reg [BPF_WR_VALID_COUNTER_WIDTH-1:0] BPF_wr_valid_counter;
    reg[`CLOG2(PACKET_NUM)-1:0] packet_iterator;
    reg [TAG_WIDTH-1:0] packet_tags[PACKET_NUM-1:0];
    reg packet_status[PACKET_NUM-1:0];
    reg o_packet_status[PACKET_NUM-1:0];
    reg[`CLOG2(PACKET_NUM)-1:0] num_input_packet;
    reg[`CLOG2(PACKET_NUM)-1:0] num_output_packet;
    wire is_all_sent_in;
    wire is_all_sent_out;
    
    integer i, j, num_packets_left, inner_bound, index;
    initial begin
        clk = 1;
        rst = 1;
        cb_reorder_tag = 0;
        // logic to send in the packet status
        BPF_wr_valid_counter = 0;
        inner_bound = CIRCULAR_BUFFER_SIZE < PACKET_NUM ? CIRCULAR_BUFFER_SIZE : PACKET_NUM;
        num_packets_left = PACKET_NUM;
        for (i = 0; i < PACKET_NUM; i = i + CIRCULAR_BUFFER_SIZE) begin
            for (j = 0; j < inner_bound; j = j + 1) begin
                index = i > 0 ? (i + j) : (i + inner_bound - 1 - j);
                packet_tags[i + j] = index % CIRCULAR_BUFFER_SIZE;
                packet_status[index] = ((index & 3) == 0);
            end
            num_packets_left = num_packets_left - CIRCULAR_BUFFER_SIZE; 
            inner_bound = num_packets_left < CIRCULAR_BUFFER_SIZE ? num_packets_left : CIRCULAR_BUFFER_SIZE;
        end
        num_input_packet = 0;
        // logic to send out the packet status
        num_output_packet = 0;
        for (i = 0; i < PACKET_NUM; i = i + 1) begin
            o_packet_status[i] = 1'bx;
        end
        packet_iterator = 0;
    end
    
    always #5 clk <= ~clk;
    
    always @(posedge clk) begin
        rst <= 0;
        if (! is_all_sent_in) begin
            BPF_wr_valid_counter <= BPF_wr_valid_counter + 1;
            // when a BPF write arrives
            if (BPF_wr_valid) begin
                if (packet_iterator != PACKET_NUM - 1) begin
                    packet_iterator <= packet_iterator + 1;
                end else begin
                    packet_iterator <= 0;
                end
                if (num_input_packet == PACKET_NUM - 1) begin
                    $display("All packets are sent in!\n");
                end
                num_input_packet <= num_input_packet + 1;
            end
        end
    end
    
    assign BPF_wr_valid = &BPF_wr_valid_counter;
    assign BPF_reorder_tag = packet_tags[packet_iterator];
    assign BPF_wr_packet_status = packet_status[BPF_reorder_tag];
    assign is_all_sent_in = num_input_packet == PACKET_NUM;
    
    packet_status # (
        .TAG_WIDTH(TAG_WIDTH),
        .CIRCULAR_BUFFER_SIZE(CIRCULAR_BUFFER_SIZE)
    ) packet_status_table (
        .clk(clk),
        .rst(rst),
        // from BPF cores
        .BPF_reorder_tag(BPF_reorder_tag), 
        .BPF_wr_valid(BPF_wr_valid),
        .BPF_wr_packet_status(BPF_wr_packet_status),
        // from the circular buffer
        .cb_reorder_tag(cb_reorder_tag),
        // to the circular buffer
        .cb_rd_packet_status(cb_rd_packet_status)
    );
    
    // assume the circular buffer emits a packet as soon as the status is ready
    always @(posedge clk) begin
        if (! is_all_sent_out) begin
            // when the status is not pending
            if (cb_rd_packet_status[0]) begin
                
                // display the status of the current packet
                $display("packet%d status in the table: %d\n", cb_reorder_tag, cb_rd_packet_status[1]);
                o_packet_status[cb_reorder_tag] = cb_rd_packet_status[1];
                
                // point to the next packet
                if (cb_reorder_tag < CIRCULAR_BUFFER_SIZE - 1) begin
                    cb_reorder_tag <= cb_reorder_tag + 1;
                end else begin
                    cb_reorder_tag <= 0;
                end
                
                // increment the total number of packets sent out
                num_output_packet <= num_output_packet + 1;
            end
        end else begin
            $display("All packets are sent out!\n");
            // $stop();
        end
    end
    
    assign is_all_sent_out = num_output_packet == PACKET_NUM;
    
endmodule
