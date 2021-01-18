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
   (((x) < 2) ? 1 : \
   (((x) < 4) ? 2 : \
   (((x) < 8) ? 3 : \
   (((x) < 16) ? 4 : \
   (((x) < 32) ? 5 : \
   (((x) < 64) ? 6 : \
   (((x) < 128) ? 7 : \
   (((x) < 256) ? 8 : \
   (((x) < 512) ? 9 : \
   (((x) < 1024) ? 10 : \
   (((x) < 2048) ? 11 : \
   (((x) < 4096) ? 12 : \
   (((x) < 8192) ? 13 : \
   (((x) < 16384) ? 14 : \
   (((x) < 32768) ? 15 : \
   (((x) < 65536) ? 16 : \
   -1)))))))))))))))))

module packet_status_tb;
    
    localparam TAG_WIDTH = 6;
    localparam CIRCULAR_BUFFER_SIZE = 7;
    localparam STATUS_TABLE_SIZE = CIRCULAR_BUFFER_SIZE * 2;
    
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
    wire [STATUS_TABLE_SIZE-1:0] status_table; // for simulation demo
    
    /** testbench logics **/
    localparam PACKET_NUM = 61;
    reg [`CLOG2(PACKET_NUM)-1:0] num_input_packet;
    // simulate the signals from BPFs
    localparam BPF_WR_VALID_COUNTER_WIDTH = 1;
    reg [BPF_WR_VALID_COUNTER_WIDTH-1:0] BPF_wr_valid_counter;
    // from the testbench data file
    reg [`CLOG2(PACKET_NUM)-1:0] packet_index;
    reg [TAG_WIDTH-1:0] packet_index_trace[0:PACKET_NUM-1];
    reg packet_status;
    reg [0:PACKET_NUM-1] packet_status_trace;
    reg packet_status_in_real_order;
    reg [0:PACKET_NUM-1] packet_status_in_real_order_trace;
    // simulate the signals from the circular buffer
    reg [`CLOG2(PACKET_NUM)-1:0] num_output_packet;
    reg [`CLOG2(PACKET_NUM)-1:0] base_num_packets;
    wire is_refreshing_circular_buffer;
    wire is_all_sent_in;
    wire is_all_sent_out;
    // output of the packet status module
    reg [0:PACKET_NUM-1] packet_status_from_table;
    
    
    integer fd, dummy;
    initial begin
        clk = 1;
        rst = 1;
        cb_reorder_tag = 0;
        // get data from a memory file
        fd = $fopen("packet_status_table_tb_data.mem", "r");
        if (fd == 0) begin
            $display("Could not open file");
            $finish;
        end
        
        while ($fgetc(fd) != "\n") begin
            if ($feof(fd)) begin
                $display("Error: file is in incorrect format");
                $finish;
            end
        end
        num_input_packet = 0;
        num_output_packet = 0;
        base_num_packets = 0;
        BPF_wr_valid_counter = 0;
    end
    
    always #5 clk <= ~clk;
    
    assign BPF_wr_valid = &BPF_wr_valid_counter;
    assign BPF_reorder_tag = packet_index % CIRCULAR_BUFFER_SIZE;
    assign BPF_wr_packet_status = packet_status_in_real_order;
    assign is_refreshing_circular_buffer = (num_input_packet>base_num_packets) && 
                                           (num_input_packet%CIRCULAR_BUFFER_SIZE==0) && 
                                           (cb_reorder_tag < CIRCULAR_BUFFER_SIZE-1);
    
    always @(posedge clk) begin
        rst <= 0;
        BPF_wr_valid_counter <= BPF_wr_valid_counter + (! is_refreshing_circular_buffer);
        if (! is_all_sent_in) begin
            if (~BPF_wr_valid && ! is_refreshing_circular_buffer) begin
                #0.01
                dummy = $fscanf(fd, "%b%d%b",
                    packet_status,
                    packet_index,
                    packet_status_in_real_order
                );
                packet_index_trace[num_input_packet] <= packet_index;
                packet_status_trace[num_input_packet] <= packet_status;
                packet_status_in_real_order_trace[num_input_packet] <= packet_status_in_real_order;
                num_input_packet <= num_input_packet + 1;
            end
        end
    end
    
    
    packet_status # (
        .TAG_WIDTH(TAG_WIDTH),
        .CIRCULAR_BUFFER_SIZE(CIRCULAR_BUFFER_SIZE),
        .STATUS_TABLE_SIZE(STATUS_TABLE_SIZE)
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
        .cb_rd_packet_status(cb_rd_packet_status),
        // for simulation demo
        .status_table(status_table)
    );
    
    // assume the circular buffer emits a packet as soon as the status is ready
    always @(posedge clk) begin
        if (! is_all_sent_out) begin
            // when the status is not pending
            if (cb_rd_packet_status[0]) begin
                
                // display the status of the current packet
                $display("packet%d status in the table: %d\n", cb_reorder_tag, cb_rd_packet_status[1]);
                packet_status_from_table[num_output_packet] <= cb_rd_packet_status[1];
                
                // point to the next packet
                if (cb_reorder_tag < CIRCULAR_BUFFER_SIZE - 1) begin
                    cb_reorder_tag <= cb_reorder_tag + 1;
                end else begin
                    cb_reorder_tag <= 0;
                    base_num_packets <= base_num_packets + CIRCULAR_BUFFER_SIZE;
                end
                
                // increment the total number of packets sent out
                num_output_packet <= num_output_packet + 1;
            end
        end else begin
            $display("All packets are sent out!\n");
            if (packet_status_trace == packet_status_from_table) begin
                $display("PASS!\n");
            end else begin
                $display("FAIL!\n");
            end
        end
    end
    
    assign is_all_sent_out = num_output_packet == PACKET_NUM;
    assign is_all_sent_in = num_input_packet == PACKET_NUM;
    
    // for simulation demo
    wire [1:0] updated_packet_status;
    assign updated_packet_status = {BPF_wr_packet_status, 1'b1};
    
endmodule
