`timescale 1ns / 1ps

module test;

	// Inputs
	reg [3:0] M;
	reg [3:0] Q;

	// Outputs
	wire [7:0] AQ;

	// Instantiate the Unit Under Test (UUT)
	boothmultiplier uut (
		.M(M), 
		.Q(Q), 
		.AQ(AQ)
	);

	initial begin
		// Initialize Inputs
		M = -7;
		Q = 3;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

