`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2020 06:16:34
// Design Name: 
// Module Name: packet_status
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


module packet_status # (
    parameter NUM_CORES = 4,
    parameter TAG_WIDTH = 6,
    parameter CIRCULAR_BUFFER_SIZE = 50,
    parameter STATUS_TABLE_SIZE = CIRCULAR_BUFFER_SIZE * 2
)(
    input wire clk,
    input wire rst,
    // from BPF cores
    input wire [NUM_CORES*TAG_WIDTH-1:0] parallel_BPF_reorder_tags, 
    input wire [NUM_CORES-1:0] BPF_wr_valids,
    input wire [NUM_CORES-1:0] BPF_wr_packets_status,
    // from the circular buffer
    input wire [TAG_WIDTH-1:0] cb_reorder_tag,
    // to the circular buffer
    output wire [1:0] cb_rd_packet_status,
    output reg [STATUS_TABLE_SIZE-1:0] status_table
    
);

    reg [TAG_WIDTH-1:0] status_reset_iterator;
    
    //status:
    //00: pending
    //01: rejected
    //11: accepted

    //initialization for testing
    initial begin
        status_table <= 0;
        status_reset_iterator <= 0;
    end

    integer i;
    always @(posedge clk) begin
        if (! rst) begin
            if (status_reset_iterator != cb_reorder_tag) begin
                status_table[{status_reset_iterator,1'b0}] <= 1'b0;
                status_table[{status_reset_iterator,1'b1}] <= 1'b0;
            end

            // assigning the packets status in parallel 
            for (i = 0; i < NUM_CORES; i = i + 1) begin
                if (BPF_wr_valids[i]) begin
                    status_table[{parallel_BPF_reorder_tags[(i+1)*TAG_WIDTH-1-:TAG_WIDTH],1'b0}] <= 1'b1;
                    status_table[{parallel_BPF_reorder_tags[(i+1)*TAG_WIDTH-1-:TAG_WIDTH],1'b1}] <= BPF_wr_packets_status[i];
                end
            end
        end else begin
            status_table <= 0;
        end
    end
    
    // always point to the next packet that's going to be emitted
    always @(posedge clk) begin
        if (! rst) begin
            status_reset_iterator <= cb_reorder_tag;
        end else begin
            status_reset_iterator <= 0;
        end
    end
    
    assign cb_rd_packet_status = {status_table[{cb_reorder_tag,1'b1}], status_table[{cb_reorder_tag,1'b0}]};
    
    
    
endmodule
