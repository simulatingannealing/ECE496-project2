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

    reg [`DATA_WIDTH-1:0] in_TDATA;
    reg [`TAG_WIDTH-1:0] in_reorder_tag;
    reg in_TLAST;
    reg in_TVALID;
    reg in_TREADY;

    reg [1:0] packet_status;

    reg [`DATA_WIDTH-1:0] out_TDATA;
    reg [`TAG_WIDTH-1:0] out_reorder_tag;
    reg out_TLAST;
    reg out_TVALID;
    reg out_TREADY;

    // Need this to be a 1-D vector instead of a 2-D vector/array
    // because GTKWave does not display 2-D vectors/arrays
    reg [2*`CIRCULAR_BUFFER_SIZE-1:0] packet_status_table;
    assign packet_status = packet_status_table[out_reorder_tag*2 +: 2];
    
    integer fd, dummy;
    integer i;
    integer i_word;
    reg loop;
    reg [`DATA_WIDTH-1:0] word;
    reg [`MAX_BITS_PER_PACKET*`NUM_PACKET_FILES-1:0] input_packets;
    reg [32*`NUM_PACKET_FILES-1:0] input_packet_lengths;

    integer total_packet_reorder_tags [`TOTAL_NUM_INPUT_PACKETS];

    reg[20*8-1:0] file_name;

    // Kill the testbench if it runs too long
    initial begin
        #2000;
        $display("Timeout - ending testbench!");
        $finish;
    end
    
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
        in_TDATA = 0;
        in_reorder_tag = 0;
        in_TVALID = 0;
        in_TLAST = 0;

        // Need to add a small fraction to the delay or else there is a timing glitch in the simulation,
        // where changes in in_TVALID are detected on the previous clock edge
        #100.001

        $display("Sending packets into buffer...");

        i_packet = $urandom(seed);    // seed random generator
        for (i_total_packet = 0; i_total_packet < `TOTAL_NUM_INPUT_PACKETS; i_total_packet = i_total_packet + 1) begin
            $display("Total packet %0d", i_total_packet);

            i_packet = $urandom() % 3;  // which input file to choose
            $display("File packet %0d", i_packet);
            i_word = 0;

            in_reorder_tag = total_packet_reorder_tags[i_total_packet];

            // Can't leave the third statement in the for loop blank, so need to put something there
            for (i_word = 0; i_word < input_packet_lengths[i_packet*32 +: 32]; i_word = i_word ) begin
                in_TVALID = 0;
                in_TLAST = 0;

                $display("Word %0d", i_word);
                in_TDATA = input_packets[(i_packet*`MAX_BITS_PER_PACKET) + (i_word*`DATA_WIDTH) +: `DATA_WIDTH];

                if (($urandom() % 100) < 60) begin
                    // Assert this word is valid
                    in_TVALID = 1;

                    // If this is the last word of the packet, assert last
                    if (i_word == input_packet_lengths[i_packet*32 +: 32] - 1) begin
                        in_TLAST = 1;
                    end

                    // Only go to the next word if the buffer accepts this one
                    if (in_TREADY) begin
                        i_word += 1;
                    end
                end
                #10;
            end
        end

        in_TVALID = 0;
        in_TLAST = 0;
        $display("Done sending packets into buffer");

        // Wait for buffer to output last 3 packets
        @(posedge out_TLAST);
        @(posedge out_TLAST);
        @(posedge out_TLAST);
        @(posedge out_TLAST);
        #100;
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
        #150;   // 390 ns
        packet_status_table = 0;
        #10;    // 400 ns
        packet_status_table[5:4] = ACCEPTED;
        #10;    // 410 ns
        packet_status_table[3:2] = REJECTED;
        packet_status_table[1:0] = REJECTED;
        #80;    // 490 ns
        packet_status_table = 0;
        #10;    // 500 ns
        packet_status_table[5:4] = REJECTED;
        packet_status_table[3:2] = ACCEPTED;
        packet_status_table[1:0] = REJECTED;
        #100;   // 600 ns
        packet_status_table = 0;
        packet_status_table[5:4] = ACCEPTED;
        packet_status_table[3:2] = ACCEPTED;
        packet_status_table[1:0] = REJECTED;
        #110;   // 710 ns
        packet_status_table[5:4] = PENDING;
        packet_status_table[1:0] = PENDING;
        #110;   // 820 ns
        packet_status_table[5:4] = REJECTED;
        packet_status_table[3:2] = PENDING;
        #10;    // 830 ns
        packet_status_table[5:4] = PENDING;
        #220;   // 1050 ns
        packet_status_table[5:4] = ACCEPTED;
        packet_status_table[3:2] = ACCEPTED;
        packet_status_table[1:0] = ACCEPTED;
    end

    initial begin
        #0.001;
        while (1) begin
            if (($urandom() % 100) < 60) begin
                out_TREADY = 1;
            end
            else begin
                out_TREADY = 0;
            end
            #10;
        end
    end

    circular_buffer # (
        .TAG_WIDTH(`TAG_WIDTH),
        .CIRCULAR_BUFFER_SIZE(`CIRCULAR_BUFFER_SIZE),
        .DATA_WIDTH(`DATA_WIDTH),
        .MAX_TDATA_PER_PACKET(`MAX_TDATA_PER_PACKET)
    ) DUT (
        .clk(clk),
        .rst(rst),

        .in_TDATA(in_TDATA),
        .in_reorder_tag(in_reorder_tag),
        .in_TLAST(in_TLAST),
        .in_TVALID(in_TVALID),
        .in_TREADY(in_TREADY),

        .out_TDATA(out_TDATA),
        .out_TLAST(out_TLAST),
        .out_TVALID(out_TVALID),
        .out_TREADY(out_TREADY),

        .packet_status(packet_status),
        .out_reorder_tag(out_reorder_tag)
    );

endmodule
