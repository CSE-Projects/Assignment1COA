`timescale 1ns/100ps

module t_Subtractor;

	// outputs 
	wire sum;
	wire carry; 	
	// inputs 
	reg op2;
	reg op1;
	reg op3;
	// n1 is 1st number and n2 is 2nd number, 3 can be replace by any other number x
	reg[3:0] n1;
	reg[3:0] n2;
	// Immediate value	
	reg imm;
	// Full Adder thread instantiated
	integer i;	
	fullAdder inst (sum, carry, op1, op2, op3);
	initial begin
		// n1 and n2 can be given any number
		$dumpfile("Subtractor.vcd");	
		$dumpvars(0, t_Subtractor);
		n1=7;
		n2=2;		
		imm=1;		
		op1=1'b0;
		op2=1'b0;
		op3=1'b0;
		$display("Calculating %d-%d\nResult in 2's complement",n1,n2);
		$display("Bits from LSB to MSB in order are as follows");
		// 3 can be replaced by x
		for (i=0;i<=3;i=i+1) begin
					    	
			#10	op1=n1[i];				
				op2=~(n2[i]);
				op3=imm;
				assign imm=carry;
			// Displaying the sum bit
			#10	$display("%b",sum);
		end	
		//$display("%b",carry);	
		$finish;
	end		
endmodule	
