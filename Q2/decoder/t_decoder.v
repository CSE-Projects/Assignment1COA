/**
*	Test bench for 4:16 decoder
*	By: Omkar Prabhu 16CO233
*	13th October 2017
*/

`timescale 1ns/100ps

module t_decoder;

	// output 
	wire [0:15] out;
	// input 
	reg [0:3] in;
	
	// decoder thread instantiated
	decoder inst (out, in);
	
	// check for various input combinations
	initial begin
	
		$dumpfile("decoder.vcd");
		$dumpvars(0, t_decoder);
		
		in = 4'b0000;
	
		#10
		in = 4'b0001;
		#10
		in = 4'b0010;
		#10
		in = 4'b0011;
		#10
		in = 4'b0100;
		#10
		in = 4'b0101;	
		#10
		in = 4'b0110;
		#10
		in = 4'b0111;
		#10
		in = 4'b1000;
		#10
		in = 4'b1001;
		#10
		in = 4'b1010;	
		#10
		in = 4'b1011;
		#10
		in = 4'b1100;	
		#10
		in = 4'b1101;	
		#10
		in = 4'b1110;
		#10
		in = 4'b1111;
		#10;					
			
	end	
	
	// display meaning of input and output
	initial begin
		$display("\tinput: E3E2E1E0 output: D15D14D13D12D11D10D9D8D7D6D5D4D3D2D1D0");	
	end
	
	// print result
	initial begin
		$monitor("%t: input: %b output: %b", $time, in, out);	
	end
	
	
endmodule	
