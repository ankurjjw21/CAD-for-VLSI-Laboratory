`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:50:37 04/07/2019
// Design Name:   binarytogray
// Module Name:   C:/Users/Ankur/Documents/Xilinx/BinarToGray/test.v
// Project Name:  BinarToGray
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: binarytogray
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
	reg [3:0] B;

	// Outputs
	wire [3:0] G;

	// Instantiate the Unit Under Test (UUT)
	binarytogray uut (
		.B(B), 
		.G(G)
	);

	initial begin
		// Initialize Inputs
		B = 0;
		#50;
      B = 1;
		#50;
		B = 2;
		#50;
		B = 3;
		#50;
		B = 4;
		#50;
		B = 5;
		#50;
		B = 6;
		#50;
		B = 7;
		#50;
		B = 8;
		#50;
		B = 9;
		#50;
		// Add stimulus here

	end
      
endmodule

