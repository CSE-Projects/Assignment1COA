module main;
	integer i;
	
	//Module to print Hello world

	initial begin
		
		//For loop to print Hello world multiple times		
				
		for (i=1;i<=10;i=i+1) begin

			//$time for displaying time stamp 
	
    	  		#10 $display ("Time=%3d Hello world",$time);
   		end
			
	end
endmodule
