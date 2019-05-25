`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:56:44 04/07/2019
// Design Name:   graytobinary
// Module Name:   C:/Users/Ankur/Documents/Xilinx/GrayToBinary/test.v
// Project Name:  GrayToBinary
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: graytobinary
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
	reg [3:0] G;

	// Outputs
	wire [3:0] B;

	// Instantiate the Unit Under Test (UUT)
	graytobinary uut (
		.G(G), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		G = 0;
		#100;
      G = 3;
		


	end
      
endmodule

