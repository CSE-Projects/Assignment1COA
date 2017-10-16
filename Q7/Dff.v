module Dff (output q, output  qn, input d, input clk);

	//initial begin
	//	q = 1'b0;
 	//	qn = 1'b1;
	//end

	//assign qn = ~q;
	
	//always @ (posedge clk) begin
		
	//	q <= d;
		 	
	//end
	reg nclk;
	Dl inst1 (qi, qni, d, nclk);
	Dl inst2 (q, qn, qi, clk);
	
	
	always @ (clk) begin
		nclk <= ~clk;
	end
	
	wire qi, qni;
	
	
endmodule


module RSl (output reg q, output reg qn, input r, input s);

	
	always @(q, qn, r, s) begin
		
		q <= ~ (qn | r);
		qn <= ~ (q | s);
		
	end

endmodule

module Dl (output q, output qn, input d, input clk);
	
	reg r, s;
	
	RSl RSlinstDl (q, qn, r, s);
	
	always @ (r, s, d, clk) begin
		r <= (~ d) & clk;
		s <= d & clk;
	end
	

endmodule 









