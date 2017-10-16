/**
*	Module for D flip-flop
*	By: Omkar Prabhu 16CO233
*	15th October 2017
*/

/**
* Module for D master slave flip-flop
*/
module Dff (output q, output  qn, input d, input clk);

	reg nclk;
	wire qi, qni;
	
	// D latch 1
	Dl inst1 (qi, qni, d, nclk);
	// D latch 2
	Dl inst2 (q, qn, qi, clk);
	
	// not of clock
	always @ (clk) begin
		nclk <= ~clk;
	end
		
endmodule


/**
* Module for RS Latch using nor gates
*/
module RSl (output reg q, output reg qn, input r, input s);

	// rs latch modeling
	always @(q, qn, r, s) begin
		q <= ~ (qn | r);
		qn <= ~ (q | s);
		
	end

endmodule



/**
* Module for D Latch using RS latch
*/
module Dl (output q, output qn, input d, input clk);
	
	reg r, s;
	
	// using rs latch module
	RSl RSlinstDl (q, qn, r, s);
	
	// d latch modelling
	always @ (r, s, d, clk) begin
		r <= (~ d) & clk;
		s <= d & clk;
	end
	

endmodule 









