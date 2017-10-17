/**
*	Test bench for 32 bit Register using D flip-flop
*	By: Omkar Prabhu 16CO233
*	16th October 2017
*/

`timescale 1ns/100ps

module t_Reg32b;

	// outputs 
	wire [0:31] data_out;
	// inputs 
	reg [0:31] data_in;
	reg clk;
	// active low reset signal
	reg res;
	
	// 32 bit Register thread instantiated
	Reg32b inst (data_out, data_in, clk, res);
	
	integer i;
	// check for various input combinations
	initial begin
	
		$dumpfile("Reg32b.vcd");
		$dumpvars(0, t_Reg32b);
		
		data_in = 32'b00000000000000000000000000000000;
		clk = 1'b0;
		res = 1'b1;
			
		for (i = 1; i <= 20; i = i + 1) begin
    		#6 data_in = data_in + 1'b1;
   		end
			
	end	

	initial begin
		#10 res = 1'b1;
		#24 res = 1'b0;
	end
	
	initial begin
		repeat (30) begin
			#5 clk = ~ clk;
		end
	end
	
	// print result
	initial begin
		$monitor("%t: d: %b clk: %b reset: %b \t\t\t q: %b q': %b\n", $time, d, clk, res, q, qn);	
	end
	
	
endmodule	
