`timescale 1ns / 1ps


module test;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	ringcounter uut (
		.clk(clk), 
		.reset(reset), 
		.out(out)
	);
	initial clk=0;
	always #10 clk = ~clk;
	initial begin
		

      reset = 1;
		#10;
      reset = 0;
        
		// Add stimulus here

	end
      
endmodule

