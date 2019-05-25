`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:04:06 04/07/2019
// Design Name:   comparator
// Module Name:   C:/Users/Ankur/Documents/Xilinx/Comparator/test.v
// Project Name:  Comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: comparator
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
	reg [1:0] A;
	reg [1:0] B;

	// Outputs
	wire AequalsB;
	wire AgreaterB;
	wire AlessB;

	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.A(A), 
		.B(B), 
		.AequalsB(AequalsB), 
		.AgreaterB(AgreaterB), 
		.AlessB(AlessB)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 1;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A = 0;
		B = 1;

		// Wait 100 ns for global reset to finish
		#100;		
		// Add stimulus here

	end
      
endmodule

