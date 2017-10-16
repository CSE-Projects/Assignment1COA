/**
*	Test bench for D flip-flop
*	By: Omkar Prabhu 16CO233
*	16th October 2017
*/

module Reg32b (output [0:31] data_out, input [0:31] data_in, input clk);

	Dff inst1 (data_out[0], data_in[0], clk);
	Dff inst2 (data_out[1], data_in[1], clk);
	Dff inst3 (data_out[2], data_in[2], clk);
	Dff inst4 (data_out[3], data_in[3], clk);
	Dff inst5 (data_out[4], data_in[4], clk);
	Dff inst6 (data_out[5], data_in[5], clk);
	Dff inst7 (data_out[6], data_in[6], clk);
	Dff inst8 (data_out[7], data_in[7], clk);
	Dff inst9 (data_out[8], data_in[8], clk);
	Dff inst10 (data_out[9], data_in[9], clk);
	Dff inst11 (data_out[10], data_in[10], clk);
	Dff inst12 (data_out[11], data_in[11], clk);
	Dff inst13 (data_out[12], data_in[12], clk);
	Dff inst14 (data_out[13], data_in[13], clk);
	Dff inst15 (data_out[14], data_in[14], clk);
	Dff inst16 (data_out[15], data_in[15], clk);
	Dff inst17 (data_out[16], data_in[16], clk);
	Dff inst18 (data_out[17], data_in[17], clk);
	Dff inst19 (data_out[18], data_in[18], clk);
	Dff inst20 (data_out[19], data_in[19], clk);
	Dff inst21 (data_out[20], data_in[20], clk);
	Dff inst22 (data_out[21], data_in[21], clk);
	Dff inst23 (data_out[22], data_in[22], clk);
	Dff inst24 (data_out[23], data_in[23], clk);
	Dff inst25 (data_out[24], data_in[24], clk);
	Dff inst26 (data_out[25], data_in[25], clk);
	Dff inst27 (data_out[26], data_in[26], clk);
	Dff inst28 (data_out[27], data_in[27], clk);
	Dff inst29 (data_out[28], data_in[28], clk);
	Dff inst30 (data_out[29], data_in[29], clk);
	Dff inst31 (data_out[30], data_in[30], clk);
	Dff inst32 (data_out[31], data_in[31], clk);
	
	

endmodule

module Dff (output reg q, input d, input clk);
	
	always @ (posedge clk) begin
		
		q <= d;
			
	end
	
endmodule
