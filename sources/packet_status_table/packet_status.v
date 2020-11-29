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
    parameter TAG_WIDTH = 6,
    parameter CIRCULAR_BUFFER_SIZE = 50
)(
    input wire clk,
    input wire rst,
    // from BPF cores
    input wire [TAG_WIDTH-1:0] BPF_reorder_tag, 
    input wire BPF_wr_valid,
    input wire BPF_wr_packet_status,
    // from the circular buffer
    input wire [TAG_WIDTH-1:0] cb_reorder_tag,
    // to the circular buffer
    output wire [1:0] cb_rd_packet_status
    
);
    reg [1:0] status_table [CIRCULAR_BUFFER_SIZE-1:0];
    reg [TAG_WIDTH-1:0] status_reset_iterator;
    
    // initialization, simulation only
    integer i;
    initial begin
        for (i = 0; i < CIRCULAR_BUFFER_SIZE; i=i+1) begin
            status_table[i] <= 2'b00;
        end
        status_reset_iterator <= 0;
    end
    
    /* status:
    00: pending
    01: rejected
    11: accepted*/
    always @(posedge clk) begin
        if (! rst) begin
            if (status_reset_iterator != cb_reorder_tag) begin
                status_table[status_reset_iterator] <= 2'b00;
            end
            if (BPF_wr_valid) begin
                status_table[BPF_reorder_tag] <= {BPF_wr_packet_status, 1'b1};
            end
        end else begin
            // initialize the status table to "pending" status
            for (i = 0; i < 50; i = i + 1) begin
                status_table[i] <= 2'b00;
            end
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
    
    assign cb_rd_packet_status = status_table[cb_reorder_tag];
    
endmodule
