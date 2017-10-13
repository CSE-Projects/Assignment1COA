/**
*	Module for 16:4 encoder
*	By: Omkar Prabhu 16CO233
*	13th October 2017
*/

module encoder (output reg [0:3] out, input [0:15] in);

	// thread to decode input
	always @ (in) begin
		// check which input and give corresponding output		
		case (in) 
			16'b0000000000000001 : out = 4'b0000; 
			16'b0000000000000010 : out = 4'b0001; 
			16'b0000000000000100 : out = 4'b0010; 
			16'b0000000000001000 : out = 4'b0011; 
			16'b0000000000010000 : out = 4'b0100; 
			16'b0000000000100000 : out = 4'b0101; 
			16'b0000000001000000 : out = 4'b0110; 
			16'b0000000010000000 : out = 4'b0111; 
			16'b0000000100000000 : out = 4'b1000; 
			16'b0000001000000000 : out = 4'b1001; 
			16'b0000010000000000 : out = 4'b1010; 
			16'b0000100000000000 : out = 4'b1011; 
			16'b0001000000000000 : out = 4'b1100; 
			16'b0010000000000000 : out = 4'b1101; 
			16'b0100000000000000 : out = 4'b1110; 
			16'b1000000000000000 : out = 4'b1111;
			default: out = 4'bxxxx; 
		endcase
		
	end


endmodule
