`timescale 1ns/100ps

module t_Adder;

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
		$dumpfile("Adder.vcd");	
		$dumpvars(0, t_Adder);
		n1=3;
		n2=9;		
		imm=0;		
		op1=1'b0;
		op2=1'b0;
		op3=1'b0;
		$display("Calculating %d+%d",n1,n2);
		$display("Bits from LSB to MSB in order are as follows");
		// 3 can be replaced by x
		for (i=0;i<=3;i=i+1) begin
					    	
			#10	op1=n1[i];				
				op2=n2[i];
				op3=imm;
				assign imm=carry;
			// Displaying the sum bit
			#10	$display("%b",sum);
		end	
		// displaying the extra bit (it will be 1 if necessary)
		$display("%b",carry);	
		$finish;
	end		
endmodule	
