//Copyright 2020 Marco Merlini. This file is part of the fpga-bpf project,
//whose license information can be found at 
//https://github.com/UofT-HPRC/fpga-bpf/blob/master/LICENSE

`timescale 1ns / 1ps

/*
circular_buffer_tb.v

*/

// `include "circular_buffer.v"

`define TAG_WIDTH               6
`define CIRCULAR_BUFFER_SIZE    3   // Normally 50
`define DATA_WIDTH              64
`define ADDR_WIDTH              10
`define MAX_TDATA_PER_PACKET    (6 * `DATA_WIDTH)   // packet files have at most 5 lines of data

`define NUM_PACKET_FILES        3

module circular_buffer_tb;

    parameter KEEP_WIDTH = `DATA_WIDTH/8;
    
    reg clk;
    reg rst;

    reg [`DATA_WIDTH-1:0] buffer_TDATA;
    reg [`TAG_WIDTH-1:0] reorder_tag_in;
    reg buffer_TLAST;
    reg buffer_TVALID;
    reg buffer_TREADY;
    reg buffer_TKEEP;

    reg [1:0] packet_status;

    reg [`DATA_WIDTH-1:0] buffer_TDATA_out;
    reg buffer_TLAST_out;
    reg buffer_TVALID_out;
    reg buffer_TREADY_out;
    reg buffer_TKEEP_out;

    reg [`TAG_WIDTH-1:0] reorder_tag_out;

    reg fwd_rdy;

    
    integer fd, dummy;
    integer i;
    integer i_word;
    reg loop;
    reg [`DATA_WIDTH-1:0] word;
    reg [`MAX_TDATA_PER_PACKET-1:0] input_packets [`NUM_PACKET_FILES-1:0];

    reg[20*8-1:0] file_name;
    
    initial begin
        $dumpfile("circular_buffer.vcd");
        $dumpvars;
        $dumplimit(512000);
        
        clk <= 0;
        rst <= 0;
        
        for (i = 0; i < `NUM_PACKET_FILES; i = i + 1) begin
            $sformat(file_name, "packet_%0d.mem", i + 1);
            $display("Opening file %s", file_name);
            fd = $fopen(file_name, "r");
            if (fd == 0) begin
                $display("Could not open file");
                $finish;
            end
            
            // while ($fgetc(fd) != "\n") begin
            //     if ($feof(fd)) begin
            //         $display("Error: file is in incorrect format");
            //         $finish;
            //     end
            // end

            
            i_word = 0;
            loop = 1;
            while (loop) begin
                
                // #0.01
                dummy = $fscanf(fd, "%h",
                    word
                    // input_packets[i][i_word*`DATA_WIDTH +: `DATA_WIDTH]
                );
                input_packets[i][i_word*`DATA_WIDTH +: `DATA_WIDTH] = word;

                if ($feof(fd)) begin
                    $display("Reached end of drivers file");
                    loop = 0;
                end

                i_word = i_word + 1;
            end
        end
    end
    
    always #5 clk <= ~clk;
    
    // always @(posedge clk) begin
    //     if ($feof(fd)) begin
    //         $display("Reached end of drivers file");
    //         #20
    //         $finish;
    //     end
        
    //     #0.01
    //     dummy = $fscanf(fd, "%h%h%b%b%b%b", 
    //         buffer_TDATA,
    //         buffer_TKEEP,
    //         buffer_TREADY_out,
    //         buffer_TVALID,
    //         buffer_TLAST,
    //         rdy_to_send
    //     );
    // end

    circular_buffer # (
        .TAG_WIDTH(`TAG_WIDTH),
        .CIRCULAR_BUFFER_SIZE(`CIRCULAR_BUFFER_SIZE),
        .DATA_WIDTH(`DATA_WIDTH),
        .ADDR_WIDTH(`ADDR_WIDTH),
        .MAX_TDATA_PER_PACKET(`MAX_TDATA_PER_PACKET)
    ) DUT (
        .clk(clk),
        .rst(rst),
        .buffer_TDATA(buffer_TDATA),
        .reorder_tag_in(reorder_tag_in),
        .buffer_TLAST(buffer_TLAST),
        .buffer_TVALID(buffer_TVALID),
        .buffer_TREADY(buffer_TREADY),

        .packet_status(packet_status),

        .buffer_TDATA_out(buffer_TDATA_out),
        .buffer_TLAST_out(buffer_TLAST_out),
        .buffer_TVALID_out(buffer_TVALID_out),
        .buffer_TREADY_out(buffer_TREADY_out),

        .reorder_tag_out(reorder_tag_out),

        .fwd_rdy(fwd_rdy)
    );



endmodule
