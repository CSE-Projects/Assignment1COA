`timescale 1ns/100ps
module testbench;
	// inputs
	reg ainput;
	reg binput;
	//outputs
	wire aoutput;
	wire boutput;

	integer i;
	// amodule is the machine a, where binput is the input given by b and boutput is the corresponding output generated
	amodule inst1 (binput,boutput);
	// bmodule is the machine b, where ainput is the input given by a and aoutput is the corresponding output generated
	bmodule inst2 (ainput,aoutput);
	
	initial begin 
		$dumpfile("network.vcd");
		$dumpvars(0, testbench);
		ainput=1'b1;
		binput=1'b0;
		for(i=1;i<=5;i=i+1) begin
			// ainput is varied with time
			#10 ainput=~ainput;
			// displaying the output
				#0 $display("Time=%3d Ainput=%d Aoutput=%d",$time,ainput,aoutput);
			// binput is varied with time			
			#20 binput=~binput;	
			// displaying the output
				#0 $display("Time=%3d Binput=%d Boutput=%d",$time,binput,boutput);	
				
		end	
	end
endmodule
