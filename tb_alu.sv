// testbench for alu 

module tb_alu;

// defining inputs 

	logic [3:0] a,b;
	logic [3:0] sel;
	logic [3:0] out;
	logic clock;
	// instantiation of module alu
	 
	 alu alu_tb (.*);
	 
	 // stimulus
		initial
			begin
			a= 'd2;
			b= 'd3;
		
			//#10;
			sel = 'd7;
			end
		// defining clock	
		initial 
			begin
			clock = 1;
		
			forever #10 clock = ~clock;
			end
			
		//forloop to take input for sel
		
		initial 
			begin	
			int i;
				
					for(i=1; i<9 ;i=i+1)
					begin
					 @(posedge clock);
						sel = i;
					end
				
			end
endmodule
			