`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:30:20 04/07/2019
// Design Name:   bcdadder
// Module Name:   C:/Users/Ankur/Documents/Xilinx/BCDAdder/test.v
// Project Name:  BCDAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bcdadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [3:0] S;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	bcdadder uut (
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
		A = 8;
		B = 9;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

