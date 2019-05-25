`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:32:58 04/07/2019
// Design Name:   fulladder
// Module Name:   C:/Users/Ankur/Documents/Xilinx/FullAdder/test.v
// Project Name:  FullAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder
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
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	fulladder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 0;
		b = 0;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		a = 0;
		b = 1;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 0;
		b = 1;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		a = 1;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 1;
		b = 0;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
		a = 1;
		b = 1;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 1;
		b = 1;
		cin = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

