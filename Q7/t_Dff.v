/**
*	Test bench for D flip-flop
*	By: Omkar Prabhu 16CO233
*	15th October 2017
*/

`timescale 1ns/100ps

module t_Dff;

	// outputs 
	wire q;
	wire qn;
	// inputs 
	reg d;
	reg clk;
	// active low reset input 
	reg res;
	// D flip-flop thread instantiated
	Dff inst (q, qn, d, clk, res);
	
	// check for various input combinations
	initial begin
	
		$dumpfile("Dff.vcd");
		$dumpvars(0, t_Dff);
		
		d = 1'b0;
		clk = 1'b0;
		res = 1'b1;
			
		#6
			d = 1'b1;			
		#6
			d = 1'b0;
		#6
			d = 1'b0;
		#6; 
			d = 1'b1;
		#6;
			res = 1'b0;
			d = 1'b1;
		#6;
			d = 1'b0;
		#6;
		
		#6
			d = 1'b1;			
		#6
			d = 1'b0;
		#6
			d = 1'b0;
		#6;
			res = 1'b1;
			d = 1'b0;
		#6;
			d = 1'b1;
		#6;
			d = 1'b0;
		#6;
		#6
			d = 1'b1;			
		#6
			d = 1'b1;
		#6
			d = 1'b1;
		#6;
			d = 1'b0;
		#6;
			d = 1'b1;
		#6;
		#6;
			d = 1'b0;
		#6;
		#6;
			d = 1'b1;			
		#6
			d = 1'b0;
		#6
			d = 1'b1;
		#6;
			d = 1'b1;
		#6;
			d = 1'b1;
		#6;
			d = 1'b0;
		#6;
			
	end	
	
	initial begin
		repeat (30) begin
			#5 clk = ~ clk;
		end
	end
	
	// print result
	initial begin
		$monitor("%t: d: %b clk: %b reset : %b \t\t\t q: %b q': %b\n", $time, d, clk, res, q, qn);	
	end
	
	
endmodule	
