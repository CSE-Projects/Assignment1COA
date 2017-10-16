`timescale 1ns/100ps
module testbench;
	//inputs
	reg binput;
	reg[3:0] ainput;
	//random number generated	
	reg[15:0] randomnumber;
	//outputs
	wire[3:0] aoutput;
	wire[3:0] boutput;

	integer i,j;	
	// machine b along with inputs and outputs
	bmodule inst1 	(binput,boutput);
	// machine a along with inputs and outputs
	amodule inst2	(ainput,aoutput);

	initial begin 
		$dumpfile("networkb.vcd");
		$dumpvars(0, testbench);
		binput=1'b0;
				
		for(i=1;i<=5;i=i+1) begin
			#10		
			//generating random number			
			randomnumber=$urandom & 15;	
			#randomnumber
			// input is sent to b
			binput=~binput;
			// output of b is given to a as input
			ainput=boutput;
			// output from a is generated as aoutput
			#0 
			// printing the output of a (aoutput) and the input to b (binput) 
			$display("Message sent by A:%b, 4 bit message from B:%b %b %b %b ,time(random)=%3d\n"
			,binput,aoutput[3],aoutput[2],aoutput[1],aoutput[0],$time);
		end 
	end
endmodule
