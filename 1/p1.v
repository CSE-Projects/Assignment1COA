module main;
	integer i;
	initial begin
		for (i=1;i<=10;i=i+1) begin
    	  		#10 $display ("Time=%3d Hello world",$time);
   		end
			
	end
endmodule
