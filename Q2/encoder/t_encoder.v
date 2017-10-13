/**
*	Test bench for 16:4 encoder
*	By: Omkar Prabhu 16CO233
*	13th October 2017
*/

`timescale 1ns/100ps

module t_encoder;

	///output
	wire [0:3] out;
	// input
	reg [0:15] in;
	
	// encoder thread instantiated
	encoder inst (out, in);
	
	// check for various input combinations
	initial begin
	
		$dumpfile("encoder.vcd");
		$dumpvars(0, t_encoder);
		
		in = 16'b0000000000000001;
	
		#10
		in = 16'b0000000000000010;
		#10
		in = 16'b0000000000000100;
		#10
		in = 16'b0000000000000101;
		#10
		in = 16'b0000000000001000;
		#10
		in = 16'b0000000000010000;	
		#10
		in = 16'b0000000000100000;	
		#10
		in = 16'b0000000001000000;	
		#10
		in = 16'b0000000010000000;
		#10
		in = 16'b0000000011000000;		
		#10
		in = 16'b0000000100000000;	
		#10
		in = 16'b0000001000000000;	
		#10
		in = 16'b0000010000000000;	
		#10
		in = 16'b0000100000000000;	
		#10
		in = 16'b0001000000000000;	
		#10
		in = 16'b0010000000000000;	
		#10
		in = 16'b0100000000000000;	
		#10
		in = 16'b1000000000000000;
		#10;					
		
	end	
	
	// display meaning of input and output
	initial begin
		$display("\tinput: D15D14D13D12D11D10D9D8D7D6D5D4D3D2D1D0  output: E3E2E1E0");	
	end
	
	// print result
	initial begin
		$monitor("%t: input: %b output: %b", $time, in, out);	
	end
	
endmodule	
