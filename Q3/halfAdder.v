/**
*	Module for combinational Half Adder
*	By: Omkar Prabhu 16CO233
*	13th October 2017
*/


module halfAdder (output reg sum, output reg carry, input op1, input op2);

	// thread for half adder operations
	always @ (op1 or op2) begin
	
		// sum bit of two operands
		sum = op1 ^ op2;
		// carry bit of two operands
		carry = op1 & op2;
		
	end

endmodule
