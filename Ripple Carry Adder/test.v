`timescale 1ns / 1ps

module test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [3:0] S;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	ripplecarryadder uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A = 15;
		B = 15;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

