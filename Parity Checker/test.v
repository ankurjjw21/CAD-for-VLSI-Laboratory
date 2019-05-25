`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:02:56 04/07/2019
// Design Name:   paritychecker
// Module Name:   C:/Users/Ankur/Documents/Xilinx/ParityChecker/test.v
// Project Name:  ParityChecker
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: paritychecker
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
	reg X;
	reg Y;
	reg Z;

	// Outputs
	wire ResEven;
	wire ResOdd;

	// Instantiate the Unit Under Test (UUT)
	paritychecker uut (
		.X(X), 
		.Y(Y), 
		.Z(Z), 
		.ResEven(ResEven), 
		.ResOdd(ResOdd)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		Y = 0;
		Z = 0;
		#100;
		X = 0;
		Y = 0;
		Z = 1;
		#100;
		X = 0;
		Y = 1;
		Z = 0;
		#100;
		X = 0;
		Y = 1;
		Z = 1;
		#100;
		X = 1;
		Y = 0;
		Z = 0;
		#100;
		X = 1;
		Y = 0;
		Z = 1;
		#100;
		X = 1;
		Y = 1;
		Z = 0;
		#100;
		X = 1;
		Y = 1;
		Z = 1;
		#100;
        
		// Add stimulus here

	end
      
endmodule

