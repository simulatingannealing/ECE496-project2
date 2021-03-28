
`timescale 1 ns / 1 ps

	module input_v1_0_M00_AXIS #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		parameter integer C_M_AXIS_TDATA_WIDTH	= 32,
		// Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
		parameter integer C_M_START_COUNT	= 32
	)
	(
		// Users to add ports here
        input wire input_enable_ffshark,
		// User ports ends
		// Do not modify the ports beyond this line

		// Global ports
		input wire  M_AXIS_ACLK,
		// 
		input wire  M_AXIS_ARESETN,
		// Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
		output wire  M_AXIS_TVALID,
		// TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		output wire [C_M_AXIS_TDATA_WIDTH-1 : 0] M_AXIS_TDATA,
		// TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		output wire [(C_M_AXIS_TDATA_WIDTH/8)-1 : 0] M_AXIS_TSTRB,
		// TLAST indicates the boundary of a packet.
		output wire  M_AXIS_TLAST,
		// TREADY indicates that the slave can accept a transfer in the current cycle.
		input wire  M_AXIS_TREADY
	);
	// Total number of output data                                                 
	//localparam NUMBER_OF_OUTPUT_WORDS = 8;    
	reg [7:0]         NUMBER_OF_OUTPUT_WORDS;                                  
	                                                                                     
	// function called clogb2 that returns an integer which has the                      
	// value of the ceiling of the log base 2.                                           
	function integer clogb2 (input integer bit_depth);                                   
	  begin                                                                              
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                                      
	      bit_depth = bit_depth >> 1;                                                    
	  end                                                                                
	endfunction                                                                          
	                                                                                     
	// WAIT_COUNT_BITS is the width of the wait counter.                                 
	localparam integer WAIT_COUNT_BITS = clogb2(C_M_START_COUNT-1);                      
	                                                                                     
	// bit_num gives the minimum number of bits needed to address 'depth' size of FIFO.  
	localparam bit_num  = clogb2(256);                                
	                                                                                     
	// Define the states of state machine                                                
	// The control state machine oversees the writing of input streaming data to the FIFO,
	// and outputs the streaming data from the FIFO                                      
	parameter [1:0] IDLE = 2'b00,        // This is the initial/idle state               
	                                                                                     
	                INIT_COUNTER  = 2'b01, // This state initializes the counter, once   
	                                // the counter reaches C_M_START_COUNT count,        
	                                // the state machine changes state to SEND_STREAM     
	                SEND_STREAM   = 2'b10; // In this state the                          
	                                     // stream data is output through M_AXIS_TDATA   
	// State variable                                                                    
	reg [1:0] mst_exec_state;                                                            
	// Example design FIFO read pointer                                                  
	reg [bit_num-1:0] read_pointer;                                                      

	// AXI Stream internal signals
	//wait counter. The master waits for the user defined number of clock cycles before initiating a transfer.
	reg [WAIT_COUNT_BITS-1 : 0] 	count;
	//streaming data valid
	wire  	axis_tvalid;
	//streaming data valid delayed by one clock cycle
	reg  	axis_tvalid_delay;
	//Last of the streaming data 
	wire  	axis_tlast;
	//Last of the streaming data delayed by one clock cycle
	reg  	axis_tlast_delay;
	//FIFO implementation signals
	reg [C_M_AXIS_TDATA_WIDTH-1 : 0] 	stream_data_out;
	wire  	tx_en;
	//The master has issued all the streaming data stored in FIFO
	reg  	tx_done;
    
    reg [5:0] done_packet;   

	// I/O Connections assignments

	assign M_AXIS_TVALID	= axis_tvalid_delay;
	assign M_AXIS_TDATA	= stream_data_out;
	assign M_AXIS_TLAST	= axis_tlast_delay;
	assign M_AXIS_TSTRB	= {(C_M_AXIS_TDATA_WIDTH/8){1'b1}};


	// Control state machine implementation                             
	always @(posedge M_AXIS_ACLK)                                             
	begin                                                                     
	  if (!input_enable_ffshark)                                                    
	  // Synchronous reset (active low)                                       
	    begin                                                                 
	      mst_exec_state <= IDLE;                                             
	      count    <= 0;                                                      
	    end                                                                   
	  else                                                                    
	    case (mst_exec_state)                                                 
	      IDLE:     begin                                                          
	        // The slave starts accepting tdata when                          
	        // there tvalid is asserted to mark the                           
	        // presence of valid streaming data                               
	        //if ( count == 0 )                                                 
	        //  begin                                                        
	            mst_exec_state  <= INIT_COUNTER;                              
	        //  end                                                             
	        //else                                                              
	        //  begin                                                           
	        //    mst_exec_state  <= IDLE;                                      
	        //  end                                                             
	         end                                                                 
	      INIT_COUNTER:                                                       
	        // The slave starts accepting tdata when                          
	        // there tvalid is asserted to mark the                           
	        // presence of valid streaming data                               
	        if (input_enable_ffshark)                               
	          begin                                                           
	            mst_exec_state  <= SEND_STREAM;                               
	          end                                                             
	        else                                                              
	          begin                                                           
	            //count <= count + 1;                                           
	            mst_exec_state  <= INIT_COUNTER;                              
	          end                                                             
	                                                                          
	      SEND_STREAM:                                                        
	        // The example design streaming master functionality starts       
	        // when the master drives output tdata from the FIFO and the slave
	        // has finished storing the S_AXIS_TDATA                          
	        if (tx_done)                                                      
	          begin                                                           
	            mst_exec_state <= IDLE;                                       
	          end                                                             
	        else                                                              
	          begin                                                           
	            mst_exec_state <= SEND_STREAM;                                
	          end                                   
	    endcase                                                               
	end                                                                       


	//tvalid generation
	//axis_tvalid is asserted when the control state machine's state is SEND_STREAM and
	//number of output streaming data is less than the NUMBER_OF_OUTPUT_WORDS.
	assign axis_tvalid = ((mst_exec_state == SEND_STREAM) && (read_pointer < NUMBER_OF_OUTPUT_WORDS));
	                                                                                               
	// AXI tlast generation                                                                        
	// axis_tlast is asserted number of output streaming data is NUMBER_OF_OUTPUT_WORDS-1          
	// (0 to NUMBER_OF_OUTPUT_WORDS-1)                                                             
	assign axis_tlast = (read_pointer == NUMBER_OF_OUTPUT_WORDS-1);                                
	                                                                                               
	                                                                                               
	// Delay the axis_tvalid and axis_tlast signal by one clock cycle                              
	// to match the latency of M_AXIS_TDATA                                                        
	always @(posedge M_AXIS_ACLK)                                                                  
	begin                                                                                          
	  if (!input_enable_ffshark)                                                                         
	    begin                                                                                      
	      axis_tvalid_delay <= 1'b0;                                                               
	      axis_tlast_delay <= 1'b0;                                                                
	    end                                                                                        
	  else                                                                                         
	    begin                                                                                      
	      axis_tvalid_delay <= axis_tvalid;                                                        
	      axis_tlast_delay <= axis_tlast;                                                          
	    end                                                                                        
	end                   
	
	/*
	reg reset_internal=0;
	always @(posedge M_AXIS_ACLK)                                                                  
	begin                                                                                          
	  if (input_enable_ffshark)                                                                         
	    begin                                                                                      
	      reset_internal <= 1'b1;                                                                                                                          
	    end                                                                                                                                                                             
	end                                                                                          
*/

	//read_pointer pointer

	always@(posedge M_AXIS_ACLK)                                               
	begin                                                                            
	  if(!input_enable_ffshark)                                                            
	    begin                                                                        
	      read_pointer <= 0;                                                         
	      tx_done <= 1'b0; 
	      done_packet <= 0;  
	      NUMBER_OF_OUTPUT_WORDS <= 248;                                                         
	    end                                                                          
	  else                                                                           
	    if (read_pointer <= NUMBER_OF_OUTPUT_WORDS-1)                                
	      begin                                                                      
	        if (tx_en)                                                               
	          // read pointer is incremented after every read from the FIFO          
	          // when FIFO read signal is enabled.                                   
	          begin                                                                  
	            read_pointer <= read_pointer + 32;                                    
	            tx_done <= 1'b0;                                                     
	          end                                                                    
	      end                                                                        
	    else if (read_pointer == NUMBER_OF_OUTPUT_WORDS)                             
	      begin                                                                      
	        // tx_done is asserted when NUMBER_OF_OUTPUT_WORDS numbers of streaming data
	        // has been out.                                                         
	        tx_done <= 1'b1;
	        done_packet <= done_packet + 1;  
	        NUMBER_OF_OUTPUT_WORDS <= 40;                                                         
	      end                                                                        
	end                                                                              


	//FIFO read enable generation 

	assign tx_en = M_AXIS_TREADY && axis_tvalid;
	
	                                                     
	    // Streaming output data is read from FIFO       
	    always @( posedge M_AXIS_ACLK )                  
	    begin                                            
	      if(!input_enable_ffshark)                            
	        begin                                        
	          stream_data_out <= 1;                   
	        end                                          
	      else if (tx_en)// && M_AXIS_TSTRB[byte_index]  
	        begin                                        
	          if(done_packet==1)begin
	             stream_data_out <= packet1[read_pointer];//read_pointer + 32'b1;   
	          end else if (done_packet==2)begin
	              stream_data_out <= packet2[read_pointer];
	          end else if (done_packet==3) begin
	              stream_data_out <= packet3[read_pointer];
	          end else if (done_packet==4) begin
	              stream_data_out <= packet5[read_pointer];
	          end else if (done_packet==0) begin
	              stream_data_out <= packet4[read_pointer];
	          end
	        end                                          
	    end                                              

	// Add user logic here
    reg [1279:0] packet1=1280'h07dbc98c89ad1d099b5a1e8a0800450000420001000040113fbf21ead1e1f1cf555000350035002ecd74000001000001000000000000037777770c616c65786275636b69736d6503636f6d0000010001;
    reg [1279:0] packet2=1280'h341796f087abf707981e5bda080045000042000100004011da1bb14c54d0c1e0d89100350035002e6c9e000001000001000000000000037777770c746f6269697373706963797903636f6d0000010001;
    reg [1279:0] packet3=1280'h624227de2806609d48b36dc80800450000420001000040117b142d7f9d9071b9c2cd00350035002e0ec1000001000001000000000000037777770c6b616e76657269736265617503636f6d0000010001;
    reg [7935:0] packet4=7936'he3d98990982c64f9ab3e32b20800450001e200010000400694fd74806f87223bddd500500050000000000000000050022000185f0000485454502f312e3120323030204f4b0d0a0d0a504144594630364932444b46553133303936395233204c4b344947453731563653323547484e2047384b4b4531394b464730514e5720464652584838595a56333920464149365155542057203320414b47505934364c524d4d393337434c544450475753564b3520555549524e483152514a33452043433320203120394c54563751434320465a355150524d365059525120203658595149203256314e3637504820534f5a5838304f4c3243363343485a444830203050505a3537454f36392041413731384638423857495738345a4f30564f5834544b38374c36545444524159304a305a205a39204c47204556492059414d5342345236575735364a335057544b342051564d3438204f4c3631595720345753324c44324244382052313335332045484556475520474420504b464a4756205533314b34594b59464a5646313754554b3254514a31443347483042203958394f30304f533330584541205920564141335420205654454d30534d4359205a494645395059415941424620302020514f43203256454137375850395659514532423120204a393956364b41482052204e57552039;
    reg [1279:0] packet5=1280'hd1043eff32aed7475b9f883208004500004200010000400610a9923d8459dd7775fe005000500000000000000000500220009efc0000485454502f312e3120323030204f4b0d0a0d0a545055205a4b49;
    
	// User logic ends

	endmodule