/**
*	Test bench for combinational Half Adder
*	By: Omkar Prabhu 16CO233
*	13th October 2017
*/

`timescale 1ns/100ps

module t_halfAdder;

	// outputs 
	wire sum;
	wire carry; 	
	// inputs 
	reg op2;
	reg op1;
	reg op3;
	reg[3:0] n1;
	reg[3:0] n2;
	reg imm;
	// Half Adder thread instantiated
	integer i;	
	fullAdder inst (sum, carry, op1, op2, op3);
	initial begin
		//n1[3]=0;n1[2]=0;n1[1]=1;n1[0]=1;
		//n2[3]=0;n2[2]=1;n2[1]=0;n2[0]=1;
		n1=3;
		n2=4;		
		imm=0;		
		op1=1'b0;
		op2=1'b0;
		op3=1'b0;
		$display("Bits from LSB to MSB in order are as follows");
		for (i=0;i<=3;i=i+1) begin
				//$display("->%d %d %d %d\titeration:%d",sum,carry,n1[i],n2[i],i);	    	
			#10	op1=n1[i];				
				op2=n2[i];
				op3=imm;
				assign imm=carry;
			#10	$display("%b",sum);
				//$display("%b %b %b %b\titeration:%d -%b %b %b %b",sum,carry,n1[i],n2[i],i,op1,op2,op3,imm);
		end	
		$display("%b",carry);	
		$finish;
	end		
endmodule	
