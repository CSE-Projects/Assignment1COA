module halfAdder (output reg sum, output reg carry, input op1, input op2);

	// thread for half adder operations
	always @ (op1 or op2) begin
	
		// sum bit of two operands
		sum = op1 ^ op2;
		// carry bit of two operands
		carry = op1 & op2;
		
	end

endmodule

module fullAdder (output sum, output carry, input op1, input op2,input op3);
	
	wire isum,i1carry,i2carry;
	// thread for full adder operations
	//'i' stands for intermediate
		
		// using half adder the first time
		halfAdder inst1 (isum,i1carry,op1,op2);
		// calculating the sum
		halfAdder inst2 (sum,i2carry,isum,op3);
		// calculating the carry
		assign carry = i1carry|i2carry;
		

endmodule
