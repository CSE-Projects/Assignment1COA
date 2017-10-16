`timescale 1ns/100ps

module t_fullAdder;

	// outputs 
	wire sum;
	wire carry;
	// inputs 
	reg op2;
	reg op1;
	reg op3;
	// full Adder thread instantiated
	fullAdder inst (sum, carry, op1, op2, op3);
	
	// check for various input combinations
	initial begin
	
		$dumpfile("fullAdder.vcd");
		$dumpvars(0, t_fullAdder);
		
		op1 = 1'b0;
		op2 = 1'b0;
		op3 = 1'b0;
	
		#10
		op1 = 1'b0;
		op2 = 1'b0;
		op3 = 1'b1;	
		
		#10
		op1 = 1'b0;
		op2 = 1'b1;
		op3 = 1'b0;
		
		#10
		op1 = 1'b0;
		op2 = 1'b1;
		op3 = 1'b1;
		
		#10
		op1 = 1'b1;
		op2 = 1'b0;
		op3 = 1'b0;
	
		#10
		op1 = 1'b1;
		op2 = 1'b0;
		op3 = 1'b1;	
		
		#10
		op1 = 1'b1;
		op2 = 1'b1;
		op3 = 1'b0;
		
		#10
		op1 = 1'b1;
		op2 = 1'b1;
		op3 = 1'b1;
		
		#10;
			
	end	
	
	
	// print result
	initial begin
		$monitor("%t: operand1: %b operand2: %b operand3: %b \n\t\t\t carry: %b sum: %b\n", $time, op1, op2, op3, carry, sum);	
	end
	
	
endmodule	
