
//commented harini

module alu (a,b,sel,out);

	input logic [3:0] a,b;
	input logic [3:0] sel;
	//input logic [2:0] opcode;
	output logic [3:0] out;
	
	always @(sel)
		begin
		// writing the case condition 
		
		case (sel)
			
			3'b000 : out = a+b; // add
			3'b001 : out = a-b; // sub
			3'b010 : out = a*b; // mul
			3'b011 : out = a/b; // div
			3'b100 : out = a&&b; // logic and
			3'b101 : out = a||b; // logic or
			3'b110 : out = a&b; // bitwise and 
			3'b111 : out = a|b; // bitwise or
			default : $diaplay("typoo bro , select between 1 to 8");
		endcase;
    end		
			
endmodule

