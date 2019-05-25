`timescale 1ns / 1ps

module test;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg [7:0] C;
	reg [7:0] D;
	reg [7:0] E;
	reg [7:0] F;
	reg [7:0] G;
	reg [7:0] H;
	reg [2:0] Sel;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	multiplexer uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.F(F), 
		.G(G), 
		.H(H), 
		.Sel(Sel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		A = 1;
		B = 2;
		C = 3;
		D = 4;
		E = 5;
		F = 6;
		G = 7;
		H = 8;
		Sel = 4;

		// Wait 100 ns for global reset to finish
		#100;
		
		A = 8;
		B = 7;
		C = 6;
		D = 5;
		E = 4;
		F = 3;
		G = 2;
		H = 1;
		Sel = 7;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

