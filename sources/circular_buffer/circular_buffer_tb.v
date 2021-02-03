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
`define MAX_TDATA_PER_PACKET    6   // packet files have at most 5 lines of data
`define MAX_BITS_PER_PACKET     (`MAX_TDATA_PER_PACKET * `DATA_WIDTH)

`define NUM_PACKET_FILES        3
`define TOTAL_NUM_INPUT_PACKETS 10

`define SEED                    37

module circular_buffer_tb;

    parameter KEEP_WIDTH = `DATA_WIDTH/8;

    /* status:
    00: pending
    01: rejected
    11: accepted*/
    localparam PENDING  = 2'b00;
    localparam REJECTED = 2'b01;
    localparam ACCEPTED = 2'b11;
    
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

    // Need this to be a 1-D vector instead of a 2-D vector/array
    // because GTKWave does not display 2-D vectors/arrays
    reg [2*`CIRCULAR_BUFFER_SIZE-1:0] packet_status_table;
    assign packet_status = packet_status_table[reorder_tag_out*2 +: 2];

    
    integer fd, dummy;
    integer i;
    integer i_word;
    reg loop;
    reg [`DATA_WIDTH-1:0] word;
    reg [`MAX_BITS_PER_PACKET*`NUM_PACKET_FILES-1:0] input_packets;
    reg [32*`NUM_PACKET_FILES-1:0] input_packet_lengths;

    integer total_packet_reorder_tags [`TOTAL_NUM_INPUT_PACKETS];

    reg[20*8-1:0] file_name;
    
    initial begin
        $dumpfile("circular_buffer.vcd");
        $dumpvars;
        $dumplimit(512000);
        
        clk <= 1;   // Want rising clock edges to be on 10 ns boundaries
        rst <= 0;

        // Random input reorder tags
        total_packet_reorder_tags[0] = 1;   // 1st round
        total_packet_reorder_tags[1] = 0;
        total_packet_reorder_tags[2] = 2;
        total_packet_reorder_tags[3] = 2;   // 2nd round
        total_packet_reorder_tags[4] = 1;   // 3rd round
        total_packet_reorder_tags[5] = 2;   // 4th round
        total_packet_reorder_tags[6] = 1;
        total_packet_reorder_tags[7] = 0;   // 5th round
        total_packet_reorder_tags[8] = 1;
        total_packet_reorder_tags[9] = 2;

        input_packet_lengths = 0;
        
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
                dummy = $fscanf(fd, "%h",
                    word
                );
                $display("Word: %x", word);
                input_packets[(i*`MAX_BITS_PER_PACKET) + (i_word*`DATA_WIDTH) +: `DATA_WIDTH] = word;
                $display("Packet: %x", input_packets[i*`MAX_BITS_PER_PACKET +: `MAX_BITS_PER_PACKET]);
                input_packet_lengths[i*32 +: 32] += 1;

                if ($feof(fd)) begin
                    $display("Reached end of drivers file");
                    loop = 0;
                end

                i_word = i_word + 1;
            end
        end
    end
    
    always #5 clk <= ~clk;
    integer i_packet;
    integer i_total_packet;
    integer seed = `SEED;
    initial begin
        buffer_TDATA = 0;
        reorder_tag_in = 0;
        buffer_TVALID = 0;
        buffer_TLAST = 0;

        // Need to add a small fraction to the delay or else there is a timing glitch in the simulation,
        // where changes in buffer_TVALID are detected on the previous clock edge
        #100.001

        i_packet = $urandom(seed);    // seed random generator
        for (i_total_packet = 0; i_total_packet < `TOTAL_NUM_INPUT_PACKETS; i_total_packet = i_total_packet + 1) begin
            $display("Total packet %0d", i_total_packet);
            
            i_packet = $urandom() % 3;  // which input file to choose
            $display("File packet %0d", i_packet);
            i_word = 0;

            reorder_tag_in = total_packet_reorder_tags[i_total_packet];

            for (i_word = 0; i_word < input_packet_lengths[i_packet*32 +: 32]; i_word += 1) begin
                $display("Word %0d", i_word);
                buffer_TDATA = input_packets[(i_packet*`MAX_BITS_PER_PACKET) + (i_word*`DATA_WIDTH) +: `DATA_WIDTH];
                buffer_TLAST = 0;
                if (($urandom() % 100) < 60) begin
                    buffer_TVALID = 1;
                    if (i_word == input_packet_lengths[i_packet*32 +: 32] - 1) begin
                        buffer_TLAST = 1;
                    end
                end
                else begin
                    buffer_TVALID = 0;
                    i_word -= 1;
                end
                #10;
            end
            buffer_TVALID = 0;
        end
        $display("Done all file packets");
        $finish;
    end

    integer i_table;
    initial begin
        for (i_table = 0; i_table < `CIRCULAR_BUFFER_SIZE; i_table += 1) begin
            packet_status_table[i_table*2 +: 2] = PENDING;
        end

        #0.001;
        #100;   // 100 ns
        packet_status_table[1:0] = ACCEPTED;
        packet_status_table[3:2] = ACCEPTED;
        #140;   // 240 ns
        packet_status_table[5:4] = ACCEPTED;
        // TODO - need to reset to pending
    end

    initial begin
        #0.001;
        while (1) begin
            if (($urandom() % 100) < 60) begin
                buffer_TREADY_out = 1;
            end
            else begin
                buffer_TREADY_out = 0;
            end
            #10;
        end
    end
    
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
        .MAX_TDATA_PER_PACKET(`MAX_TDATA_PER_PACKET)
    ) DUT (
        .clk(clk),
        .rst(rst),

        .buffer_TDATA(buffer_TDATA),
        .reorder_tag_in(reorder_tag_in),
        .buffer_TLAST(buffer_TLAST),
        .buffer_TVALID(buffer_TVALID),
        .buffer_TREADY(buffer_TREADY),

        .buffer_TDATA_out(buffer_TDATA_out),
        .buffer_TLAST_out(buffer_TLAST_out),
        .buffer_TVALID_out(buffer_TVALID_out),
        .buffer_TREADY_out(buffer_TREADY_out),

        .packet_status(packet_status),
        .reorder_tag_out(reorder_tag_out)
    );

endmodule
