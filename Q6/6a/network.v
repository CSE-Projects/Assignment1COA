//Module for machine a
module amodule(input binput,output reg boutput);
	//Whenever b sends an input, the output boutput is generated which is later printed in the testbench along with the timestamp	
	always@(binput) begin
		boutput=binput;	
	end
endmodule
//Module for machine b
module bmodule(input ainput,output reg aoutput);
	//Whenever a sends an input, the output aoutput is generated which is later printed in the testbench along with the timestamp
	always@(ainput) begin
		aoutput=ainput;	
	end
endmodule


